<%@ Page Language="C#" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">
    
    void Page_Load()
    {
        string[] cookies = Request.Cookies.AllKeys;
        foreach (string cookie in cookies)
        {
            BulletedList1.Items.Add("Deleting " + cookie);
            Response.Cookies[cookie].Expires = DateTime.Now.AddDays(-1);
        }
    }
</script>
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Delete All Cookies</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <h1>Delete All Cookies</h1>
    
    <asp:BulletedList
        id="BulletedList1"
        EnableViewState="false"
        Runat="server" />
    
    </div>
    </form>
</body>
</html>
