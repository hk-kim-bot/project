package com.cos.test.model;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;



import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;


@Table(name="green_users")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
@SequenceGenerator(
		name = "GREEN_USER_SEQ_GENERATOR"
		, sequenceName = "GREEN_USER_SEQ"
		, initialValue = 1
		, allocationSize = 1
		)

public class green_Users {
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="GREEN_USER_SEQ_GENERATOR")
	private int id;  
	
	@Column(nullable=false, length=30)
	private String username;  //사용자 이름
	
	@Column(nullable=false, length=30, unique=true)
	private String userid; //사용자 아이디
	
	@Column(nullable=false, length=100)
	private String password;  // 사용자 비밀번호
	
	@Column(nullable=false, length=50)
	private String email;   // 사용자 이메일
	
	@Column(nullable=false, length=20)
	private String phonenumber; //사용자 폰번호
	
	
	@Column(nullable=false, length=20)
	private String birthday; //사용자 생일
	
	@Enumerated(EnumType.STRING)
	private Roletype roles; //권한
	
	@CreationTimestamp
	private Timestamp createDate;  // 가입일
	

}
