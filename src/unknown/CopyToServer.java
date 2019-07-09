package unknown;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class CopyToServer 
{
	
	public void CopyToFolde2(String fileName){
		InputStream inStream = null;
		OutputStream outStream = null;
			
		
	    	try{
	    	    File afile =new File("C:\\xampp\\htdocs\\pill_reminder\\prescriptions\\"+fileName+"");
	    	    File bfile =new File("C:\\Workspace1\\Pill_Reminder(New)1\\WebContent\\prescriptions\\"+fileName+"");
	    		
	    	    inStream = new FileInputStream(afile);
	    	    outStream = new FileOutputStream(bfile);
	        	
	    	    byte[] buffer = new byte[1024];
	    		
	    	    int length;
	    	    //copy the file content in bytes 
	    	    while ((length = inStream.read(buffer)) > 0){
	    	  
	    	    	outStream.write(buffer, 0, length);
	    	 
	    	    }
	    	 
	    	    inStream.close();
	    	    outStream.close();
	    	    
	    	   
	    	    
	    	    System.out.println("File is Regenerate successfully!");
	    	    
	    	}catch(IOException e){
	    	    e.printStackTrace();
	    	}
	}
	
    public static void main(String[] args)
    {	
    	CopyToServer c = new CopyToServer();
    	c.CopyToFolde2("mh14eq117728-11-2017.png");
    	
    }
}
