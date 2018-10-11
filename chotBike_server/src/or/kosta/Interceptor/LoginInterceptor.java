package or.kosta.Interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginInterceptor extends HandlerInterceptorAdapter {
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) {
		try { // logininfo ���ǰ��� ���ϰ��
			if (request.getSession().getAttribute("user_id") == null) { // �α����������� redirect
				response.sendRedirect("/login");
				return false;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} // ���� �ƴϸ� ���������� ��Ʈ�ѷ� ȣ��
		return true;
	}
}
