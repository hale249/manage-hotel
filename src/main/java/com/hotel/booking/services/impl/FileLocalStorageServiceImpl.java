package com.hotel.booking.services.impl;

import com.hotel.booking.services.FileLocalStorageService;
import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.Resource;
import org.springframework.core.io.UrlResource;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.MalformedURLException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Objects;

@Service
public class FileLocalStorageServiceImpl implements FileLocalStorageService {

    @Value("${app.file.location}")
    String fileLocation;

    @Value("${app.file.url-prefix}")
    String urlPrefix;

    @Override
    public String saveFile(MultipartFile file, String folderUser) throws IOException {
        Path filePath = getFilePath(file.getOriginalFilename(), folderUser);

        /*
         * push file client to folder serve
         * transferFile to folder
         *
         * save file success
         * */
        file.transferTo(filePath);
        return FilenameUtils.separatorsToUnix(filePath.toString()).replaceAll(fileLocation, "");
    }


    @Override
    public Resource loadFileAsResource(String filePath) throws MalformedURLException, FileNotFoundException {
        Path absolutePath = Paths.get(fileLocation).resolve(filePath);
        Resource resource = new UrlResource(absolutePath.toUri());
        if (resource.exists()) {
            return resource;
        }

        throw new FileNotFoundException("File not found: " + absolutePath.toString());
    }

    private Path getFilePath(String fileName, String folderUser) throws IOException {
        Path fileLocationPath = Paths.get(fileLocation);

        if (Objects.nonNull(folderUser)) {
            fileLocationPath = fileLocationPath.resolve(folderUser);
        }
        Files.createDirectories(fileLocationPath);

        return fileLocationPath.resolve(fileName);
    }


    private final Path folder = Paths.get("./image");

    public String save(MultipartFile image) throws IOException {

        if (Files.notExists(folder)) {

            Files.createDirectories(folder);

        }

        String uploadPath = folder + "/" + image.getOriginalFilename();

        byte[] bytes = image.getBytes();

        Path path = Paths.get(uploadPath);

        Files.write(path, bytes);

        return "OK";

    }

    public String buildUrl(String relativePath) {
        return urlPrefix + relativePath;
    }
}
