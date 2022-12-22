package com.cos.test.model;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import org.hibernate.annotations.ColumnDefault;
import org.hibernate.annotations.CreationTimestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Table(name="green_event")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
@SequenceGenerator(
		name = "GREEN_EVENT_SEQ_GENERATOR"
		, sequenceName = "GREEN_EVENT_SEQ"
		, initialValue = 1
		, allocationSize = 1
		)

public class green_event {
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="GREEN_EVENT_SEQ_GENERATOR")
	private int id;
	@Column(nullable=false, length=30)
	private String title; //글제목
	@Lob
	private String contents;//내용
	@CreationTimestamp
	private Timestamp createDate;  //작성일
	@ColumnDefault("0")
	private int count; //조회수
	@Lob
	private String img;//이미지
}
