<?php 
 
class Peminjam extends CI_Controller{
 
	function __construct(){
		parent::__construct();
	
	if($this->session->userdata('status') != "login"){
			redirect(base_url("login"));
		}
	}
 
	function index(){
		$this->load->view('v_header');
		$this->load->view('v_peminjam');
		$this->load->view('v_footer');
	}
}