/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package ProductRecomendation;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import javax.servlet.jsp.*;
/**
 *
 * @author Harsha
 */
public class LoadDataSet {
    
       public static void loadDataSet(String path,JspWriter out) throws FileNotFoundException, IOException {
        RandomAccessFile fin=new RandomAccessFile(path,"r");
        String line="";
        while(true)
        {
        line=fin.readLine();
        if(line==null)break;
        String[] cols=line.split("\t");
        
String Id=cols[0];
String RestaurantId=cols[1];
Restaurant r=Restaurant.all.get(RestaurantId);
String ProductId=cols[2];
String ProductName=cols[3];
String UserId=cols[4];
String ProfileName=cols[5];
String HelpfulnessNumerator=cols[6];
String HelpfulnessDenominator=cols[7];
String Score=cols[8];
String Time=cols[9];
String Summary=cols[10];
ReviewData rd=new ReviewData();
rd.Id=Id;
rd.RestaurantId=RestaurantId;
rd.restaurant=r;
rd.ProductId=ProductId;
rd.ProductName=ProductName;
rd.UserId=UserId;
rd.ProfileName=ProfileName;
rd.HelpfulnessNumerator=HelpfulnessNumerator;
rd.HelpfulnessDenominator=HelpfulnessDenominator;
rd.Score=Score;
rd.Time=Time;
rd.Summary=Summary;
ReviewData.updateOpenion(rd, PositiveWords.pw, NagativeWords.nw);
ReviewData.classify(rd);
out.println("<br>"+rd);
        }
    }
}
