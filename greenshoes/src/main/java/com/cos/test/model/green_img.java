package com.cos.test.model;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Table(name="green_img")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
@SequenceGenerator(
		name = "GREEN_IMG_SEQ_GENERATOR"
		, sequenceName = "GREEN_IMG_SEQ"
		, initialValue = 1
		, allocationSize = 1
		)
public class green_img {
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="GREEN_IMG_SEQ_GENERATOR")
	private int id;
	@OneToOne(fetch = FetchType.EAGER)
	@JoinColumn(name="product")
	private green_product product;
	@Lob
	private String subimg0;
	@Lob
	private String subimg1;
	@Lob
	private String subimg2;
	@Lob
	private String subimg3;
	@Lob
	private String subimg4;
	@Lob
	private String subimg5;
	
	
}
