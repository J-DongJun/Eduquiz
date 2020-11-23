/*
 * package com.spring.project.common.interceptor;
 * 
 * import java.io.IOException;
 * 
 * import javax.servlet.http.Cookie; import
 * javax.servlet.http.HttpServletRequest; import
 * javax.servlet.http.HttpServletResponse; import
 * javax.servlet.http.HttpSession;
 * 
 * import org.springframework.beans.factory.annotation.Autowired; import
 * org.springframework.web.servlet.ModelAndView; import
 * org.springframework.web.servlet.handler.HandlerInterceptorAdapter; import
 * org.springframework.web.util.WebUtils;
 * 
 * import com.spring.project.member.service.MemberService; import
 * com.spring.project.member.vo.MemberVO;
 * 
 * public class ViewNameInterceptor extends HandlerInterceptorAdapter {
 * 
 * @Autowired MemberService memberService;
 * 
 * @Override public boolean preHandle(HttpServletRequest request,
 * HttpServletResponse response, Object handler) { HttpSession session =
 * request.getSession(); Object obj = session.getAttribute("login");
 * System.out.println("memberinterceptor!");
 * 
 * if (obj==null){// 로그인된 세션이 없는 경우... // 우리가 만들어 논 쿠키를 꺼내온다. Cookie loginCookie
 * = WebUtils.getCookie(request,"loginCookie");
 * 
 * if ( loginCookie !=null ){// 쿠키가 존재하는 경우(이전에 로그인때 생성된 쿠키가 존재한다는 것) //
 * loginCookie의 값을 꺼내오고 -> 즉, 저장해논 세션Id를 꺼내오고 String sessionId =
 * loginCookie.getValue(); // 세션Id를 checkUserWithSessionKey에 전달해 이전에 로그인한적이 있는지
 * 체크하는 메서드를 거쳐서 // 유효시간이 > now() 인 즉 아직 유효시간이 지나지 않으면서 해당 sessionId 정보를 가지고 있는
 * 사용자 정보를 반환한다. MemberVO memberVO = null; try { memberVO =
 * memberService.checkUserWithSessionKey(sessionId); String viewName =
 * getViewName(request); System.out.println("here!!!!");
 * request.setAttribute("viewName", viewName); } catch (Exception e) { // TODO
 * Auto-generated catch block e.printStackTrace(); }
 * 
 * if ( memberVO !=null ){// 그런 사용자가 있다면 // 세션을 생성시켜 준다.
 * session.setAttribute("login", memberVO); return true; } } // 이제 아래는 로그인도 안되있고
 * 쿠키도 존재하지 않는 경우니까 다시 로그인 폼으로 돌려보내면 된다. // 로그인이 안되어 있는 상태임으로 로그인 폼으로 다시
 * 돌려보냄(redirect) try { response.sendRedirect("/main/login"); } catch
 * (IOException e) { // TODO Auto-generated catch block e.printStackTrace(); }
 * return false;// 더이상 컨트롤러 요청으로 가지 않도록 false로 반환함 }
 * 
 * // preHandle의 return은 컨트롤러 요청 uri로 가도 되냐 안되냐를 허가하는 의미임 // 따라서 true로하면 컨트롤러
 * uri로 가게 됨. return true; }
 * 
 * @Override public void postHandle(HttpServletRequest request,
 * HttpServletResponse response, Object handler, ModelAndView modelAndView)
 * throws Exception { super.postHandle(request, response, handler,
 * modelAndView); }
 * 
 * @Override public void afterCompletion(HttpServletRequest request,
 * HttpServletResponse response, Object handler, Exception ex) throws Exception
 * { }
 * 
 * private String getViewName(HttpServletRequest request) throws Exception {
 * String contextPath = request.getContextPath(); String uri = (String)
 * request.getAttribute("javax.servlet.include.request_uri"); if (uri == null ||
 * uri.trim().equals("")) { uri = request.getRequestURI(); }
 * 
 * int begin = 0; if (!((contextPath == null) || ("".equals(contextPath)))) {
 * begin = contextPath.length(); }
 * 
 * int end; if (uri.indexOf(";") != -1) { end = uri.indexOf(";"); } else if
 * (uri.indexOf("?") != -1) { end = uri.indexOf("?"); } else { end =
 * uri.length(); }
 * 
 * String fileName = uri.substring(begin, end); if (fileName.indexOf(".") != -1)
 * { fileName = fileName.substring(0, fileName.lastIndexOf(".")); } if
 * (fileName.lastIndexOf("/") != -1) { fileName =
 * fileName.substring(fileName.lastIndexOf("/", 1), fileName.length()); } return
 * fileName; } }
 */