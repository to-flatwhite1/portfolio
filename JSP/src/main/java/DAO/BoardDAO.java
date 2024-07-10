package DAO;

import java.sql.*;
import java.util.*;
import DTO.BoardDTO;

public class BoardDAO {
	private BoardDAO(){

	}

	private static BoardDAO instance=new BoardDAO();
	//데이터의 변조 또는 null주입을 막기 위해 setter는 만들지 않는다.
	public static BoardDAO getInstance() {
		return instance;
	}
	//커넥션 연결처리
	public Connection getConnection() throws Exception{
		Connection conn=null;
		String url="jdbc:mysql://127.0.0.1:3306/sample";
		String db_id="root";
		String db_pw="iotiot";
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn=DriverManager.getConnection(url, db_id, db_pw);
		return conn;
	}
	//리스트 출력을 위한 메서드, 필드 여러개를 가진 객체가 여러개 들어가는 리스트를 return
	//DB에서 ResultSet을 추출, 한칸씩 읽어서 변수에 담고, 해당 변수를 BoardDTO객체에 담고, 해당 객체를 List에 담는다
	public List<BoardDTO> findList() {
		List<BoardDTO> list=new ArrayList<BoardDTO>();
		String sql="select * from board;";
		Connection conn=null;PreparedStatement pstmt=null;ResultSet rs=null;
		try {
			conn=getConnection();
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				BoardDTO dto=new BoardDTO();
				dto.setNum(rs.getInt("num"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				list.add(dto);
			}
		}catch(Exception e) {
			System.out.println("findList() 접속 중 오류 발생 : "+e);
		}finally {
			try {
				if(rs!=null)rs.close();if(pstmt!=null)pstmt.close();if(conn!=null)conn.close();
			}catch(Exception ex) {
				System.out.println("findList() 접속 해제 중 오류 발생 : "+ex);
			}
		}
		return list;
	}
}
