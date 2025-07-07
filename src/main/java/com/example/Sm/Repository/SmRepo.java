package com.example.Sm.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.Sm.Model.Student;

@Repository
public interface SmRepo extends JpaRepository<Student,Integer> {

}
