package com.mooc.web.controller;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;
import java.util.UUID;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mooc.util.Context;
@Controller
public class RandomCode {
	private static final long serialVersionUID = 1L;
	@RequestMapping("/randomCode")
	protected void showCode(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		//生成随机数
		String random = UUID.randomUUID().toString();
		System.out.println(random);

		String randomCode = random.substring(0, 6);

		//把随机数放进Session中
		req.getSession().setAttribute(Context.RANDOMCODE_IN_SESSION, randomCode);

		//创建图片对象
		int width = 505;
		int height = 45;
		//int height = 40;
		int imageType = BufferedImage.TYPE_INT_RGB;
		BufferedImage image = new BufferedImage(width, height, imageType);

		//画板
		Graphics g = image.getGraphics();
		g.setColor(Color.DARK_GRAY);
		//绘制一个实心的矩形
		g.fillRect(1, 1, width - 2, height - 2);

		//把随机数画进图片中
		g.setColor(Color.white);//设置随机数的颜色
		Font font = new Font("宋体", Font.BOLD + Font.ITALIC , 24);
		g.setFont(font);//设置随机数的字体和大小
		//g.drawString(randomCode, 10, 28);
		g.drawString(randomCode, 210, 28);//x,y轴

		//干扰线
		g.setColor(Color.GRAY);
		Random r = new Random();
		for (int i = 0; i < 100; i++) {
			g.fillRect(r.nextInt(width), r.nextInt(height), 2, 2);
		}

		//关闭
		g.dispose();
		//把图片对象以流的方式保存出去
		ImageIO.write(image, "jpg", resp.getOutputStream());
	}
}
