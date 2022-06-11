package com.address.controller;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;



@Controller
public class MyController {

	
	@RequestMapping("/")
	public String home() throws IOException {
		System.out.println("home page");
		return "index";
	}
	
	
	@PostMapping("/searchAdress")
	public String searchAdress(@RequestParam("find")String find, Model m) throws IOException {
		
		 String str;
		 List<String> ls=new ArrayList<>();
		 File f1 = new File("src/main/webapp/sample.txt");
		 FileReader fr = new FileReader(f1);
		 BufferedReader br = new BufferedReader(fr);
		 String[] words = null;
		 
			while((str=br.readLine()) != null) {
				words= str.split(",");
				for (String word : words) {
					String result = word.replaceAll("\"", "");
					result.trim();
					if(result.equalsIgnoreCase(find)) {
						ls.add(result);
					}
				}
			}
		
		m.addAttribute("result", ls);
		
		return "index";
	}
	
}
