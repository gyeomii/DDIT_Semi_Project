package com.surt.action.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.surt.action.Action;
import com.surt.dto.MemberVO;
import com.surt.service.MemberService;

public class MemberGetMbtiAction implements Action {
   
   private MemberService memberService;

   public void setMemberService(MemberService memberService) {
      this.memberService = memberService;
   }

   @Override
   public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
      String url="/member/getMbti_success";
      
      String m = request.getParameter("m");
      String b = request.getParameter("b");
      String t = request.getParameter("t");
      String i = request.getParameter("i");
      
      String id = request.getParameter("id");
      
      String mbti = m+b+t+i;
      // 입력
      try {
         request.setCharacterEncoding("utf-8");
         MemberVO oldMember = memberService.getMember(id);
         
         oldMember.setMbti(mbti);
         
         System.out.println(oldMember.getMbti());
         // 처리
         memberService.modify(oldMember);
         
         MemberVO member = memberService.getMember(id);
         HttpSession session = request.getSession();
         
         session.setAttribute("loginUser", member);
         

      } catch (Exception e) {
         e.printStackTrace();
         // exception처리...
         response.sendError(response.SC_INTERNAL_SERVER_ERROR);
      }
      return url;

   }

}