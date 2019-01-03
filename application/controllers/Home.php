<?php 
defined('BASEPATH') OR exit('No direct script access allowed');
class Home extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
    }
    public function index()
    {
        $this->load->model('Product_model', 'product');
        $FeaturePro_01 = $this->product->getFeautureProduct(1);
        $FeaturePro_02 = $this->product->getFeautureProduct(2);
        $FeaturePro_03 = $this->product->getFeautureProduct(3);
        // echo "<pre>";
        // print_r($FeaturePro); exit();
        // echo "</pre>";
        $send_data = array(
            'FeaturePro_1' => $FeaturePro_01,
            'FeaturePro_2' => $FeaturePro_02,
            'FeaturePro_3' => $FeaturePro_03
        );
        $this->load->view('header/header');
        $this->load->view('home/home',$send_data);
        $this->load->view('footer/footer');
    }
}