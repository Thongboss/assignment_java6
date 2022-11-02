package com.example.demo_java6.model;

import java.util.Date;

import com.example.demo_java6.entities.Account;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class OrderDto {
    private Date createDate;
    private String address;
    private Account account;
}
