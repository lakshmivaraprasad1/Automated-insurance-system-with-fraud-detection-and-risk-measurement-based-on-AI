/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package ProductRecomendation;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.TreeSet;
import javax.servlet.jsp.*;
import javax.servlet.http.*;
import javax.servlet.*;

/**
 *
 * @author Harsha
 */
public class PositiveWords {
   public static TreeSet<String> pw=new TreeSet<String>();
    public static void loadPositiveWords(String path,JspWriter out) throws FileNotFoundException, IOException {
        RandomAccessFile fin=new RandomAccessFile(path,"r");
        String line="";
out.println("<br>");
        while(true)
        {
        line=fin.readLine();
        if(line==null)break;
        String[] cols=line.split("\t");
        
pw.add(cols[0]);
//out.println("-"+cols[0]);
        }
out.println("<br>");
    }
    
}
