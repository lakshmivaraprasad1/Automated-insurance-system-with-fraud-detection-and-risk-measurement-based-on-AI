<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!--
Design by http://www.bluewebtemplates.com
Released for free under a Creative Commons Attribution 3.0 License
-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Template</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<!-- CuFon: Enables smooth pretty custom font rendering. 100% SEO friendly. To disable, remove this section -->
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<!-- CuFon ends -->
</head>
<body>
<div class="main">

  <div class="menu_nav">
    <div class="menu_nav_resize">
      <ul>
       <li class="active"><a href="dataset.jsp">DATASET</a></li>
        <li><a href="data1.jsp">TRAINING SET</a></li>
        <li><a href="sax.jsp">PARTITIONING</a></li>
        <li><a href="clusters.jsp">CLUSTERING-I & II</a></li>
       <li><a href="clusters2.jsp">RULESET</a></li>
       <li><a href="a1.jsp">PREDICTION</a></li>
            
</ul>
    </div>
    <div class="clr"></div>
  </div>
  <div class="header">
    <div class="header_resize">
      <div class="logo"><h1>Automated Insurance Systems with Fraud Detection and Risk Measurement based on Artificial Intelligence
</h1></div>
    </div>
  </div>


  <div class="content1">
    <div class="content_resize1">
      <div class="mainbar1">
        <div class="article1">
        <h2>
Predicting the Conversion Probability 
</h2>
<form action=a2.jsp>
<table align="left"><tr><th> STATE </th><th>
<select name="STATE" >
  <option value="Arizona">Arizona</option>
  <option value="Washington">Washington</option>
  <option value="Nevada">Nevada</option>
  <option value="Oregon">Oregon</option>
  <option value="California">California</option>
</select></th> 
<tr><th>EXPIRED </th><th><input type="radio" name="EXPIRED" value="NO" checked> NO &nbsp;
	<input type="radio" name="EXPIRED" value="YES"> YES</th>

<tr><th> COVERAGE </th> <th><select name="COVERAGE">
  <option value="Basic">Basic</option>
  <option value="Extended">Extended</option>
  <option value="Premium">Premium</option>
</select></th>
  
<tr><th> OWNERSHIP_STATUS </th><th><select name="OWNERSHIP_STATUS">
  <option value="Single">Single</option>
  <option value="Joint">Joint</option>
  <option value="Mortgage">Mortgage</option>
 
</select></th>


<tr><th> VEHICAL type </th><th><select name="VEHICAL_type">

  
  <option value="Mini-SUV">Mini-SUV</option>
  <option value="Premier">Premier</option>
  <option value="Sadan">Sadan</option>
  <option value="SVU">SVU</option>
  
</select></th> 

<tr><th> POLICY </th><th><select name="POLICY">
  
  <option value="Personal L1">Personal L1</option>
  <option value="Personal L3">Personal L3</option>
  <option value="Personal L2">Personal L2</option>
  <option value="Corporate L1">Corporate L1</option>
  <option value="Corporate L2">Corporate L2</option>
  <option value="Corporate L3">Corporate L3</option>
  
</select></th> 

<tr><th> LOCATION </th><th><select  name="LOCATION">
  <option value="Suburban">SubUrban</option>
  <option value="Urban">Urban</option>
  <option value="Rural">Rural</option>
</select></th>

<tr><th>  VEVICAL STATUS </th><th><select  name="VEVICAL_STATUS">

  <option value="Transport">Transport</option>
  <option value="Private">Private</option>
  <option value="Medical">Medical</option>
  <option value="Corporate">Corporate</option>
  <option value="Commercial">Commercial</option>
</select></th>
</tr>
<tr><th>TOTAL_CLAIM_AMOUNT</th><th><input type="text" name="TOTAL_CLAIM_AMOUNT"></th></tr>
<tr><th> <input type=submit value="PREDICT"> </th>
<th> <input type=Reset value="CLEAR"> </th>

</tr>
</table>
</form> 
</body>
</html>

