package com.example.student.mapper;

import com.example.student.entity.Student;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

/**
 * 学生数据访问接口
 */
public interface StudentMapper {

    @Select("SELECT id, student_no, name, gender, age, major, class_name " +
            "FROM student WHERE id = #{id}")
    Student selectById(@Param("id") Integer id);
}
