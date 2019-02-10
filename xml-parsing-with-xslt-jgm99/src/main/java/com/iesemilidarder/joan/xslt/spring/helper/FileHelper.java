package com.iesemilidarder.joan.xslt.spring.helper;

import com.iesemilidarder.joan.xslt.spring.data.Author;
import com.iesemilidarder.joan.xslt.spring.data.AuthorResource;
import com.iesemilidarder.joan.xslt.spring.data.AuthorXMLData;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.Marshaller;
import java.io.File;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.List;

/**
 * com.alberto.soto.xslt.spring.data
 * Class FileHelper
 * By berto. 24/06/2018
 *
 * http://www.baeldung.com/jaxb
 */
public class FileHelper {
    public static final String RESOURCE_PATH = "WEB-INF/xsl";

    public static List<String> getScripts() {
        //No funciona bien en el deployment
        final Logger log = LoggerFactory.getLogger(FileHelper.class);
        ArrayList<String> aux = new ArrayList();
        try {
            File folder = new File(RESOURCE_PATH);
            for (File file : folder.listFiles()) {
                if (file.isFile() && StringUtils.equals(FilenameUtils.getExtension(file.getAbsolutePath()), "xslt")) {
                    log.info(file.getAbsolutePath());
                    aux.add(file.getName());
                }
            }
        } catch (Exception e) {
            log.error("listing Scripts", e);
        }
        return aux;
    }
    protected final Logger log = LoggerFactory.getLogger(FileHelper.class);

    private List<Author> getDummyData(){
        List<Author> aux = new ArrayList<>();
        for(int i=0; i<5;i++){
            Author r = new Author();
            r.setAge(i);
            r.setName("Name"+i);
            r.setSurname("SurName"+i);
            aux.add(r);
        }
        return aux;
    }

    public AuthorResource getDataResource(){
        AuthorResource i = new AuthorResource();
        i.setAuthors(getDummyData());
        return i;
    }

    public StringWriter loadXMLData(){
        try{
            JAXBContext context = JAXBContext.newInstance(AuthorXMLData.class,StringWriter.class);
            Marshaller m = context.createMarshaller();
            m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
            // Wrapping our person data.
            AuthorXMLData dummyData = new AuthorXMLData();
            //generate the marshalling
            StringWriter sw = new StringWriter();
            m.marshal(getDummyData(),sw);
            return sw;
        }catch (Exception e){
            log.error("marshalling",e);
        }
        return null;
    }

}
