<?php 
defined('BASEPATH') OR exit('No direct script access allowed');
class Product extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->helper('url');
        $this->load->helper('form');
        $this->load->library('session');
        $this->load->library('form_validation');
        $this->load->model('Product_model', 'product');
    }
    public function productDetails()
    {
        $pid = $this->input->get('pid');
        $prductdeatailsData = $this->product->productDetails($pid);
        $senddata_array = array(
            'proDetails' => $prductdeatailsData
        );
        $this->load->view('header/header');
        $this->load->view('product/product_detail', $senddata_array);
        $this->load->view('footer/footer');
    }
}