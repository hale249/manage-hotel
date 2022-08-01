package com.hotel.booking.utils;

import org.springframework.security.crypto.bcrypt.BCrypt;

public class HashUtil {
    public static String hash(String plain) {
        String salt = BCrypt.gensalt();

        return BCrypt.hashpw(plain, salt);
    }

    public static boolean verify(String plain, String hashed) {
        return BCrypt.checkpw(plain, hashed);
    }
}
