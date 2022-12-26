package com.cos.test.model;

import java.sql.Timestamp;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Table(name="green_order")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
@SequenceGenerator(
		name = "GREEN_ORDER_SEQ_GENERATOR"
		, sequenceName = "GREEN_ORDER_SEQ"
		, initialValue = 1
		, allocationSize = 1
		)
public class green_ordermanage {
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="GREEN_ORDER_SEQ_GENERATOR")
	private int order_number; // 주문번호
	@Column(nullable=false, length=30)
	private int amount;  //수량
	@CreationTimestamp
	private Timestamp orderDate;  // 주문일
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name="productid")
	@OnDelete(action=OnDeleteAction.CASCADE)
	private green_product product; //주문 상품
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name="userid")
	private green_Users user; //주문자 정보
	@Enumerated(EnumType.STRING)
	private orderStatus status;  //주문상태
}
