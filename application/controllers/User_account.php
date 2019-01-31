<?php if(! defined('BASEPATH')) exit ('No direct script access allowed');

class User_account extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->helper('url');
        $this->load->helper('form');
        $this->load->library('session');
        $this->load->library('form_validation');
        $this->load->model('User_account_model', 'user');
    }
    public function index ()
    {
        $this->load->view('user_login');
    }
    public function check_login()
    {
        if(isset($_POST['btn_login'])){ // เมื่อกดปุ่มล็กอิน
            // ตรวจสอบการส่งค่าฟอร์ม ชื่อผู้ใช้และรหัสผ่าน
            if(isset($_POST['u_name']) && $_POST['u_name']!="" && isset($_POST['u_pass']) && $_POST['u_pass']!=""){
               $u_name = $_POST['u_name'];
               $u_pass = $_POST['u_pass'];
               $sql = $this->user->select_user($u_name,$u_pass);
               $num = $sql->num_rows();
                print_r($num);
            }
        }
    }
   
}

# การเข้าถึงข้อมูลในฟิลด์ตารางของ ดาต้าเบส ci
# เมธอด result() เป็นการเตรียมข้อมูลที่ได้จากฟังก์ชั่น query -> mysql
# เมธอด result() เป็นข้อมูลแบบวัตถุ (object) ซึ้งอยู่ในรูปของ array
# เมธอด result_array() ข้อมูลที่ได้จาก เมธอด จะเป็นข้อมูล array 
# เมธอด row() เป็นข้อมูลแบบวัตถุ (object) ซึ้งอยู่ในรูปของ array ( ถ้าอยากให้เมธอด row(10) ดึงข้อมูลออกมาหลายเรคอร์เราสามารถทำได้โดยระบุจำนวนเรคอร์ดเข้าไปในฟังก์ชั่น )
# เมธอด row_array() ข้อมูลที่ได้จะเป็น array แต่จะมีเพียงแค่เรคอร์ดเดียว ( ถ้าอยากให้เมธอด row_array(10) ดึงข้อมูลออกมาหลายเรคอร์เราสามารถทำได้โดยระบุจำนวนเรคอร์ดเข้าไปในฟังก์ชั่น )
# หาจำนวนแถวที่แสดงทั้งหมด num_rows()

