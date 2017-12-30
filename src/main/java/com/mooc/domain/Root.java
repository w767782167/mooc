package com.mooc.domain;

import java.util.Date;

import org.apache.ibatis.type.Alias;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Alias("Root")
public class Root {
    private Long id;

    private String rootname;

    private String password;

    private Date createTime;

  
}