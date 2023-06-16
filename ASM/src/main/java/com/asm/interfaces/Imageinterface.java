package com.asm.interfaces;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

import com.asm.model.ImageDetails;
@Service
public interface Imageinterface extends JpaRepository<ImageDetails, Integer> {

}
