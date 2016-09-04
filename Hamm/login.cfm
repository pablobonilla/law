<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Untitled Document</title>
</head>

<body>

<cfif isDefined("bad")>
MALA CLAVE!!!<br />
<hr />
</cfif>

<form id="form1" name="form1" method="post" action="index33.cfm">
  <table border="0" cellspacing="2" cellpadding="2">
    <tr>
      <td>email</td>
      <td><label for="email"></label>
      <input type="text" name="email" id="email" /></td>
    </tr>
    <tr>
      <td>clave</td>
      <td><label for="clave"></label>
      <input type="password" name="clave" id="clave" /></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><input name="Submit" type="submit" id="Submit" value="login..." /></td>
    </tr>
  </table>
</form>
</body>
</html>