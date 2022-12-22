package com.cos.test.model;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;

import org.hibernate.annotations.ColumnDefault;
import org.hibernate.annotations.CreationTimestamp;

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
		name = "GREEN_REVIEW_SEQ_GENERATOR"
		, sequenceName = "GREEN_REVIEW_SEQ"
		, initialValue = 1
		, allocationSize = 1
	)

public class green_reviews {
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="GREEN_REVIEW_SEQ_GENERATOR")
	private int id;  
	@Column(nullable=false, length=100)
	private String title;
	@Column(nullable=false, length=200)
	private String content; //내용
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name="userid")
	private green_Users user; //게시자
	@CreationTimestamp
	private Timestamp createDate;  //게시일
	@ColumnDefault("0")
	private int count; //조회수
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name="reviewimg")
	private green_product product;  //이미지만 가져오기
	
}
