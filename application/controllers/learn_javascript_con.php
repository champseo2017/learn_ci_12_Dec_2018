<?php if(! defined('BASEPATH')) exit ('No direct script access allowed');
class Learn_javascript_con extends CI_Controller {
    function __construct()
    {
        parent::__construct();
        $this->load->model('Book_models', 'book');
        $this->load->helper('url');
        $this->load->helper('form');
        $this->load->library('session');
        $this->load->library('form_validation');
    }
    public function index ()
    {
        
        $this->load->view('learn_javascript');
    }

    public function html_v1()
    {
        echo $this->input->get('Vol');
        echo '<p>ggwp</p>';
    }
}