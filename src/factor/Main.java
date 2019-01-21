/*
 * Main.java
 *
 * Created on May 25, 2007, 10:02 PM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package factor;

import java.io.*;

/**
 *
 * @author Brian
 */
public class Main {
    
    /** Creates a new instance of Main */
    public Main() {
    }
    
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        String line = null;
        int val = 0;
        int test = 0;
        
        try {
            BufferedReader is = new BufferedReader(new InputStreamReader(System.in));
            line = is.readLine();
            val = Integer.parseInt(line);
        } catch (NumberFormatException ex) {
            System.err.println("Not a valid number: " + line);
        } catch (IOException e) {
            System.err.println("Unexpected IO ERROR: " + e);
        }
        System.out.println("Factoring: " + val);
        for (test = 1; test <= Math.sqrt(val); test++) {
            double full = (double) val / (double) test;
            double trunc = Math.floor((double) val / (double) test);
            if (full == trunc)
                System.out.println(test + " : " + val/test);
        }
    }
    
}