<?php 
defined('BASEPATH') OR exit('No direct script access allowed');
class Product_model extends CI_Model {
    function __construct() {
        parent::__construct();
    }
    public function getFeautureProduct($type_id, $limit)
    {
        $this->db->where('product_type',$type_id);
        $this->db->limit($limit);
        $res = $this->db->get('product');
        // echo $this->db->last_query(); exit(); //ดักเพื่อดู SQL ที่มันทำงาน ว่าตรงกับที่คิดหรือเปล่า
        return $res->result_array();
    }

    public function productDetails($pid)
    {
        $this->db->where('product_id', $pid);
        $res = $this->db->get('product');
        return $res->row_array(); //ข้อมูลเดียว
    }
}