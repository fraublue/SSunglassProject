package kr.co.project.service;

import java.util.List;

import kr.co.project.domain.ContentImgVO;

public interface UploadService {
	public int contentImgWrite(ContentImgVO vo) throws Exception;
	public String getFirstImg(int board_id) throws Exception;
	public List<String> getimgboardid(int board_id) throws Exception;
	public void deleteupload_boardid(int board_id) throws Exception;
}
