package com.surt.action.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
      String url="redirect:/member/tendency.do";
      
      String m = request.getParameter("m");
      String b = request.getParameter("b");
      String t = request.getParameter("t");
      String i = request.getParameter("i");
      
      String id = request.getParameter("id");
      
      String mbti = m+b+t+i;
      // 입력
      try {
         request.setCharacterEncoding("utf-8");
         MemberVO member = memberService.getMember(id);
         
         member.setMbti(mbti);
         
         System.out.println(member.getMbti());
         // 처리
         memberService.modify(member);

      } catch (Exception e) {
         e.printStackTrace();
         // exception처리...
         response.sendError(response.SC_INTERNAL_SERVER_ERROR);
      }
      return url;

   }

}