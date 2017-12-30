package com.mooc.domain;

import java.util.Date;

import org.apache.ibatis.type.Alias;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Alias("Order")
public class Order {
    private Long id;

    private String stuName;

    private String techName;

    private String course;

    private Integer periods;

    private Byte status;

    private Date createTime;

   
}