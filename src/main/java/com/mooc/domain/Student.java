package com.mooc.domain;

import java.util.Date;

import org.apache.ibatis.type.Alias;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Alias("Student")
public class Student {
    private Long id;

    private String fullname;

    private String headimg;

    private String email;

    private String password;

    private String sex;

    private Date birthday;

    private String country;

    private String nativeLang;

    private String tel;

    private String skype;

    private String introduction;

    private Integer memberType;

    private Date createTime;

  
}