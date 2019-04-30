<?php

public function print_order($order_id)
	{
		$order_info=$this->admin_model->order_view($order_id);
		$name=$order_info->user_name ;
		$phone=$order_info->user_phone ;
		$address=$order_info->user_address ;
		$data=date('d-m-y');

$this->load->library('Report');
$this->fpdf->SetFont('Arial','B',14);
$this->fpdf->Cell(130 ,5,'Sera Bazar',0,0);
$this->fpdf->Cell(59 ,5,'INVOICE',0,1);//end of line

//set font to arial, regular, 12pt
$this->fpdf->SetFont('Arial','',12);

$this->fpdf->Cell(130 ,5,'Mirpur,Dhaka-1216',0,0);
$this->fpdf->Cell(59 ,5,'',0,1);//end of line

$this->fpdf->Cell(130 ,5,'Email : kousar.cse2334@gmail.com',0,0);
$this->fpdf->Cell(25 ,5,'Date',0,0);
 $this->fpdf->Cell(34 ,5,"{$data}",0,1);//end of line

 $this->fpdf->Cell(130 ,5,'Phone : 01773340092',0,0);
 $this->fpdf->Cell(25 ,5,'Invoice #',0,0);
$this->fpdf->Cell(34 ,5,"[SB-{$order_info->order_id}]",0,1);//end of line

$this->fpdf->Cell(130 ,5,'www.sera-bazar.com',0,0);

$this->fpdf->Cell(189 ,10,'',0,1);//end of line

// //billing address
$this->fpdf->Cell(100 ,5,'Bill to',0,1);//end of line

// //add dummy cell at beginning of each line for indentation
$this->fpdf->Cell(10 ,5,'',0,0);
$this->fpdf->Cell(90 ,5,"Name :{$name}",0,1);

$this->fpdf->Cell(10 ,5,'',0,0);
$this->fpdf->Cell(90 ,5,"Mobile :0{$phone}",0,1);

$this->fpdf->Cell(10 ,5,'',0,0);
$this->fpdf->Cell(90 ,5,"Address :{$address}",0,1);

$this->fpdf->Cell(189 ,10,'',0,1);//end of line

//invoice contents
$this->fpdf->SetFont('Arial','B',12);

$this->fpdf->Cell(80 ,5,'Description',1,0);
$this->fpdf->Cell(35 ,5,'Price',1,0);
$this->fpdf->Cell(25 ,5,'Qty',1,0);
 $this->fpdf->Cell(35 ,5,'Subtotal',1,1);//end of line

 $this->fpdf->SetFont('Arial','',12);


 $name=$order_info->product_name;
 $pro_name=explode(',',$name);
 foreach ($pro_name as $key => $value) {
 	$this->fpdf->Cell(80 ,5,"{$value}",1,0);
 	//$this->fpdf->Ln();
 }

 $name=$order_info->product_price;
 $pro_name=explode(',',$name);
 foreach ($pro_name as $key => $value) {
 	$this->fpdf->Cell(35 ,5,"{$value}",1,0);
 	//$this->fpdf->Ln();
 }
 $name=$order_info->product_qty;
 $pro_name=explode(',',$name);
 foreach ($pro_name as $key => $value) {
 	$this->fpdf->Cell(25 ,5,"{$value}",1,0);
 	//$this->fpdf->Ln();
 }
 $name=$order_info->product_subtotal;
 $pro_name=explode(',',$name);
 foreach ($pro_name as $key => $value) {
 	$this->fpdf->Cell(35 ,5,"{$value}",1,1,'R');
 	//$this->fpdf->Ln();
 }
 $total=$order_info->grand_total;
 $this->fpdf->SetFont('Arial','B',12);
 $this->fpdf->Cell(140 ,5,'Total',1,0,'R');
 $this->fpdf->SetFont('Arial','',12);
 $this->fpdf->Cell(35 ,5,"{$total}",1,1,'R');

 $this->fpdf->SetFont('Arial','B',12);
 $this->fpdf->Cell(140 ,5,'Shipping Cost',1,0,'R');
 $this->fpdf->SetFont('Arial','',12);
 $this->fpdf->Cell(35 ,5,'50',1,1,'R');

 $total=$order_info->grand_total;
 $this->fpdf->SetFont('Arial','B',12);
 $this->fpdf->Cell(140 ,5,'Grand Total',1,0,'R');
 $this->fpdf->SetFont('Arial','',12);
 $this->fpdf->Cell(35 ,5,"{$total}",1,1,'R');

 $this->fpdf->SetFont('Arial','B',12);
 $this->fpdf->Cell(140 ,5,'Paid',1,0,'R');
 $this->fpdf->SetFont('Arial','',12);
 $this->fpdf->Cell(35 ,5,'0',1,1,'R');

 $total=$order_info->grand_total;
 $this->fpdf->SetFont('Arial','B',12);
 $this->fpdf->Cell(140 ,5,'Total Due',1,0,'R');
 $this->fpdf->SetFont('Arial','',12);
 $this->fpdf->Cell(35 ,5,"{$total}",1,1,'R');


 echo $this->fpdf->output('mypdf.pdf','D');
 $this->admin_model->update_order_status($order_id);
}