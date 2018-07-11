package service;
import java.util.List;

import dao.MemberDAOImpl;
import domain.*;

public class MemberServiceImpl implements MemberService {

	private static MemberService instance = new MemberServiceImpl();
	public static MemberService getInstance() {return instance;}
	private MemberServiceImpl() {}
	
	@Override
	public void createMember(MemberBean member) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<MemberBean> memberList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<MemberBean> findByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MemberBean findById(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int memberCount() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void updateMember(MemberBean member) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteMember(MemberBean member) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public boolean login(MemberBean member) {
		return (MemberDAOImpl.getInstance().login(member)!=null);
	}

}
