package com.unisatc.crudbd2.repositories;

import com.unisatc.crudbd2.model.Apolice;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ApoliceRepository extends JpaRepository<Apolice, Integer> {
}
