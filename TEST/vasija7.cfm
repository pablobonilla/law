<html>
<head>
<title>Primer script con jQuery</title>
<script src="jquery-1.3.2.min.js" type="text/javascript"></script>
<script>
$(document).ready(function(){
$("a").click(function(evento){
alert("Has pulsado el enlace...nAhora serás enviado a DesarrolloWeb.com");
});
});
</script>
</head>
<body>
<a href="http://www.desarrolloweb.com">Ir a DesarrolloWeb.com</a>
</body>
</html>