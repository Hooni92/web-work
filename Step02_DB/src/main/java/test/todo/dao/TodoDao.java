package test.todo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import test.todo.dto.TodoDto;
import test.util.DbcpBean;

public class TodoDao {

	private static TodoDao dao;
	
	private TodoDao () {};
	
	public static TodoDao getInstance() {
		if(dao==null) {
			dao=new TodoDao();
		}
		return dao;
	}
	//Dto 데어터 받아와서 DB에 추가
	public boolean insert(TodoDto dto) {
		//필요데이터 초기화 해주기
		Connection conn=null;
		PreparedStatement pstmt=null;
		int updateRowCount=0;
		//DB연결해서 담아주기
		try {
			conn=new DbcpBean().getConn();
			//실행할 SQL문
			String sql="insert into Todo"
					+ " (num, content, regdate)"
					+ " values(todo_seq.nextval, ?, sysdate)";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, dto.getContent());
			updateRowCount=pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		if(updateRowCount>0) {
			return true;
		}else {
			return false;
		}
	}
	//Dto 데이터 받아와서 DB에 업데이트
	public boolean update(TodoDto dto) {
		Connection conn=null;
		PreparedStatement pstmt=null;
		int updateRowCount=0;
		System.out.println(dto.getNum());
		System.out.println(dto.getContent());
		System.out.println(dto.getRegdate());
		try {
			conn=new DbcpBean().getConn();
			String sql="update todo"
					+ " set content=?, regdate=sysdate"
					+ " where num=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, dto.getContent());
			pstmt.setInt(2, dto.getNum());
			updateRowCount=pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		if(updateRowCount>0) {
			return true;
		}else {
			return false;
		}
	}
	//삭제
	public boolean delete(int num) {
		Connection conn=null;
		PreparedStatement pstmt=null;
		int updateRowCount=0;
		try {
			conn=new DbcpBean().getConn();
			String sql="delete from todo"
					+ " where num=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			updateRowCount=pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		if(updateRowCount>0) {
			return true;
		}else {
			return false;
		}
	}
	//DB에 저장되어 있는 테이블에서 해당번호 데이터 가져오기
	public TodoDto getData(int num) {
		TodoDto dto=null;
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			conn=new DbcpBean().getConn();
			String sql="select content, to_char(regdate, 'yy\"년\"mm\"월\"dd\"일\"') regdate"
					+ " from todo"
					+ " where num=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs=pstmt.executeQuery();
			dto=new TodoDto();
			if(rs.next()) {
				dto.setNum(num);
				dto.setContent(rs.getString("content"));
				dto.setRegdate(rs.getString("regdate"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		return dto;
	}
	//전체 불러오기
	public List<TodoDto> getList() {
		List<TodoDto> list=new ArrayList<>();
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			conn=new DbcpBean().getConn();
			String sql="select num, content, to_char(regdate, 'yy\"년\"mm\"월\"dd\"일\"') regdate"
					+ " from todo"
					+ " order by num asc";
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				TodoDto dto=new TodoDto();
				dto.setNum(rs.getInt("num"));
				dto.setContent(rs.getString("content"));
				dto.setRegdate(rs.getString("regdate"));
				list.add(dto);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		return list;
	}
}
