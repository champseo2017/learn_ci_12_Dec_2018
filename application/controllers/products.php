<?php 
defined('BASEPATH') OR exit('No direct script access allowed');
class Products extends CI_Controller {
    function __construct(){
            parent::__construct(); //ต้องมีกำกับไว้ถ้าเรียกใช้งานฟังก์ชั่น construct
            $this->load->library('session');
    }
    public function index()
    {
        echo "Welcome query result";
    }
    function getquery_result_array(){
        $sql = 'select * from products';
        $query = $this->db->query($sql)->result_array();// ->result (คืนค่ามาเป็น object การเข้าถึงข้อมูล -> object) | ->result_array() คืนค่ามาเป็นรูปแบบ array การเข้าถึง $row['key']
        echo '<table width="100%" border="1"><tr><td>รหัส</td><td>ชื่อหนังสือ</td><td>ราคา</td></tr>';
        foreach($query as $row)
        {
            echo '<tr><td>'.$row['code'].'</td><td>'.$row['name'].'</td><td>'.$row['price'].'</td></tr>';
        }
        echo '<button onclick="history.go(-1);">Back </button>';
    }
    function getquery_result(){
        $sql = 'select * from products';
        $query = $this->db->query($sql)->result();// ->result (คืนค่ามาเป็น object การเข้าถึงข้อมูล -> object) | ->result_array() คืนค่ามาเป็นรูปแบบ array การเข้าถึง $row['key']
        echo '<table width="100%" border="1"><tr><td>รหัส</td><td>ชื่อหนังสือ</td><td>ราคา</td></tr>';
        foreach($query as $row)
        {
            echo '<tr><td>'.$row->code.'</td><td>'.$row->name.'</td><td>'.$row->price.'</td></tr>';
        }
        echo '<button onclick="history.go(-1);">Back </button>';
    }
    function getquery_result_row_session(){
        $sql = 'select * from products';
        $query = $this->db->query($sql)->row('code');// ->row(10) กำหนดการ query recode
        $newdata = array(
            'code'  => $query,
        );
        $this->session->set_userdata($newdata);
        $get_session = $this->session->userdata('code');
        // $this->session->unset_userdata('code');
        echo $get_session.' code <br/>';
    }
    function getquery_result_row(){
        $sql = 'select * from products';
        $query = $this->db->query($sql);// ->row(10) กำหนดการ query recode
        $row = $query->row();
        echo '<table width="100%" border="1"><tr><td>รหัส</td><td>ชื่อหนังสือ</td><td>ราคา</td></tr>';
        if (isset($row))
        {
            echo '<tr><td>'.$row->code.'</td><td>'.$row->name.'</td><td>'.$row->price.'</td></tr>';
        }
        echo '<button onclick="history.go(-1);">Back </button>';
    }
}