package ProductRecomendation;

import java.util.ArrayList;
import java.util.List;
import java.util.TreeMap;
import java.util.TreeSet;
import javax.servlet.jsp.*;
import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;

public class AppData {
public static JspWriter out; 
 public static ArrayList<AppData> plist=new ArrayList<AppData>();
  public static ArrayList<AppData> nlist=new ArrayList<AppData>();
  
  public static void findByAppId(String AppId)throws IOException 
  {
   plist.clear();
   nlist.clear();
  
   out.println("<br>"+"RDP:"+rdp.size()); 
   List<AppData> keys=new ArrayList<AppData>(AppData.rdp.values());
   
   for(int i=0;i<keys.size();i++)
   {
   AppData ri=keys.get(i);
   if(ri.AppId.equalsIgnoreCase(AppId))
   {
       out.println("<br>"+"Found in Positive Cluster:"+ri.AppId+"#"+ri.Id); 
       plist.add(ri);
   }
   }
   for(AppData ri:AppData.rdn.values())
   {
   if(ri.AppId.equalsIgnoreCase(AppId))
   {
   nlist.add(ri);
   out.println("<br>"+"Found in Nagative Cluster:"+ri.AppId+"#"+ri.Id); 
       }
   }
   }
  

  public  static Restaurant getRecomendation(double Longitude, double Latitude)throws IOException 
 {
  double ndist =1000;
Restaurant nr=null;
  try{
  nr=plist.get(0).restaurant;
   for(AppData ri:plist)
   {
   double dist=Math.sqrt(Math.pow(Longitude-ri.restaurant.Longitude,2)+Math.pow(Latitude-ri.restaurant.Latitude,2));
   if(dist<ndist)
   {
   ndist=dist;
   ri.restaurant.dist=dist;
   nr=ri.restaurant;
   }
   }
}catch(Exception e){e.toString();}
  return nr;
  }
public App app;
public String AppId,State,AppLifetimeValue,Response,Coverage,Education,EmploymentStatus,Gender,Income,LocationCode,MaritalStatus,MonthlyPremium,Policy,VehicleClass;
double dist=0;


public String toString()
    {
    return String.format("<table><tr><td>%s-%s-%s-%s-%s-%s-%s-%s-%s</tr><tr><td><font color=blue>App Text:</font>%s<tr><td>P-Score:%s<tr><td>N-Score:%s</tr><tr><td>Cluste Label:%s<td>%s<td>%s</tr><table>", AppId,State,AppLifetimeValue,Response,Coverage,Education,EmploymentStatus,Gender,Income,LocationCode,MaritalStatus,MonthlyPremium,Policy,VehicleClass);
    }

public static void updateOpenion(AppData rd,TreeSet<String> pw,TreeSet<String> nw)throws IOException 
{
rd.pscore=0;
rd.nscore=0;
for(String w:pw)
{
if(rd.Summary.toLowerCase().contains(w.toLowerCase()))
{
rd.pscore++;
}
}
for(String w:nw)
{
if(rd.Summary.toLowerCase().contains(w.toLowerCase()))
{
rd.nscore++;
}
}
if(rd.pscore>=rd.nscore)
    rd.Openion_Status="Positive";
    else
    rd.Openion_Status="Nagative";

}
public static TreeMap<String,AppData> rdp=new TreeMap<String,AppData>();
public static TreeMap<String,AppData> rdn=new TreeMap<String,AppData>();
public static TreeMap<String,AppData> rds=new TreeMap<String,AppData>();
public static void classify(AppData r)throws IOException 
{
    rds.put(r.AppId, r);
out.println("<br>"+"______________________________________________\nClassification & Clustering of a Reivew ID:"+r.Id+" Product ID:"+r.AppId+"\n______________________________________________");
if(r.Openion_Status.equals("Positive"))
{
rdp.put(r.Id, r);
}
else if(r.Openion_Status.equals("Nagative"))
{
rdn.put(r.Id, r);
}
}
}
