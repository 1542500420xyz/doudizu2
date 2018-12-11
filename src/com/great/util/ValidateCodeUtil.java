package com.great.util;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpSession;

import com.sun.image.codec.jpeg.JPEGCodec;
import com.sun.image.codec.jpeg.JPEGImageEncoder;

public class ValidateCodeUtil {
	// 图形验证码的字符集，系统将随机从这个字符串中选择一些字符作为验证码
    private static String codeChars = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
    private String code;
    private BufferedImage image;
    private InputStream inputStream;
	
    public ValidateCodeUtil() {
		// TODO Auto-generated constructor stub
    	// 获得验证码集合的长度
        int charsLength = codeChars.length();

        // 设置图形验证码的长和宽
        int width = 90, height = 30;
        image = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
        Graphics g = image.getGraphics();
        Random random = new Random();
        g.setColor(getRandomColor(180, 250));

        g.fillRect(0, 0, width, height);

        g.setFont(new Font("Times New Roman", Font.ITALIC, height));

        g.setColor(getRandomColor(120, 180));
        // 用户保存最后随机生成的验证码
        StringBuffer validationCode = new StringBuffer();
        // 验证码的随机字体
        String[] fontNames = { "Times New Roman", "Book antiqua", "Arial" };

        // 随机生成4个验证码
        for (int i = 0; i < 4; i++) {
            // 随机设置当前验证码的字符的字体
            g.setFont(new Font(fontNames[random.nextInt(3)], Font.ITALIC, height));
            // 随机获得当前验证码的字符
            char codeChar = codeChars.charAt(random.nextInt(charsLength));
            validationCode.append(codeChar);
            // 随机设置当前验证码字符的颜色
            g.setColor(getRandomColor(10, 100));
            // 在图形上输出验证码字符，x和y都是随机生成的
            g.drawString(String.valueOf(codeChar), 16 * i + random.nextInt(7),
                    height - random.nextInt(6));
        }

        this.code=validationCode.toString();
         
        g.dispose();	//关闭Graphics对象
        try {
			this.inputStream=getInputStream(image);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
	}
	
	//随机生成颜色
	private Color getRandomColor(int minColor, int maxColor) {
        Random random = new Random();
          if(minColor > 255){
              minColor = 255;
          }
          if(maxColor > 255){
              maxColor = 255;
          }
          //获得r的随机颜色值
          int red = minColor+random.nextInt(maxColor-minColor);
          int green = minColor + random.nextInt(maxColor-minColor);
          int blue = minColor + random.nextInt(maxColor-minColor);
          return new Color(red,green,blue);
	}

	/**
	 * 将图片传入输入流的方法
	 */
	public static InputStream getInputStream(BufferedImage image) throws IOException {
		ByteArrayOutputStream bos = new ByteArrayOutputStream();
		JPEGImageEncoder encoder = JPEGCodec.createJPEGEncoder(bos);
		encoder.encode(image);
		byte[] imageBts = bos.toByteArray();
		InputStream in = new ByteArrayInputStream(imageBts);
		return in;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public InputStream getInputStream() {
		return inputStream;
	}

	public void setInputStream(InputStream inputStream) {
		this.inputStream = inputStream;
	}

	public BufferedImage getImage() {
		return image;
	}
	
	
}
