<?php 
defined('BASEPATH') OR exit('No direct script access allowed');
class Html_helper extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
    }

    public function index ()
    {
       $img_properties = array(
            'src' => 'img/mypices.gif',
            'title' => 'My Pictrue',
            'alt' => 'My Image',
            'class' => 'my_pics_class',
            'width' => '125',
            'height' => '125'
       );
       $attr = array('href'=>'css/style.css', 'rel'=>'stylesheet', 'type' => 'text/css');
       
       // ฟังก์ชั่น nbs() เป็นฟังก์ชั่นที่ใช้สร้าง (Entity) &nbsp หรือช่องว่างในเอกสาร html โดยเราสามารถใช้ฟังก์ชั่นนี้ในการ
       // สร้าง &nbsp ได้ทีละหล่ยๆตัว
       // number เป็นตัวเลขสำหรับกำหนดจำนวน &nbsp

       // ฟังก์ชั่น Ol()
       // ol() เป็นฟังก์ชั่นที่ใช้สร้างแท็ก <ol> ซึ้งเป็นแท็กที่ใช้สำหรับสร้างรายการ (Order List) ในเอกสาร Html
       // ol(list_array, attributes_array) list_arry เป็นรายการที่จะแสดงในรายการ List โดยข้อมูลจะต้องอยู๋ในรูปแบบ array
       // attribtes_array เป็นการกำหนดค่าแอตทริบิวต์ (Attirbute) ให้กับ <ol>

       $my_list = array('Bird1', 'Dog1', 'Cat1', 'Cow1', 'Goat1');
       $my_attr = array('id'=>'list_id', 'class'=>'list_class', 'type'=>'A');

       echo ol($my_list, $my_attr);

       // ฟังก์ชั่น ul(list_array, attributes_array)

       $my_list = array('Bird2', 'Dog2', 'Cat2', 'Cow2', 'Goat2');
       $my_attr = array('id'=>'list_id2', 'class'=>'list_class2', 'type'=>'b');

       echo ul($my_list, $my_attr);

       echo nbs(5);
       echo link_tag($attr);
       echo img($img_properties);
    }
}