package com.mooc.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Comment {
    private Long id;

    private String stuName;

    private String techName;

    private String content;

    private Date commentTime;

   
}