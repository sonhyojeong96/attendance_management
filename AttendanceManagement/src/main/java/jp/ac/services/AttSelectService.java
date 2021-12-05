package jp.ac.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jp.ac.beans.AttSelectModel;
import jp.ac.mappers.AttSelectMapper;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class AttSelectService {
	@Autowired
	AttSelectMapper AttSelectMapper;
	
	// ログインしたIDの勤務リストを持ってくる
	public List<AttSelectModel> attSelect(int employeeId) throws Exception{
		return AttSelectMapper.attSelect(employeeId);
	}
}
