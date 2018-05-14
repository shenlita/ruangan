<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller{
 
	function __construct(){
		parent::__construct();		
		$this->load->model('m_login');
	}
	function index(){

        
        $this->load->view('v_login');
		
	}
	function aksi_login(){
		$username = $this->input->post('username');
		$password = $this->input->post('password');
		$where = array(
			'nama' => $username,
			'password' => $password
			);
		$cek = $this->m_login->cek_login("user",$where)->num_rows();
		$cek_jabatan = $this->m_login->cek_login("user",$where);
		if($cek > 0){
 			$data=$cek_jabatan->row_array();
 			if($data['jabatan']=='admin'){ //Akses admin
                    $this->session->set_userdata('status','login');                    
                    $this->session->set_userdata('nama','admin');
                    redirect('user/admin');
 
            }else if($data['jabatan']=='peminjam'){      
            	$this->session->set_userdata('status','login'); 
                    $this->session->set_userdata('nama','peminjam');
                    redirect('user/peminjam');
            }
            else if($data['jabatan']=='bap'){ 
            	$this->session->set_userdata('status','login'); 
                    $this->session->set_userdata('nama','BAP');
                    redirect('user/bap');
            }
            else if($data['jabatan']=='kaprodi'){ 
            	$this->session->set_userdata('status','login'); 
                    $this->session->set_userdata('nama','Kaprodi');
                    redirect('user/kaprodi');
            }
            else if($data['jabatan']=='umum'){ 
            	$this->session->set_userdata('status','login'); 
                    $this->session->set_userdata('nama','umum');
                    redirect('user/umum');
            }
            else if($data['jabatan']=='rektor'){ 
            	$this->session->set_userdata('status','login'); 
                    $this->session->set_userdata('nama','Rektor');
                    redirect('user/rektor');
            }
            else if($data['jabatan']=='satpam'){ 
            	$this->session->set_userdata('status','login'); 
                    $this->session->set_userdata('nama','Satpam');
                    redirect('user/satpam');
            }

		}else{
			echo "Username dan password salah !";
		}
	}
 
	function logout(){
		$this->session->sess_destroy();
		redirect(base_url('login'));
	}
}