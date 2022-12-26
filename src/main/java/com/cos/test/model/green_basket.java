package com.cos.test.model;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;

import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
@SequenceGenerator(
		name = "GREEN_BASKET_SEQ_GENERATOR"
		, sequenceName = "GREEN_BASKET_SEQ"
		, initialValue = 1
		, allocationSize = 1
	)
public class green_basket {
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="GREEN_REPLY_SEQ_GENERATOR")
	private int id;  	
	@ManyToOne
	@JoinColumn(name="userId")
	private green_Users users;  //작성자
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name="product")
	@OnDelete(action=OnDeleteAction.CASCADE)
	private green_product product;
	
}
