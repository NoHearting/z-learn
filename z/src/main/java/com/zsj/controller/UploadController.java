package com.zsj.controller;

import com.zsj.response.ResponseUploadImages;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/upload")
public class UploadController {

    @ResponseBody
    @RequestMapping("/blogImages")
    public ResponseUploadImages uploadsImages(HttpServletRequest request,@RequestParam(value = "editormd-image-file", required = false) MultipartFile upload) {

        System.out.println("开始");
        String path = request.getSession().getServletContext().getRealPath("/uploads/");
        System.out.println(path);
        File file = new File(path);
        if(!file.exists()){
            file.mkdirs();
        }
        String filename = upload.getOriginalFilename();

        //把文件名称设置为唯一值
        String uuid = UUID.randomUUID().toString().replace("-", "");
        filename = uuid+filename;
        try {
            upload.transferTo(new File(path,filename));
        } catch (IOException e) {
            e.printStackTrace();
            System.out.println("异常");
        }
        String url = path + File.separator+filename;
        return new ResponseUploadImages(1,"上传成功",url);
    }


    @ResponseBody
    @RequestMapping("/blogImages2")
    public ResponseUploadImages uploadsImages2(HttpServletRequest request) throws Exception {
        //文件上传到的位置
        String url = null;
        String path = request.getSession().getServletContext().getRealPath("/uploads/");

        System.out.println(path);
        File file = new File(path);
        if(!file.exists()){
            file.mkdirs();
        }
        //解析request对象，获取上传文件项
        DiskFileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(factory);
        //解析request
        List<FileItem> fileItems = upload.parseRequest(request);
        //遍历
        for(FileItem item:fileItems){
            //进行判断，当前item对象是否是上传文件项
            if(item.isFormField()){   //普通表单项

            }else{   //上传文件项
                String filename = item.getName();
                //把文件名称设置为唯一值
                String uuid = UUID.randomUUID().toString().replace("-", "");
                filename = uuid+filename;
                //完成文件上传
                item.write(new File(path,filename));
                //删除临时文件
                item.delete();
                url = request.getContextPath()+"/uploads/"+filename;
                System.out.println(url);
            }
        }
        return new ResponseUploadImages(1,"上传成功",url);
    }
}
