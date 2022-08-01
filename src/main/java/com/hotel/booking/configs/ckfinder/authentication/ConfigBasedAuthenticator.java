package com.hotel.booking.configs.ckfinder.authentication;

import com.cksource.ckfinder.authentication.Authenticator;
import org.springframework.context.ApplicationContext;

import javax.inject.Inject;
import javax.inject.Named;


@Named
public class ConfigBasedAuthenticator implements Authenticator {
    @Inject
    private ApplicationContext applicationContext;

    @Override
    public boolean authenticate() {
        CustomConfig config = applicationContext.getBean(CustomConfig.class);

        return config.isEnabled();
    }
}
