package demo.interceptor;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;

import demo.user.entity.User;

public class LoginInterceptor extends MethodFilterInterceptor {

	@Override
	protected String doIntercept(ActionInvocation actionInvocation) throws Exception {
		User user = (User) ServletActionContext.getRequest().getSession().getAttribute("user");
		
		if(user == null ){
			/*ActionSupport actionSupport = (ActionSupport) actionInvocation.getAction();
			actionSupport.addActionError("亲，您还没有登录，没有权限访问！");*/
			return "tologin";
		
		
		}else{
		return actionInvocation.invoke();
		}
	}

}
