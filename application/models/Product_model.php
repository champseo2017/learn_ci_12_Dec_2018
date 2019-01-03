<?php 
defined('BASEPATH') OR exit('No direct script access allowed');
class Product_model extends CI_Model {
    function __construct() {
        parent::__construct();
    }
    public function getFeautureProduct($type_id)
    {
        $this->db->where('product_type',$type_id);
        $res = $this->db->get('product');
        $this->db->limit(8);
        return $res->result_array();
    }
}