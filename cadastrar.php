<html>
<body>
<?php
require('verifica.php');

if($_SESSION["tipo"] != "ADMIN")
	echo "<script>alert('Acesso negado');
	top.location.href='index.php';
	</script>"; 
?>
</body>
</html>
