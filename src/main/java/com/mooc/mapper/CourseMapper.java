package com.mooc.mapper;

import com.mooc.domain.Course;
import java.util.List;

public interface CourseMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Course record);

    Course selectByPrimaryKey(Long id);

    List<Course> selectAll();

    int updateByPrimaryKey(Course record);
}