package com.cos.test.model;

import java.sql.Timestamp;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import org.hibernate.annotations.ColumnDefault;
import org.hibernate.annotations.CreationTimestamp;



import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Table(name="green_question")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
@SequenceGenerator(
		name = "GREEN_QUESTION_SEQ_GENERATOR"
		, sequenceName = "GREEN_QUESTION_SEQ"
		, initialValue = 1
		, allocationSize = 1
		)

public class green_question {
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="GREEN_QUESTION_SEQ_GENERATOR")
	private int id;
	
	@Column(nullable=false, length=30)
	private String title; //글제목
	@Lob
	private String contents;//내용
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name="userid")
	private green_Users user; //게시자
	
	@CreationTimestamp
	private Timestamp createDate;  //작성일

	
	@OneToMany (mappedBy="question", fetch = FetchType.EAGER)
	private List<green_reply> reply;
	
	
	
}