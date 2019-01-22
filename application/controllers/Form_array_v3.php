<?php if(! defined('BASEPATH')) exit ('No direct script access allowed');
class Form_array_v3 extends CI_Controller
{
     
    function __construct()
    {
        parent::__construct();
        $this->load->helper('url');
        $this->load->helper('form');
        $this->load->library('session');
        $this->load->library('form_validation');
    }
    
    
    public function registerForm()
    {
       $this->load->view('reg_oldvalue_v1');
    }
    public function save()
    {
        $this->form_validation->set_rules('name', 'Name Field', 'required');
        $this->form_validation->set_rules('age', 'Age Field', 'required|integer');
        $this->form_validation->set_rules('accept_terms_checkbox', 'Name Field', 'required',array('required' => 'กรุณา Check box'));
       
       
      
   
        if($this->form_validation->run() == FALSE){
       
            $this->load->view('reg_oldvalue_v1');

        }else{
           if($_POST){

                $accept_terms_checkbox = $_POST['accept_terms_checkbox'];
                var_dump($accept_terms_checkbox);

           }
           
           
           
            // $result = $this->db->insert('tbl', $data_to_be_save);
            // if($result){
            //     echo "save";

            // }else{
            //     echo "no save";
            // }
        }

    }
   
}