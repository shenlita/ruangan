<!DOCTYPE html>
<html>
<head>
	<title>Persetujuan</title>
</head>
<body>
	<h1>Login berhasil !</h1>
	<h2>Hai, <?php echo $this->session->userdata("nama"); ?></h2>
	<h2>INI halaman BAP, KAPRODI, UMUM </h2>
	<a href="<?php echo base_url('login/logout'); ?>">Logout</a>
</body>
</html>