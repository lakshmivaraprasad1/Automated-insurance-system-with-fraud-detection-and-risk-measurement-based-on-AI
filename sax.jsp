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
<%String opt="APP";%> 
<%@page import='java.io.*,java.sql.*'%>
<%
boolean flag1=false,flag2=false;
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","insurance","insurance");


   String qry="select * from APP order by RESPONSE DESC";
Statement st=con.createStatement();
ResultSet rs =st.executeQuery(qry);
ResultSetMetaData rd=rs.getMetaData();
%>
<h2><font color=red>Class Label : <I>Positive</I> ( <%=in.App.getCountOfAll(" RESPONSE='Yes'")%> / <%=in.App.getCountOfAll()%> )</font></h2>

<table id="table-design" bgcolor="#FFFFFF" width="300" border="0" >

<thead>
 <th>Slno</th>

<%
for(int i=1;i<=rd.getColumnCount();i++)	
{
if(rd.getColumnName(i).toUpperCase().equals("GENDER"))
{
%>


 <th>SEX</th>

<%

}
else if(rd.getColumnName(i).toUpperCase().equals("LOCATIONCODE"))
{
%>


 <th>LOCATION</th>

<%

}
else if(rd.getColumnName(i).toUpperCase().equals("MONTHLYPREMIUM"))
{
%>


 <th>MONTHLY PREMIUM</th>

<%

}
else if(rd.getColumnName(i).toUpperCase().equals("MARITALSTATUS"))
{
%>


 <th>MARITAL STATUS</th>

<%

}
else if(rd.getColumnName(i).toUpperCase().equals("POLICY"))
{
%>


 <th>POLICYDETAILS</th>

<%

}

else{
%>


 <th><%=rd.getColumnName(i).toUpperCase()%></th>

<%
}
}
%>
 </thead>

<tbody> 

<%

int row=-1;


while(rs.next())
{
row++;



if(rs.getString(4).toUpperCase().equals("NO") && (!flag2))
{flag2=true;
%>

</table>
 <h2><font color=red>Class Label : <I>Nagative</I> ( <%=in.App.getCountOfAll(" RESPONSE='No'")%> / <%=in.App.getCountOfAll()%> )</font></h2>

<table id="table-design" bgcolor="#FFFFFF" width="300" border="0" >

<thead>
 <th>Slno</th>

<%
for(int i=1;i<=rd.getColumnCount();i++)	
{
if(rd.getColumnName(i).toUpperCase().equals("GENDER"))
{
%>


 <th>SEX</th>

<%

}
else if(rd.getColumnName(i).toUpperCase().equals("LOCATIONCODE"))
{
%>


 <th>LOCATION</th>

<%

}
else if(rd.getColumnName(i).toUpperCase().equals("MONTHLYPREMIUM"))
{
%>


 <th>MONTHLY PREMIUM</th>

<%

}
else if(rd.getColumnName(i).toUpperCase().equals("MARITALSTATUS"))
{
%>


 <th>MARITAL STATUS</th>

<%

}
else if(rd.getColumnName(i).toUpperCase().equals("POLICY"))
{
%>


 <th>POLICYDETAILS</th>

<%

}

else{
%>


 <th><%=rd.getColumnName(i).toUpperCase()%></th>

<%
}
}
%>
 </thead>

<tbody> 

<%



}


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
<td><%=row%></td><%
for(int i=1;i<=rd.getColumnCount();i++)	
{
%>

<td><%=rs.getString(i)%></td>

<%
}
%>


</tr>

<%
}
%>



</tbody> 
</table>
<%
con.close();
}catch(Exception ex){out.println(ex.toString());}
%>


          
        
      </div>
      </div>
         <div class="sidebar">
        
        <div class="gadget" align="justify">
          <h2 class="star"><span>Clustering of Polices</span></h2>

          <ul class="sb_menu">
<li></li>
<hr>

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
      </div>
      <div class="clr"></div>
    </div>
  </div>


  
      
      
</div>
</body>
</html>

