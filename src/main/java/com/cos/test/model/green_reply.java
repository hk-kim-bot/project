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
		name = "GREEN_REPLY_SEQ_GENERATOR"
		, sequenceName = "GREEN_REPLY_SEQ"
		, initialValue = 1
		, allocationSize = 1
	)

public class green_reply {
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="GREEN_REPLY_SEQ_GENERATOR")
	private int id;  
	@Column(nullable=false, length=200)
	private String content; //내용
	@ManyToOne
	@JoinColumn(name="questionid")
	private green_question question; //문의번호
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name="userId")
	private green_Users users;  //작성자
	@CreationTimestamp
	private Timestamp createDate; //작성시간
	
}
