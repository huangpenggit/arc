package com.del.test.repository;

import com.del.test.model.Person;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PersonRepository extends JpaRepository<Person, Long> {
    void delete(Long id);
}