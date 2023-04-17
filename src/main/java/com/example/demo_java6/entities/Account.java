package com.example.demo_java6.entities;

import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Table(name="accounts")
public class Account implements Serializable{
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
    @Column(columnDefinition = "varchar(100) not null")
    private String userName;
    @Column(columnDefinition = "nvarchar(500) not null")
    private String password;
    @Column(columnDefinition = "nvarchar(100) not null")
    private String email;
    @Column(columnDefinition = "nvarchar(255) not null")
    private String fullName;
    @Column(length=600)
    private String photo;
    @JsonIgnore
    @OneToMany(mappedBy = "account", cascade = CascadeType.ALL)
    private List<Authority> authorities;
    @JsonIgnore
    @OneToMany(mappedBy = "account", cascade = CascadeType.ALL)
    private List<Order> orders;
}
