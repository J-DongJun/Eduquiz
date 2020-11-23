package com.spring.project.voca.vocaDAO;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.spring.project.voca.vocaVO.VocaVO;

public interface VocaDAO {
	public List getMyVocaByID(String loginedUser) throws DataAccessException;

	public int vocaDelete(VocaVO updateVoca) throws DataAccessException;

	public int addVoca(VocaVO addVoca) throws DataAccessException;

	public int makeNewUserVoca(VocaVO newUserVoca) throws DataAccessException;
}
