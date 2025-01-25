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
  <%@page import='java.sql.*,java.util.*,Beans.*,pack.*' %>
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
<%
String opt="App";
%>
<%=opt%> Data</h2><br>
<%!
public static void updateBCSig() 
{
	try{
    Class.forName("oracle.jdbc.driver.OracleDriver"); 
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","insurance","insurance");

                                Statement st = con.createStatement();
                                String query = "select * from app";
		ResultSet rs = st.executeQuery(query);
		TreeMap<Integer,Block> blockchain=new TreeMap<Integer,Block>();
		


int i=0;
String p="000000";
while (rs.next()) {
String id=rs.getString(1);
String  a=rs.getString(2);
String  bb=rs.getString(3);
String  c=rs.getString(4);
String  d=rs.getString(5);
String e=rs.getString(6);
String data = id+":"+a+":"+bb+":"+c+":"+d+":"+e;
String sig=data.hashCode()+"";
		Block b=new Block(id,data,p);
		b.setData(data);
		blockchain.put(i,b);
		i++;
                                    }
Block fb=blockchain.get(0);
Block lb=blockchain.get(blockchain.size()-2);
String lbs=(lb.getData()+lb.getSig()).hashCode()+"";
fb.setSig(lbs);
		

for(i=1;i<blockchain.size();i++)
{
Block pb=blockchain.get(i-1);
Block nb=blockchain.get(i);
String pbs=(pb.getData()+pb.getSig()).hashCode()+"";
nb.setSig(pbs);
blockchain.put(i,nb);
}

st.execute("delete from  BlockChain");

		
		for(int ki:blockchain.keySet())
		{
		Block b=blockchain.get(ki);
    String sql="INSERT INTO BlockChain(id,DataName,bSignature) VALUES('"+b.getId()+"','"+b.getDataName()+"','"+b.getSig()+"')";
    System.out.println(sql);
st.execute(sql);

		}
		}catch(Exception ex){System.out.println("data1 BC:"+ex);}
}

%>

<%
int day=0;
int slot=0;
String slots[]={"12Am-04AM",""};
try{
 updateBCSig();
  Class.forName("oracle.jdbc.driver.OracleDriver"); 

Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","insurance","insurance");

	Statement st = con.createStatement();	

   String qry="select * from "+opt;
		ResultSet rs =st.executeQuery(qry);
		ResultSetMetaData rd=rs.getMetaData();
%>
<table id="table-design" bgcolor="#FFFFFF" width="300" border="0" >

<thead>
 <th>Slno</th>

<%
for(int i=1;i<=rd.getColumnCount();i++)	
{
%>

 <th><%=rd.getColumnName(i).toUpperCase()%></th>

<%
}
%>
 </thead>

<tbody> 

<%
int row=0;
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
%><td><%=row%></td><%
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
}catch(Exception ex){out.println(ex.toString());}
%>


          
        
      </div>
      </div>
         <div class="sidebar">
        
        <div class="gadget" align="justify">
          <h2 class="star"><span>SAX</span></h2>

          <ul class="sb_menu">
<li></li>
<hr>
<li>
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

