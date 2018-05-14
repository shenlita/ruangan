<!DOCTYPE html>
<html>
<head>
	<title>Tanya Rektor Coba</title>
</head>
<body>
	<h1>Login berhasil !</h1>
	<h2>Hai, <?php echo $this->session->userdata("nama"); ?></h2>
	<h2>INI halaman Rektor? Tanya Rektor Coba!! </h2>
	<a href="<?php echo base_url('login/logout'); ?>">Logout</a>
</body>
</html>