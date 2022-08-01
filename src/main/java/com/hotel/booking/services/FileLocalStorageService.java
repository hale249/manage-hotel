package com.hotel.booking.services;

import org.springframework.core.io.Resource;
import org.springframework.web.multipart.MultipartFile;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.MalformedURLException;

public interface FileLocalStorageService {
    String saveFile(MultipartFile file, String folderUser) throws IOException;

    Resource loadFileAsResource(String filePath) throws MalformedURLException, FileNotFoundException;

    String buildUrl(String fileName);
}
