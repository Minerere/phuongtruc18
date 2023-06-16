package com.asm.interfaces;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.asm.model.categoryReport;
import com.asm.model.Category;

public interface Categoryinterfaces extends JpaRepository<Category, String> {
	
}
