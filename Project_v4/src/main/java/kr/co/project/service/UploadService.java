package kr.co.project.service;

import kr.co.project.domain.ContentImgVO;

public interface UploadService {
	public int contentImgWrite(ContentImgVO vo) throws Exception;
	public String getFirstImg(int board_id) throws Exception;
}
