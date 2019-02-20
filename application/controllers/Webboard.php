<?php 
defined('BASEPATH') OR exit('No direct script access allowed');
class Webboard extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->helper('url');
        $this->load->helper('form');
        $this->load->library('session');
        $this->load->library('form_validation');
        $this->load->model('Webboard_models', 'webboard');
    }

    public function index()
    {
        echo "<h2> Web Board </h2><br>";
        echo form_open('Webboard/insert_question',array('name'=>'form1'));
        echo "หัวข้อกระทู้ : ";
        echo "<input type='text' name='topic'><p>";
        echo "รายละเอียด : ";
        echo "<textarea name='detail' cols='75' rows='10'></textarea><p>";
        echo "ชื่อผู้ตั้งกระทู้ : ";
        echo "<input type='text' name='name'><p>";
        echo "<input type='submit' name='Submit' value='ส่งกระทู้'>";
        echo "<input type='reset' name='Submit2' value='ยกเลิก'>";
        echo form_close();

    }

    public function insert_question()
    {
        if($_POST['topic'] != '')
        {
            echo "<p>Welcome</p>";
            
        }else{
            echo "<p>No input</p>";
        }
    }
}