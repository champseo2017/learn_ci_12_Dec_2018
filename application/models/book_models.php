<?php if (! defined('BASEPATH')) exit ('No direct script access allowed');
class Book_models extends CI_Model {
    function __construct() {
        parent::__construct();
    }
    function _getUsers()
    {
        $result = $this->db->order_by("id", "asc");
        $result = $this->db->get('products');
        return $result->result_array();
    }
    function _select_update($id_book)
    {
        $result_select_book = $this->db->select('*')
        ->where('id', $id_book)
        ->get('products')
        ->result_array();
        return array(
            'select_book' => $result_select_book
        );
    }
    function _update_books ($id,$code,$name,$price)
    {
        $data = array(
            'code' => $code,
            'name' => $name,
            'price' => $price,
         );

        $result = $this->db->where('id', $id)
                         ->update('products', $data);
        return $result;
    }
    function _delete_book ($id_book)
    {
        $delete = $this->db->where('id', $id_book)
                  ->delete('products'); 
        return $delete;
    }
}