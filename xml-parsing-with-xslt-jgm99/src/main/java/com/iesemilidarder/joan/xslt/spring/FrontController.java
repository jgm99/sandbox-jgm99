package com.iesemilidarder.joan.xslt.spring;

import com.iesemilidarder.joan.xslt.spring.helper.FileHelper;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.StringWriter;
import java.nio.charset.StandardCharsets;


@Controller
@RequestMapping("/")
public class FrontController {
    @Autowired
    private ResourceLoader resourceLoader;

    protected final Logger log = LoggerFactory.getLogger(FrontController.class);
    @GetMapping("/")
    public String home(Model model) {
        Resource resource = resourceLoader.getResource("classpath:home.xml");
        model.addAttribute("home", resource);
        return "home";
    }

    @RequestMapping(value = "/parse/{fileRQ}", method = RequestMethod.GET)
    public String parseContent(@PathVariable String fileRQ,Model model) {
        try {
            if (StringUtils.isNotEmpty(fileRQ)){
                Resource resource = resourceLoader.getResource(String.format("classpath:%s.xml",fileRQ));
                model.addAttribute(fileRQ, resource);
                return fileRQ;
            }
        } catch (Exception e) {
            log.error("Problem parsing content",e);
        }
        return home(model);
    }

    @GetMapping("/dynamic")
    public String dynamic(Model model) {
        FileHelper i = new FileHelper();
        //StringWriter writter = i.loadXMLData();
        //Resource resource = new InputStreamResource(IOUtils.toInputStream(writter.toString()));
        model.addAttribute("dynamic", i.getDataResource());
        return "dynamic/dynamic-example";
    }

}