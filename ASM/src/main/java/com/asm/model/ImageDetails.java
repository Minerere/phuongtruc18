package com.asm.model;

import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.MapsId;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import lombok.Data;

@Data
@Entity
@Table(name = "imagedetails")
public class ImageDetails {
	@Id
	int id;
	String image1;
	String image2;
	String image3;
	String image4;
	String image5;
	String image6;
	String image7;
	String image8;
	String image9;
	String image10;
	@OneToOne
	@MapsId
	@JoinColumn(name = "id")
	Product product;
}
