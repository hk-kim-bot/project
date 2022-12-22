package com.cos.test.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Table(name="green_shoessize")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
@SequenceGenerator(
		name = "GREEN_SHOESSIZE_SEQ_GENERATOR"
		, sequenceName = "GREEN_SHOESSIZE_SEQ"
		, initialValue = 1
		, allocationSize = 1
		)
public class green_shoessize {
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="GREEN_SHOESSIZE_SEQ_GENERATOR")
	private int id;
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name="product_name")
	private green_product product_name;
	@Column(nullable=false, length=30 ,unique=true)
	private String  item_size;  //사이즈
	@Column(nullable=false, length=30)
	private int  item_stock;  //재고
}
