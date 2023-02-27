package com.cos.test.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cos.test.model.green_Users;
import com.cos.test.repository.UserRepository;

//스프링이 컴포넌트 스캔을 통해서 Bean에 등록을 해준다. Ioc를 해준다.
@Service
public class UserService {
	
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private BCryptPasswordEncoder encodeer;
	
	@Transactional
	public void 회원가입(green_Users user) {
		String rawPassword =user.getPassword();
		String encPassword = encodeer.encode(rawPassword);
		user.setPassword(encPassword);
//		user.setRoles(RoleType.USER);
		userRepository.save(user); //하나의 트랜젝션
	}
	//회원정보 수정
		@Transactional
		public void 회원수정(green_Users user) {
			green_Users persistance = userRepository.findById(user.getId()).orElseThrow(() -> {
				return new IllegalArgumentException("회원 찾기 실패");
			});
			String rawPassword=user.getPassword();
			String encPassword= encodeer.encode(rawPassword);
			persistance.setPassword(encPassword);
			persistance.setEmail(user.getEmail());
			persistance.setPhonenumber(user.getPhonenumber());
			persistance.setBirthday(user.getBirthday());
			//회원수정 메서드종료 = 서비스종료  = 트랜잭션 종료= commit
			//영속화된 persistance 객체의 변화가 감지되면 더티체킹 되어 update문 날림.
		}
}
