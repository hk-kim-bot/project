package com.cos.test.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Table(name="green_product")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
@SequenceGenerator(
		name = "GREEN_PRODUCT_SEQ_GENERATOR"
		, sequenceName = "GREEN_PRODUCT_SEQ"
		, initialValue = 1
		, allocationSize = 1
		)

public class green_product {
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="GREEN_PRODUCT_SEQ_GENERATOR")
	private int id;
	
	@Column(nullable=false, length=30)
	private String brand_name;  //브랜드 이름  
	@Column(nullable=false, length=30,unique=true)
	private String product_name;  //상품 이름
	@Column(nullable=false, length=30)
	private int  price;  //가격
	@Lob
	private String  img; //이미지
	@Column(nullable=false, length=30)
	private String  purpose;  //사용 용도
	@Column(nullable=false, length=30)
	private String  material;  //재료
	@Lob
	private String  contents;  //내용
	@Enumerated(EnumType.STRING)
	private ProductType status;  //상품의 상태(신상, 중고)
	@OneToOne(mappedBy="product" )
	private green_img green_img;
	@Column(nullable=false,length=50)
	private String color;
	
}
