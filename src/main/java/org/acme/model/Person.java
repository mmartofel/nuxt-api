package org.acme.model;

import io.quarkus.hibernate.orm.panache.PanacheEntity;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;

@Entity
public class Person extends PanacheEntity {

    @Column(length = 30)
    public String name;

    @Column(length = 40)
    public String title;

    @Column(length = 100)
    public String email;

    @Column(length = 80)
    public String role;

    @Column(length = 30)
    public String brand;

    @Column(length = 2)
    public String location;

    @Column(length = 7)
    public Integer salary;

    @Column(length = 7)
    public Integer comission;

}
