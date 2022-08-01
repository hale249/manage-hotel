package com.hotel.booking.services;

import org.springframework.web.multipart.MultipartFile;

import java.nio.file.Path;
import java.util.stream.Stream;

public interface StorageService {
    public String storeFile(MultipartFile file);
    public Stream<Path> loadAll(); //load all file inside a folder
    public byte[] readFileContent(String fileName);
    public void deleteAllFiles();
}
