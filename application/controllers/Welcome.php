<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function index()
	{
		$this->load->view('welcome_message');
		echo '<a href="/Products/getquery_result_array">Query result array</a><br/>';
		echo '<a href="/Products/getquery_result">Query result</a><br/>';
		echo '<a href="/Products/getquery_result_row_session">Query result row session</a><br/>';
		echo '<a href="/Products/getquery_result_row">Query result row</a><br/>';
		echo '<a href="/Examform/">Take the test.</a><br/>';
		echo '<a href="/Products/insert_db">insert db v1 .</a><br/>';
		echo '<a href="/Products/update_db">update db v1 .</a><br/>';
		echo '<a href="/Products/delete_db">delete db v1 .</a><br/>';
		echo '<a href="/Products/transv1">Transaction v1 .</a><br/>';
		echo '<a href="/Products/trans_manual">trans_manual v2 .</a><br/>';
		echo '<a href="/Products/query_bindingv1">query_bindingv1 v1 .</a><br/>';
		echo '<a href="/Products/active_record_v1">active_record_v1 .</a><br/>';
		echo '<a href="/Products/active_record_get_limit">active_record_get .</a><br/>';
		echo '<a href="/Products/active_record_get_where">active_record_get_where .</a><br/>';
		echo '<a href="/Products/position_function">position_function .</a><br/>';
		echo '<a href="/Products/increment/1">increment .</a><br/>';
		echo '<a href="/Products/clu_microtime">clu_microtime .</a><br/>';
		echo '<a href="/Products/pass_date">pass_date .</a><br/>';
		echo '<a href="/Products/script_in_controller">script_in_controller .</a><br/>';
	}
}
