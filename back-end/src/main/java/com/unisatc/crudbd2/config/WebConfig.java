package com.unisatc.crudbd2.config;

import org.modelmapper.ModelMapper;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebConfig implements WebMvcConfigurer {

    private String corOriginPatterns ="";

    @Bean
    public ModelMapper modelMapper() {
        return new ModelMapper();
    }
    @Override
    public void addCorsMappings(CorsRegistry registry) {
        var allowedOrigins = corOriginPatterns.split(",");
        registry.addMapping("/**")
                .allowedMethods("-")
                .allowedOrigins(allowedOrigins)
                .allowCredentials(true);
    }


}
