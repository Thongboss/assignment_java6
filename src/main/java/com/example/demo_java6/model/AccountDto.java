package com.example.demo_java6.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor

public class AccountDto {
    private String userName;
    private String password;
    private String email;
    private String fullName;
    private String photo;
}
