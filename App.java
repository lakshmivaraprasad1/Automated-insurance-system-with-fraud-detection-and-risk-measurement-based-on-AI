/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package in;

import java.io.*;
import java.util.*;
import java.sql.*;

/**
 *
 * @author Harsha
 */
public class App
{

static String  sql="insert into App(POLICY_NO,STATE,LIFETIME_VALUE,RESPONSE,COVERAGE,VEHICAL_TYPE,EFFECTIVE_TO_DATE,VAHICALSTATUS,EXPIRED,INVOICE,LOCATIONCODE,OWNERSHIP_STATUS,MONTHLY_PREMIUM_AUTO,MONTHS_SINCE_LAST_CLAIM,MONTHS_SINCE_POLICY_INCEPTION,NUMBER_OF_OPEN_COMPLAINTS,NUMBER_OF_POLICIES,POLICY_TYPE,POLICY,RENEW_OFFER_TYPE,SALES_CHANNEL,TOTAL_CLAIM_AMOUNT,VEHICLE_CLASS,VEHICLE_SIZE) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

static Connection con=GetCon.getCon();
static PreparedStatement st=null;
static {
try{
st=con.prepareStatement(sql);
}catch(Exception ex){ex.printStackTrace();}
}
public static TreeMap<String,App> all=new TreeMap<String,App>();
String POLICY_NO,STATE,LIFETIME_VALUE,RESPONSE,COVERAGE,VEHICAL_TYPE,EFFECTIVE_TO_DATE,VAHICALSTATUS,EXPIRED,INVOICE,LOCATIONCODE,OWNERSHIP_STATUS,MONTHLY_PREMIUM_AUTO,MONTHS_SINCE_LAST_CLAIM,MONTHS_SINCE_POLICY_INCEPTION,NUMBER_OF_OPEN_COMPLAINTS,NUMBER_OF_POLICIES,POLICY_TYPE,POLICY,RENEW_OFFER_TYPE,SALES_CHANNEL,TOTAL_CLAIM_AMOUNT,VEHICLE_CLASS,VEHICLE_SIZE;
double dist=0;
public static void loadApps(String path) throws FileNotFoundException, IOException 
{


        RandomAccessFile fin=new RandomAccessFile(path,"r");
        String line=fin.readLine();
	   App.deleteAll();
        while(true)
        {
        line=fin.readLine();
        if(line==null)break;
        String[] cols=line.split("\t");
        if(cols.length==0) break;
        //System.out.print(line);
App rd=new App();

rd.POLICY_NO=cols[0];
rd.STATE=cols[1];
rd.LIFETIME_VALUE=cols[2];
rd.RESPONSE=cols[3];
rd.COVERAGE=cols[4];
rd.VEHICAL_TYPE=cols[5];
rd.EFFECTIVE_TO_DATE=cols[6];
rd.VAHICALSTATUS=cols[7];
rd.EXPIRED=cols[8];
rd.INVOICE=cols[9];
rd.LOCATIONCODE=cols[10];
rd.OWNERSHIP_STATUS=cols[11];
rd.MONTHLY_PREMIUM_AUTO=cols[12];
rd.MONTHS_SINCE_LAST_CLAIM=cols[13];
rd.MONTHS_SINCE_POLICY_INCEPTION=cols[14];
rd.NUMBER_OF_OPEN_COMPLAINTS=cols[15];
rd.NUMBER_OF_POLICIES=cols[16];
rd.POLICY_TYPE=cols[17];
rd.POLICY=cols[18];
rd.RENEW_OFFER_TYPE =cols[19];
rd.SALES_CHANNEL=cols[20];
rd.TOTAL_CLAIM_AMOUNT=cols[21];
rd.VEHICLE_CLASS=cols[22];
rd.VEHICLE_SIZE=cols[23];

//App.all.put(rd.AppId, rd);
System.out.println(rd);
rd.insert();
        
        }

    }

public void insert()
{
try{
 

st.setString(1,this.POLICY_NO);
st.setString(2,this.STATE);
st.setString(3,this.LIFETIME_VALUE );
st.setString(4,this.RESPONSE);
st.setString(5,this.COVERAGE);
st.setString(6,this.VEHICAL_TYPE);
st.setString(7,this.EFFECTIVE_TO_DATE);
st.setString(8,this.VAHICALSTATUS);
st.setString(9,this.EXPIRED);
st.setString(10,this.INVOICE);
st.setString(11,this.LOCATIONCODE);
st.setString(12,this.OWNERSHIP_STATUS);
st.setString(13,this.MONTHLY_PREMIUM_AUTO);
st.setString(14,this.MONTHS_SINCE_LAST_CLAIM);
st.setString(15,this.MONTHS_SINCE_POLICY_INCEPTION );
st.setString(16,this.NUMBER_OF_OPEN_COMPLAINTS);
st.setString(17,this.NUMBER_OF_POLICIES);
st.setString(18,this.POLICY_TYPE);
st.setString(19,this.POLICY);
st.setString(20,this.RENEW_OFFER_TYPE);
st.setString(21,this.SALES_CHANNEL);
st.setString(22,this.TOTAL_CLAIM_AMOUNT);
st.setString(23,this.VEHICLE_CLASS);
st.setString(24,this.VEHICLE_SIZE);

st.executeUpdate();

System.out.println("inserted");
//con.commit();
}catch(Exception ex){ex.printStackTrace();}

}
public static void deleteAll()
{
try{
 String  sql="delete from App";

Connection con=GetCon.getCon();
PreparedStatement st=con.prepareStatement(sql);
st.executeUpdate();

System.out.println("All Records Deleted");
con.commit();
}catch(Exception ex){ex.printStackTrace();}

}

public  static int getCountOfAll()
{
int count=0;
try{
 String  sql="select count(*) from App";

Connection con=GetCon.getCon();
PreparedStatement st=con.prepareStatement(sql);
ResultSet rs=st.executeQuery(sql);
if(rs.next())
{
count=rs.getInt(1);
}

rs.close();
}catch(Exception ex){ex.printStackTrace();}
return count;
}

public  static int getCountOfAll(String condition)
{
int count=0;
try{
 String  sql="select count(*) from App where "+condition;

Connection con=GetCon.getCon();
PreparedStatement st=con.prepareStatement(sql);
ResultSet rs=st.executeQuery(sql);
if(rs.next())
{
count=rs.getInt(1);
}

rs.close();
}catch(Exception ex){ex.printStackTrace();}
return count;
}

public  static int getMaxOf(String condition)
{
int count=0;
try{
 String  sql="select max(SCORE) from "+condition;

Connection con=GetCon.getCon();
PreparedStatement st=con.prepareStatement(sql);
ResultSet rs=st.executeQuery(sql);
if(rs.next())
{
count=rs.getInt(1);
}

rs.close();
}catch(Exception ex){ex.printStackTrace();}
return count;
}

public String toString()
{
return String.format("\nformat not implemented ");
} 
}
