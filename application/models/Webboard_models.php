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

    public function show_question_all ()
    {
        $query = $this->db->select('*')
                            ->order_by('qno', 'DESC')
                            ->get('question')
                            ->result_array();
        return $query;
    }

    public function select_question_qno ($item)
    {

        $query = $this->db->select('*')
                            ->where('qno', $item)
                            ->get('question')
                            ->result_array();
        return $query;
        
    }

    public function select_answerw_item($item)
    {
        $query = $this->db->select('*')
                            ->where('aquestionno', $item)
                            ->get('answer')
                            ->result_array();
        return $query;
    }

}