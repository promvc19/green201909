package service;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;


import di.M_Action;
import model.CenterDAO;
import model.CenterDTO;

public class InsertReg implements M_Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String path = request.getRealPath("up");
		path = "D:\\Shin\\jspWork\\mvcProj\\WebContent\\up";
		
		
		DiskFileItemFactory factory = new DiskFileItemFactory();
		
		ServletFileUpload upload = new ServletFileUpload(factory);
		
		java.util.List<FileItem> items = upload.parseRequest(request);
		
		CenterDTO dto = new CenterDTO();
		
		for(FileItem item : items ){
			switch(item.getFieldName()) {
				case "title":
					dto.setTitle(item.getString("utf-8"));
					break;
				case "pw":
					dto.setPw(item.getString("utf-8"));
					break;
				case "pname":
					dto.setPname(item.getString("utf-8"));
					break;
				case "content":
					dto.setContent(item.getString("utf-8"));
					break;
				case "upfile":
					
					if(!item.isInMemory()) {  //파일 존재한다면
						///파일명 새로 얻기
						dto.setUpfile(new FileRename().newName(path,item.getName()));
						///파일 저장
						item.write(new File(path+"\\"+  dto.getUpfile()));
					}
					break;
				}

		}
		
		//DB 저장
		new CenterDAO().insert(dto);
		
		request.setAttribute("msg","작성되었습니다.");
		request.setAttribute("goUrl", "Detail?id="+dto.getId());
		request.setAttribute("mainUrl", "alert");
		

	}

}
