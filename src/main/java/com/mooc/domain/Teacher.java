package com.mooc.domain;

import java.util.Date;

import org.apache.ibatis.type.Alias;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Alias("Teacher")
public class Teacher {
    private Long id;

    private String fullname;

    private String headimg;

    private String email;

    private String password;

    private String sex;

    private Double tuition;

    private String country;

    private Date birthday;

    private String nativeLang;

    private String tel;

    private String skype;

    private String introduction;

    private String memberType;

    private Date createTime;

   
}