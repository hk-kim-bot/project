package com.cos.test.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cos.test.model.green_notice;
import com.cos.test.repository.BoardRepository;

@Service
public class BoardService {

		@Autowired
		private BoardRepository boardRepository;
		
		@Transactional
		public void 글쓰기(green_notice board) {
			board.setCount(0);
			boardRepository.save(board);
		}
		
//		public List<green_notice> 글목록() {
//			return boardRepository.findAll();
//		}
		
		public Page<green_notice> 글목록(Pageable pageable) {
			return boardRepository.findAll(pageable);
		}
		
		public green_notice 글상세보기(int id) {
			return boardRepository.findById(id)
					.orElseThrow(()->{
						return new IllegalArgumentException("글상세보기 실패");
					});
		}
		
		@Transactional
		public void 글삭제하기(int id) {
			boardRepository.deleteById(id);
		}
		
		@Transactional
		public void 글수정하기(int id,green_notice requestBoard) {
			green_notice board = boardRepository.findById(id).orElseThrow(()->{
				return new IllegalArgumentException("글찾기 실패");
			});
		board.setTitle(requestBoard.getTitle());
		board.setContents(requestBoard.getContents());
		}
}
