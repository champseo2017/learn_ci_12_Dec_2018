<?php if(! defined ('BASEPATH')) exit('No direct script access allowed');
class User_account_model extends CI_Model {

    // private $table = "user";
    // private $_data = array();
    function __construct() 
    {
        parent::__construct();
    }

    public function select_user($u_name, $u_pass)
    {
        $sql = $this->db->where('user_name', $u_name)
                                ->where('user_pass', $u_pass)
                                ->get('tbl_user');
        return $sql;
    }
}