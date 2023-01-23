package com.multi.ongo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService {

	MemberDAO memberdao;
	
	@Autowired
	public MemberServiceImpl(MemberDAO memberdao) {
		super();
		this.memberdao = memberdao;
	}

	@Override
	public int insert(MemberDTO dto) {
		return memberdao.insert(dto);
	}

	@Override
	public List<MemberDTO> memberlist() {
		return memberdao.memberlist();
	}

	@Override
	public MemberDTO memberIdRead(String id) {
		return memberdao.memberIdRead(id);
	}

	@Override
	public int delete(String id) {
		return memberdao.delete(id);
	}

	@Override
	public int update(MemberDTO dto) {
		return memberdao.update(dto);
	}

	
	//menu/jaemu_menu.jsp
	@Override
	public MemberDTO login(MemberDTO idInfo) {
		return memberdao.login(idInfo);
	}
	
	
	
	

}
