package com.iesemilidarder.joan.xslt.spring.data;

import javax.xml.bind.annotation.XmlTransient;

/**
 * com.alberto.soto.xslt.spring.data
 * Class Author
 * By berto. 24/06/2018
 */
@XmlTransient //Prevents the mapping of a JavaBean property/type to XML representation
public class Author {
    public String name;
    public String surname;
    public int age;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }
}
