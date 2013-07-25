<?php
	include "config.php"; 
	$report_no=$_REQUEST['r_no'];
	$query="select * from gemsireport where reportno=$report_no";
	$result=mysql_query($query,$conn);
	while($res=mysql_fetch_array($result))
	{
		$carat=$res[4];
		$color=$res[5];
		$cust_name=$res[3];
		$cut=$res[6];
		$clarity=$res[7];				
		$ri=$res[8];
		$sg=$res[9];				
		$hardness=$res[10];
		$transparancy=$res[11];				
		$mining=$res[12];		
		$luster=$res[13];
		$inclusion=$res[15];
		$comment=$res[16];		
		$logo=$res[1];
		$gems=$res[2];									
	}
?>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title></title>
<link rel="stylesheet" type="text/css" href="./css/style.css" />
</head>

<body>
  <div class="container">
  <div class="header">
  <div class="logo">
  <img src="./images/logo.png" />
  </div>
  <div class="heading">
  	<h3><font color="#CC0000" size="+2">N</font>AVRATNA <font color="#CC0000" size="+2">G</font>EMOLOGICAL <font color="#CC0000" size="+2">L</font>ABORATORY &#0153;</h3>
	<div class="cer">CERTIFICATION OF GEMSTONES & DIAMONDS GRADING LABOROTARY</div>
	<div class="iso1"> AN ISO 9001-2008 CERTIFIED LAB</div>
	<div class="trade">A LAB TRADE MARK UNDER GOVERNMENT OF INDIA(REGISTRY DEPARTMENT)</div>
	<div class="iso">1st GEMOLOGICAL LAB IN NORTH MAHARASTRA</div>
  </div>
  </div>
  
  <div class="content">
  	<h3>GEMS IDENTIFICATION REPORT</h3>
	<table class="data">
	<tr class="repno"><td>REPORT NO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><?php echo "$report_no"; ?></td></tr>  
    <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><?php echo "$cust_name"; ?> </td></tr>
	<tr><td>CARAT&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><?php echo "$carat"; ?> </td></tr>
	<tr><td>COLOR&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><?php echo "$color"; ?></td></tr>
	<tr><td>CUT&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><?php echo "$cut"; ?></td></tr>
	<tr><td>CLARITY(GRADE)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><?php echo "$clarity"; ?></td></tr>
	<tr><td>REFRACTIVE INDEX(R.I)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><?php echo "$ri("; ?></td></tr>
	<tr><td>SPECIFIC GRAVITY(S.G)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><?php echo "$sg"; ?></td></tr>
	<tr><td>HARDNESS(H)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><?php echo "$hardness"; ?></td></tr>
	<tr><td>TRANSPARANCY&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><?php echo "$transparancy"; ?></td></tr>
	<tr><td>MINING&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><?php echo "$mining"; ?></td></tr>
	<tr><td>LUSTER</td><td><?php echo "$luster"; ?></td></tr>
	<tr><td>INCLUSION</td><td><?php echo "$inclusion"; ?></td></tr>
	<tr><td>COMMENTS</td><td><?php echo "$comment"; ?></td></tr>
	</table>
	
  <div class="customer">
  <div class="custlogo">
	<img src="<?php echo"$logo";?>" />
    
  </div>
  <div class="custitem">
	<img src="<?php echo"$gems";?>" />
	<p>CHIFF GEMOLOGIST&nbsp;(N.G.L)</p>
  </div>
  </div>
  </div><!--end of content-->
  <div class="footer">
  <div class="foot">IDENTIFICATION:-<font color="#CC0000" > ****NATURAL YELLO SAPPHIRE(PUKHRAJ)****</font></div>
  </div> 
</div>

<!--back side-->
<br><br><br>
<div class="container">
  <div class="rules">
  <ol>
  <li>All the result of the report prepared by gemologist of Navratna Gemological Laboratory to the best of their knowledge.</li>
  </li>
  <li>No futher modifications & changes of report by client request.</li>
  <li>All the results & Calculations of the report are depends upon accuracy of instruments it may be varying with techniques of grmologist & instruments.</li>
  <li>The Liability of  Navratna gemological laboratory as regards to any claim for any damage to the article(s) directly or indirectly by the client/owner of the article(s) shall be limited to the amount received as fees in connection to the report</li>
  <li>All Maters Disputes or references to arbitration arising out of this report to the jurisdiction Nashik.<br />The report shall be bound by the Indian judicial systems.</li>
  
  <li>This report is neither an appraisal nor any guarantee/warranty of the article(s) referred to in this report.</li>
  <li>Any Doubt or mistake of this report please shows report & clear doubts.</li>
  <li>Collect your stone at that time when report collect...It's your responsibility.</li>
  </ol>
  </div>
   <div class="heading">
  	<h3><font color="#CC0000" size="+2">N</font>AVRATNA <font color="#CC0000" size="+2">G</font>EMOLOGICAL <font color="#CC0000" size="+2">L</font>ABORATORY &#0153;</h3>
    <div class="add">1<sup>st</sup> Floor,Alankar Market,Opp.Okachit talim,Jijamata road,Saraf Bazaar,Nasik-422001</div>
    <div class="add">MOB-09923051515,09823654220,9545901515 RES-0253-2506515</div>
    <div class="add">E-mail:-<a href="#">bhavehgems@gmail.com,bsvispute@gmail.com</a></div>
    <div class="add">POST YOUR COMMENTS ON <a href="#">WWW.FACEBOOK.COM/BHAVESH.VISPUTE</a></div>
    <div class="email"><font color="#003399" size="+1">www.gemslab.in</font></div>
    </div>
</div>
</body>
</html>

<?php 
	$htmlcontent=ob_get_clean();

	include("dompdf/dompdf_config.inc.php");
	$files = glob("./dompdf/include/*.php");
	/*foreach($files as $file) include_once($file);*/

  	$htmlcontent = stripslashes($htmlcontent);
  	$dompdf = new DOMPDF();
  	/*$dompdf->load_html($html);*/
  	$dompdf->load_html($htmlcontent);
  	$dompdf->set_paper("folio", "portrait");
  	$dompdf->render();
 	$dompdf->stream($filename, array("Attachment" => false));
	$output = $dompdf->output();
    file_put_contents('./pdf_files/'.$report_no.''.$cust_name.'.pdf', $output);
  	exit(0);
?>