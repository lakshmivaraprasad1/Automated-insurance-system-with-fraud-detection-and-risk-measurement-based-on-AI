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
 <li><a href="clusters.jsp">CLUSTERIN-I</a></li>
       
</h2>

<%
String opt="EE_Clusters";

int total_size=in.App.getMaxOf(" EE_CLUSTER ");
int chunk=total_size/3; 
int cw1=chunk*1;
int cw2=chunk*2;
int cw3=chunk*3;
int cindex=0;
String ClassLabels[]={"LOW-CLUSTER","MODERATE-CLUSTER","HIGH-CLUSTER"};

%>


<%@page import='java.io.*,java.sql.*'%>
<%

try{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","insurance","insurance");
PreparedStatement ps_D=con.prepareStatement("delete from  EE_BATCH");

PreparedStatement ps_I=con.prepareStatement("insert into EE_BATCH(EDUCATION,EMPLOYMENTSTATUS,SCORE,CANDIDATE_LABEL) values(?,?,?,?)");
String qry="select * from EE_Cluster";
Statement st=con.createStatement();	
ResultSet rs =st.executeQuery(qry);
ResultSetMetaData rd=rs.getMetaData();
%>
<h2>2-Itemset : EE_BATCH</h2>
<table id="table-design" bgcolor="#FFFFFF" width="300" border="0" >

<thead>
<td>Slno</td>
<td>VEHICAL_TYPE</td>
<td>VEHICAL_STATUS</td>
<td>SCORE </td>
<td>CLASS_LABEL</td>
</thead>

<tbody> 

<%
ps_D.executeUpdate();
int row=-1;
while(rs.next())
{
row++;
if(row%2==0)
{
%>
<tr class="odd">
<%
}
else 
{
%>
<tr class="even">
<%
}
%>
<td><%=row%></td>
<%
String EDUCATION=rs.getString(1);
String EMPLOYMENTSTATUS=rs.getString(2);
int POSITIVE=rs.getInt(3);
String CLUSTER_LABEL=ClassLabels[0];

if(POSITIVE>=0 && POSITIVE<=cw1)
{
CLUSTER_LABEL=ClassLabels[0];
cindex=0;
}
else if(POSITIVE>=cw1 && POSITIVE<=cw2)
{
CLUSTER_LABEL=ClassLabels[1];
cindex=1;
}
else if(POSITIVE>=cw2)
{
CLUSTER_LABEL=ClassLabels[2];
cindex=2;
}
else 
{
CLUSTER_LABEL="Unknown";
cindex=-1;
}


ps_I.setString(1,EDUCATION);
ps_I.setString(2,EMPLOYMENTSTATUS);
ps_I.setInt(3,POSITIVE);
ps_I.setString(4,CLUSTER_LABEL);
ps_I.executeUpdate();

%>


<td><%=EDUCATION%></td>
<td><%=EMPLOYMENTSTATUS%></td>
<td><%=POSITIVE%></td>
<td><%=CLUSTER_LABEL%></td>

</tr>
<%
}
%>

</tbody> 
</table>




<%
}catch(Exception ex){out.println(ex.toString());}
%>


          
        
      </div>
      </div>
<%--
         <div class="sidebar">
        
        <div class="gadget" align="justify">
          <h2 class="star"><span>Clustering of Customers</span></h2>

          <ul class="sb_menu">
<li></li>
<hr>
<li>
Clutering of customers based on their Consumtion Behavior
<Ul>

	<li>
<a href='sax.jsp'><font size=3>Data Pre-Processing [ Show Slots ]</font></a></li>

	<li>
<a href='sax1.jsp'><font size=3>SAX - Aggregation</font></a></li>

<li>
<a href='sax2.jsp'><font size=3>SAX - Dimension Reduction
</font></a></li>
<li>
<a href='clusters.jsp'><font size=3>CFSFDP - Eval Clusters </font></a></li>
<a href='clustersresults.jsp'><font size=3>CFSFDP - Results </font></a></li>


<hr>
</Ul>

<li>
            
          </ul>
        </div>
      <div class="gadget">
          
          <ul class="ex_menu">
           <!-- <img width="250" height="250" src="web1.jpg">-->
            
          </ul>
        </div>
--%>
      </div>
      <div class="clr"></div>
    </div>
  </div>


  
      
      
</div>
</body>
</html>

