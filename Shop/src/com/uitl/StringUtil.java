package com.uitl;

public class StringUtil {
	
	public static String upperFirstLetter(String str){
		StringBuilder sb = new StringBuilder();
		sb.append(str.substring(0, 1).toUpperCase());
		sb.append(str.substring(1));
		return sb.toString();
	}
	
	public static void main(String[] args) {
		System.out.println(upperFirstLetter("fssfdsl"));
	}

}
