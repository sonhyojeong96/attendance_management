package jp.ac.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import jp.ac.beans.MemberModel;
import jp.ac.mappers.MemberMapper;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class MemberService {
	@Autowired
	MemberMapper MemberMapper;
	
	public List<MemberModel> save(MemberModel account) throws Exception{
		return MemberMapper.save(account);
	}
}
