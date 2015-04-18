package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Date;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

String name=(String) request.getAttribute("name");
String names=(String) session.getAttribute("name");

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"rimzShop.css\">\n");
      out.write("        \n");
      out.write("        <!-- Latest compiled and minified CSS -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css\">\n");
      out.write("\n");
      out.write("        <!-- Optional theme -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css\">\n");
      out.write("\n");
      out.write("        <!-- Latest compiled and minified JavaScript -->\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js\"></script>\n");
      out.write("\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            function form_validation(){\n");
      out.write("            var name=document.Login_Form.login_name.value;\n");
      out.write("            var password=document.Login_Form.login_password.value;\n");
      out.write("            var flag = true;             \n");
      out.write("            if(name==\"\"){\n");
      out.write("                document.getElementById(\"invalid_login\").style.color=\"red\";\n");
      out.write("                document.getElementById('invalid_login').innerHTML=\"UserName is mandatory!\";\n");
      out.write("                flag = false;\n");
      out.write("            }             \n");
      out.write("            if(password==\"\"){\n");
      out.write("                document.getElementById(\"invalid_login\").style.color=\"red\";\n");
      out.write("                document.getElementById('invalid_login').innerHTML=\"Password is mandatory!\";\n");
      out.write("                flag = false;\n");
      out.write("            }    \n");
      out.write("            return flag;\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("        \n");
      out.write("        <!--div id=\"date\">  Current Time =  ");
      out.print(new Date() );
      out.write(" </div-->\n");
      out.write("        <div id=\"invalid_login\"> </div>\n");
      out.write("        ");
 String authentication = (String) session.getAttribute("authentication");            
            if (authentication == null) {
        
      out.write("                \n");
      out.write("        <div id=\"login_in\">\n");
      out.write("            <form name=\"Login_Form\" action=\"Controller\" method=\"Post\">\n");
      out.write("                <div align=\"right\">                       \n");
      out.write("                    <span class=\"label label-primary\">Username</span>    <input  type=\"text\" maxlength=\"40\" name=\"login_name\" placeholder=\"username\"> &nbsp;&nbsp;\n");
      out.write("                  \n");
      out.write("                  \n");
      out.write("                    <span class=\"label label-primary\">Password</span>    <input type=\"password\" maxlength=\"40\" name=\"login_password\" placeholder=\"password\">             \n");
      out.write("                    <input type=\"submit\" name=\"login_submit\" value=\"Submit\" class=\"btn btn-default navbar-btn\" onclick=\"return form_validation()\">   \n");
      out.write("                   \n");
      out.write("                    <a href=\"registration.jsp\"> Register </a>\n");
      out.write("                </div>                    \n");
      out.write("            </form>\n");
      out.write("            ");
 }
                if (authentication != null) { if(authentication.equals("Auth_Success"))
                { // out.println("authentication = " + authentication);
            
      out.write("\n");
      out.write("            <div id=\"user_info\"> Welcome  <span style=\"color:green\">   <i> </i>  </span> </div>\n");
      out.write("            <form name=\"logout\" action=\"Controller\" method=\"Post\">\n");
      out.write("                <div class=\"logmeout\"> <input type=\"submit\" name=\"signout\" value=\" Logout \"> </div>\n");
      out.write("            </form>            \n");
      out.write("            ");
} else { 
      out.write("\n");
      out.write("            <div id=\"wrong_user\"> <span style=\"color:red\"> Username/Password is wrong! </span> </div>\n");
      out.write("              <form name=\"Login_Form\" action=\"Controller\" method=\"Post\">\n");
      out.write("                <div id=\"login_in\" align=\"right\">                       \n");
      out.write("                    Username    <input  type=\"text\" maxlength=\"40\" name=\"login_name\"> &nbsp;&nbsp;\n");
      out.write("                    Password    <input type=\"password\" maxlength=\"40\" name=\"login_password\">             \n");
      out.write("                    <input type=\"submit\" name=\"login_submit\" value=\"Submit\" onclick=\"return form_validation()\">             \n");
      out.write("                    <a href=\"registration.jsp\"> Register </a>\n");
      out.write("                </div>                    \n");
      out.write("            </form>\n");
      out.write("          \n");
      out.write("            ");
}}
      out.write("\n");
      out.write("\n");
      out.write("        </div>  \n");
      out.write("        \n");
      out.write("            <header id=\"top_header\">  rimzShop </header> \n");
      out.write("           \n");
      out.write("            <section id=\"main_content\">\n");
      out.write("                <article id=\"main_article\">\n");
      out.write("                    <select name=\"Item\">\n");
      out.write("                        <option> Books </option>\n");
      out.write("                        <option> Electronics </option>\n");
      out.write("                        <option> House Hold Stuffs</option>\n");
      out.write("                    </select>\n");
      out.write("                </article>\n");
      out.write("                <article id=\"main_article\">\n");
      out.write("                    Use your coupon code here. This would reduce your cost. :)\n");
      out.write("                    Thank you for shopping at rimzShop. Hope to see you again.!\n");
      out.write("                </article>            \n");
      out.write("            </section>\n");
      out.write("\n");
      out.write("            <aside id=\"updates\"> The latest products and services that we offer are updated here. \n");
      out.write("                We offer a whole range of kitchen items now. </aside>\n");
      out.write("            <footer id=\"the_footer\"> @Copyright rimz 2015  </footer>\n");
      out.write("       \n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
