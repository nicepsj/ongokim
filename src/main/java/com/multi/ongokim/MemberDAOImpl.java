package com.multi.ongo;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAOImpl implements MemberDAO {

	SqlSession sqlSession;
	
	@Autowired
	public MemberDAOImpl(SqlSession sqlSession) {
		super();
		this.sqlSession = sqlSession;
	}


	@Override
	public int insert(MemberDTO memberdto) {    //등록
		return sqlSession.insert("com.multi.ongo.write", memberdto);
	}


	@Override
	public List<MemberDTO> memberlist() {   // 전체리스트
		return sqlSession.selectList("com.multi.ongo.selectall");
	}


	@Override
	public MemberDTO memberIdRead(String id) {  //읽기
		return sqlSession.selectOne("com.multi.ongo.idRead",id);
	}


	@Override  
	public int delete(String id) {   //삭제
		return sqlSession.delete("com.multi.ongo.idDelete", id);
	}


	@Override
	public int update(MemberDTO dto) { //수정
		return sqlSession.update("com.multi.ongo.idUpdate", dto);
	}


	
	@Override
	public MemberDTO login(MemberDTO idInfo) {
		MemberDTO login = sqlSession.selectOne("com.multi.ongo.login",idInfo);
		return login;
	}


	


	
	
	
	
	
	
	
	
	
	
	
	
	
}
