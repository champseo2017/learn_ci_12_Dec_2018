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
	}
}
