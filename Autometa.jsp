<%@page import='java.io.*,ProductRecomendation.*,java.util.*'%>
<%
String b=request.getParameter("B1");
String ProductId=request.getParameter("t1");

if(b==null)
{
String filepath=".\\";
/*File ff=new File(filepath+"dummy.txt");ff.createNewFile();
out.print(ff.getAbsoluteFile().getAbsolutePath());
*/
out.println("<font color=Green><hR>");
out.println("<BR>Loading Positive Dictionary......");
out.println("<hR>");
PositiveWords.loadPositiveWords(filepath+"positive-words.txt",out);
out.println("<font color=red><hR>");
out.println("<BR>Loading Nagative Dictionary......");
out.println("<hR>");
NagativeWords.loadNagativeWords(filepath+"negative-words.txt",out);
out.println("<hR>");
out.println("<hR><h1>Sentiment Analysis</h1>");
out.println("<hr>");
out.println("<br><h2>Loading Product Reviews from AmaZon DataSet...</h2>");
out.println("<hR>");
ReviewData.out=out;
LoadDataSet.loadDataSet(filepath+"AmazonProductReviews.txt",out);
        out.println("<hR><h2>Total Positive Reviews : "+ReviewData.rdp.size());
        out.println("<BR>Total Nagative Reviews : "+ReviewData.rdn.size());
out.println("<hr>Enter Product Id for which you need the Recomendation :<form action=Autometa.jsp method=get>");
out.println("<br><input type=text name=t1><input name=B1 type=submit value=Find></form>");

}
else if(ProductId==null)
{
   Set<String> keys=ReviewData.rds.keySet();
   out.println("<table><tr>");
int c=0;
   for(String i:keys)
   {c++;
   out.println("<td>"+i+"</td>"); 
    if(c%10==0)
  out.println("</tr><tr>");
 }
out.println("</tr></table>");


out.println("<hr>Enter Product  for which you need the Recomendation :<form action=Autometa.jsp method=get>");
out.println("<br><input type=text name=t1><input name=B1 type=submit value=Find></form>");

}
else

{ 

 
        
        ReviewData.findByProductID(ProductId.trim());
        
        //Restaurant r=ReviewData.getRecomendation(Longitude,Latitude);
       int px=ReviewData.plist.size();
       int py=ReviewData.nlist.size();
       int rxy=px+py;
       float CSRPS=(px*100)/rxy;
       float CSRNS=(py*100)/rxy;
       
       if(rxy==0)
           out.println("<BR><h2><font color=red>Check the Product ID, "+ProductId+" is Not found in the DataSet</font>");
       else 
       {
        out.println("<BR><font color=blue>Positive Reviews on : "+ProductId+" :"+ReviewData.plist.size()+"</font>");
        out.println("<BR><font color=red>Nagative Reviews on "+ProductId+" :"+ReviewData.nlist.size()+"</font>");
       if(CSRNS>CSRPS)
       out.println("<h1><font color=red>"+ProductId+" is not Recomendable , Has more Nagative Reviews ("+py+"/"+rxy+" CSRNS="+CSRNS+")</font></h1>");
       else
              out.println("<h1><Font color=blue>"+ProductId+" is Recomendable , Has more Positive Reviews ("+px+"/"+rxy+" CSRPS="+CSRPS+")</font></h1>");

   Set<String> keys=ReviewData.rds.keySet();
   out.println("<table><tr>");
int c=0;
   for(String i:keys)
   {c++;
   out.println("<td>"+i+"</td>"); 
    if(c%10==0)
  out.println("</tr><tr>");
 }
out.println("</tr></table>");


out.println("<hr>Enter Product  for which you need the Recomendation :<form action=Autometa.jsp method=get>");
out.println("<br><input type=text name=t1><input name=B1 type=submit value=Find></form>");

}
    }
    %>