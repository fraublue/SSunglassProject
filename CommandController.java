package kr.co.sunglass.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface CommandController {

	public abstract String process(HttpServletRequest request, HttpServletResponse response)throws Throwable;   
}
