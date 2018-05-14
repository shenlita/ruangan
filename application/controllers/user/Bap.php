<?php 
 
class Bap extends CI_Controller{
 
	function __construct(){
		parent::__construct();
	
	if($this->session->userdata('status') != "login"){
			redirect(base_url("login"));
		}
	}
 
	function index(){
		$this->load->view('v_header');
		$this->load->view('v_approve');
		$this->load->view('v_footer');
	}
}