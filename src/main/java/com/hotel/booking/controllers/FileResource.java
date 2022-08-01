package com.hotel.booking.controllers;

import com.hotel.booking.services.FileLocalStorageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

/**
 * @author: VuiSK
 * @created: 05/12/2021-2:03 PM
 * @mailto: sanvankhanh@gmail.com
 */
@RestController
public class FileResource {

    @Autowired
    FileLocalStorageService fileStorageService;

    @GetMapping("/file/**")
    public ResponseEntity<Resource> getImage(HttpServletRequest request) throws IOException {
        String filePath = request.getRequestURL().toString().split("file/")[1];

        // Load resource by filePath
        Resource resource = fileStorageService.loadFileAsResource(filePath);

        String mimeType = request.getServletContext()
                .getMimeType(resource.getFile().getAbsolutePath());

        return ResponseEntity.ok()
                .contentType(MediaType.parseMediaType(mimeType))
                .body(resource);
    }

}
