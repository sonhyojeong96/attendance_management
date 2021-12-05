package jp.ac.mappers;

import java.util.List;
import jp.ac.beans.MemberModel;

public interface MemberMapper {

	public List<MemberModel> save(MemberModel account) throws Exception;
	
}
