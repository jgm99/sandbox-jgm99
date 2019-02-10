package com.iesemilidarder.joan.xslt.spring.data;

import org.springframework.hateoas.ResourceSupport;

import java.util.ArrayList;
import java.util.List;

/**
 * com.alberto.soto.xslt.spring.data
 * Class AuthorResource
 * By berto. 24/06/2018
 */
public class AuthorResource extends ResourceSupport{
    private List<Author> authors = new ArrayList<>();

    public List<Author> getAuthors() {
        return authors;
    }

    public void setAuthors(List<Author> authors) {
        this.authors = authors;
    }
}
