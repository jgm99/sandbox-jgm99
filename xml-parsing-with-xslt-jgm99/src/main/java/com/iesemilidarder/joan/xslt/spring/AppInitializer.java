package com.iesemilidarder.joan.xslt.spring;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;


public class AppInitializer extends
          AbstractAnnotationConfigDispatcherServletInitializer {
    
    @Override
    protected Class<?>[] getRootConfigClasses () {
        return null;
    }
    
    @Override
    protected Class<?>[] getServletConfigClasses () {
        return new Class<?>[]{WebConfig.class};
    }
    
    @Override
    protected String[] getServletMappings () {
        return new String[]{"/"};
    }
}