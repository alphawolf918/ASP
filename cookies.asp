<%
 sub setcookie(var,val,cookey)
  Response.Cookies(key)(var)=val
end sub
 call setcookie("name","admin","user")
%>