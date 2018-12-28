<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Login extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->helper('url');
        $this->load->helper('form');
        $this->load->library('session');
        $this->load->library('form_validation');

    }
    public function index ()
    {
        $this->load->view('header/header');
        $this->load->view('login');
        $this->load->view('footer/footer');
    }

}