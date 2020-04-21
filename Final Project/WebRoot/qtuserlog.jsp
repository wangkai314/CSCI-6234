 <%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
 <%
    if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")==""){
     %>
	 	  <form action="jspmjbhdxthsg8027X1B6?ac=login&amp;a=a" method="post" name="f11" id="f11" style="display: inline">
    <div class="modal fade" id="myLoginModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog modal-sm" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                            aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">Login</h4>
                </div>
                <div class="modal-body">
                    <div class="input-group mb">
                        <span class="input-group-addon" id="basic-addon1">Username</span>
                        <input type="text" class="form-control" id="username" name="username" placeholder="Input Username">
                    </div>
                    <div class="input-group mb">
                        <span class="input-group-addon" id="basic-addon1">Password</span>
                        <input type="password" class="form-control" id="pwd1" name="pwd1" placeholder="Input Password">
                    </div>
					<div class="input-group mb">
                        <span class="input-group-addon" id="basic-addon1">User Type</span>
                       <select name='cx' id='cx' class="form-control">
                                  <option value='管理员'>Manager</option>
<option value='注册用户'>Sign up</option>

                                </select>
                    </div>
					<div class="input-group mb">
                        <span class="input-group-addon" id="basic-addon1">Verification Code</span>
                        <input type="text" class="form-control" id="pagerandom" name="pagerandom" placeholder="Code">
						<a href="javascript:loadimage();"><img alt="Change" name="randImage" id="randImage" src="image.jsp" width="60" height="20" border="1" align="absmiddle" /></a>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </div>
            </div>
        </div>
    </div>
	</form>
 <script type="text/javascript">
 function loadimage(){ 
document.getElementById("randImage").src = "image.jsp?"+Math.random(); 
} 
function checklog()
{
	if(document.f11.username.value=="" || document.f11.pwd1.value=="" || document.f11.pagerandom.value=="")
	{
		alert("Please Input The Complete Information");
		return false;
	}
}
  </script>
<%}%>
