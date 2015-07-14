package login.action;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.action.ActionMessages;
import org.apache.struts.validator.DynaValidatorForm;

/**
 * Java EE 6 より追加されたログイン機能によるレルム認証を行うアクション
 */
public class LoginAction extends org.apache.struts.action.Action {

    /**
     *
     * @param mapping The ActionMapping used to select this instance.
     * @param form The optional ActionForm bean for this request.
     * @param request The HTTP Request we are processing.
     * @param response The HTTP Response we are processing.
     * @throws java.lang.Exception
     * @return
     */
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        
        
        DynaValidatorForm _form = (DynaValidatorForm)form;
        String id = _form.getString("id");
        String password = _form.getString("password");
        
        
        System.out.println("auth:" + request.getUserPrincipal());
        HttpSession session = request.getSession();
        try {
            
            request.login(id, password);
            session.setAttribute("user", request.getUserPrincipal().getName());
            
            return mapping.findForward("success");
        } catch(ServletException e) { 
            // 認証済みで、再度認証した場合も例外発生。
            if (session.getAttribute("user") != null) {
                return mapping.findForward("success");
            }
            
            ActionMessages messages = new ActionMessages();
            messages.add("error", new ActionMessage("message.invalid.login"));
            
            saveErrors(request, messages);
            return mapping.findForward("error");
            
        }
    }
}
