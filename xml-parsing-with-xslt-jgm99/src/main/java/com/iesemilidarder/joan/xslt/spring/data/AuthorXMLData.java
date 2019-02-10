package com.iesemilidarder.joan.xslt.spring.data;

import javax.xml.bind.annotation.*;
import java.util.ArrayList;
import java.util.List;

/**
 * com.alberto.soto.xslt.spring.data
 * Class AuthorXMLData
 * By berto. 24/06/2018
 */
@XmlRootElement(name = "authors") //namespace = "http://www.w3.org/2005/Atom",
@XmlAccessorType(XmlAccessType.FIELD)
public class AuthorXMLData {
    @XmlElementWrapper(name = "authors")
    @XmlElement(name = "author")
    private List<Author> authors = new ArrayList<>();

    public List<Author> getAuthors() {
        return authors;
    }

    public void setAuthors(List<Author> authors) {
        this.authors = authors;
    }
}
