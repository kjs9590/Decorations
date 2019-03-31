package Repository;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import Model.MovieRegisterDTO;
import Model.ScreenDTO;

public class MovieRegistRepository {
    @Autowired
	private SqlSession sqlSession;

		public Integer movieInsert(MovieRegisterDTO art) {
			
			return sqlSession.insert("MovieMapper.insertMovie",art);
		}
		public List<MovieRegisterDTO> movieList() {
			return sqlSession.selectList("MovieMapper.movieList");
		}
		public MovieRegisterDTO movieInfom(Long mNum) {
			
			return sqlSession.selectOne("MovieMapper.movieInfom",mNum);
		}
	
	}


