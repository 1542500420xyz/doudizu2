package com.great.handler;

import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Map;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.great.util.ImageUtil;
import com.great.util.ValidateCodeUtil;
@Controller
@RequestMapping("/checkCodeHandler")
public class CheckCodeHandler {
	
	@RequestMapping(value="/checkCode.action",method = RequestMethod.GET)
	public void checkCode(HttpServletRequest request,HttpServletResponse response) throws Exception{
		ModelAndView model=new ModelAndView();
		HttpSession session=request.getSession();
		ValidateCodeUtil vc=new ValidateCodeUtil();
		
		String keyCode=vc.getCode();
		BufferedImage image=vc.getImage();
		session.setAttribute("keyCode", keyCode);
		
		// ½ûÖ¹Í¼Ïñ»º´æ¡£
		response.setHeader("Pragma", "no-cache"); 
        response.setHeader("Cache-Control", "no-cache"); 
        response.setDateHeader("Expires", 0); 
        response.setContentType("image/jpeg"); 
        OutputStream os=response.getOutputStream();
			ImageIO.write(image, "jpeg", os); 
			os.flush();
		
		
		
	}
}
