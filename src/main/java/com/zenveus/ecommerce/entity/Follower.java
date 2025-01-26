package com.zenveus.ecommerce.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor

public class Follower {
    private int id;
    private String username;
    private String email;
    private String password;
}
