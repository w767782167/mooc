package com.mooc.mapper;

import com.mooc.domain.Root;
import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface RootMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Root record);

    Root selectByPrimaryKey(Long id);

    List<Root> selectAll();

    int updateByPrimaryKey(Root record);

	Root queryRootByLogin(@Param("rootname")String rootname, @Param("password")String password);
}