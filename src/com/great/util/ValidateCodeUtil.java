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
	// ͼ����֤����ַ�����ϵͳ�����������ַ�����ѡ��һЩ�ַ���Ϊ��֤��
    private static String codeChars = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
    private String code;
    private BufferedImage image;
    private InputStream inputStream;
	
    public ValidateCodeUtil() {
		// TODO Auto-generated constructor stub
    	// �����֤�뼯�ϵĳ���
        int charsLength = codeChars.length();

        // ����ͼ����֤��ĳ��Ϳ�
        int width = 90, height = 30;
        image = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
        Graphics g = image.getGraphics();
        Random random = new Random();
        g.setColor(getRandomColor(180, 250));

        g.fillRect(0, 0, width, height);

        g.setFont(new Font("Times New Roman", Font.ITALIC, height));

        g.setColor(getRandomColor(120, 180));
        // �û��������������ɵ���֤��
        StringBuffer validationCode = new StringBuffer();
        // ��֤����������
        String[] fontNames = { "Times New Roman", "Book antiqua", "Arial" };

        // �������4����֤��
        for (int i = 0; i < 4; i++) {
            // ������õ�ǰ��֤����ַ�������
            g.setFont(new Font(fontNames[random.nextInt(3)], Font.ITALIC, height));
            // �����õ�ǰ��֤����ַ�
            char codeChar = codeChars.charAt(random.nextInt(charsLength));
            validationCode.append(codeChar);
            // ������õ�ǰ��֤���ַ�����ɫ
            g.setColor(getRandomColor(10, 100));
            // ��ͼ���������֤���ַ���x��y����������ɵ�
            g.drawString(String.valueOf(codeChar), 16 * i + random.nextInt(7),
                    height - random.nextInt(6));
        }

        this.code=validationCode.toString();
         
        g.dispose();	//�ر�Graphics����
        try {
			this.inputStream=getInputStream(image);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
	}
	
	//���������ɫ
	private Color getRandomColor(int minColor, int maxColor) {
        Random random = new Random();
          if(minColor > 255){
              minColor = 255;
          }
          if(maxColor > 255){
              maxColor = 255;
          }
          //���r�������ɫֵ
          int red = minColor+random.nextInt(maxColor-minColor);
          int green = minColor + random.nextInt(maxColor-minColor);
          int blue = minColor + random.nextInt(maxColor-minColor);
          return new Color(red,green,blue);
	}

	/**
	 * ��ͼƬ�����������ķ���
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
