
package ProductRecomendation;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import javax.swing.JFrame;

public class Autometa {

    public static void main(String[] args) throws FileNotFoundException, IOException {
String filepath=".\\";
/*File ff=new File(filepath+"dummy.txt");ff.createNewFile();
System.out.print(ff.getAbsoluteFile().getAbsolutePath());
*/
JFrame f=new JFrame();
f.setSize(300,400);
f.show();
System.out.println("--------------------------------------------------------");
System.out.println("Loading Positive Dictionary......");
System.out.println("--------------------------------------------------------");
PositiveWords.loadPositiveWords(filepath+"positive-words.txt");
System.out.println("--------------------------------------------------------");
System.out.println("Loading Nagative Dictionary......");
System.out.println("--------------------------------------------------------");
NagativeWords.loadNagativeWords(filepath+"negative-words.txt");
System.out.println("--------------------------------------------------------");
System.out.println("................Sentiment Analysis......................");
System.out.println("--------------------------------------------------------");
System.out.println("Loading Product Reviews from AmaZon DataSet...");
System.out.println("--------------------------------------------------------");

LoadDataSet.loadDataSet(filepath+"AmazonProductReviews.txt");
        System.out.println("Total Positive Reviews : "+ReviewData.rdp.size());
        System.out.println("Total Nagative Reviews : "+ReviewData.rdn.size());
        BufferedReader b=new BufferedReader(new InputStreamReader(System.in));
        System.out.println("Enter Product Id for which you need the Recomendation :");
        String ProductId=b.readLine();
        ReviewData.findByProductID(ProductId);
        
        //Restaurant r=ReviewData.getRecomendation(Longitude,Latitude);
       int px=ReviewData.plist.size();
       int py=ReviewData.nlist.size();
       int rxy=px+py;
       float CSRPS=(px*100)/rxy;
       float CSRNS=(py*100)/rxy;
       
       if(rxy==0)
           System.out.println("Check the Product ID, "+ProductId+" is Not found in the DataSet)");
       else 
       {
        System.out.println("Positive Reviews on : "+ProductId+" :"+ReviewData.plist.size());
        System.out.println("Nagative Reviews on "+ProductId+" :"+ReviewData.nlist.size());
       if(CSRNS>CSRPS)
       System.out.println(ProductId+" is not Recomendable , Has more Nagative Reviews ("+ReviewData.nlist.size()+"/"+ReviewData.plist.size()+"CSRNS="+CSRNS+")");
       else
              System.out.println(ProductId+" is Recomendable , Has more Positive Reviews ("+ReviewData.nlist.size()+"/"+ReviewData.plist.size()+"CSRPS="+CSRNS+")");

    }
    }
}
