<?php 
defined('BASEPATH') OR exit('No direct script access allowed');
class Webboard_models extends CI_Model {
    function __construct() {
        parent::__construct();
    }

    public function select_question()
    {
        $query = $this->db->get('question')
                          ->num_rows();
        return $query;
    }

    public function insert_question($itemno, $topic, $detail, $name)
    {
        $data = array(

            'qno' => $itemno,
            'qtopic' => $topic,
            'qdetail' => $detail,
            'qname' => $name,
            'qcount' => 0
        );

        $insert = $this->db->insert('question', $data);
        return $insert;
    }
}