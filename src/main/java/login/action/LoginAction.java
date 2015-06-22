package login.action;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.validator.DynaValidatorForm;

/**
 * Java EE 6 より追加されたログイン機能によるレルム認証を行うアクション
 */
public class LoginAction extends org.apache.struts.action.Action {

    private static final String SUCCESS = "success";

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
        
        try {
            
            request.login(id, password);
            System.out.println("success");
            request.getSession().setAttribute("user", request.getUserPrincipal().getName());
            
            return mapping.findForward(SUCCESS);
        } catch(ServletException e) { // 認証済みでもエラーになる。
            System.out.println(e.getMessage());
            request.setAttribute("error", "not login." + e.getMessage());
            return mapping.findForward("error");
            
        }
    }
}
