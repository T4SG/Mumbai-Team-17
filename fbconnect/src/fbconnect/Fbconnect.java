/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fbconnect;

import com.restfb.DefaultFacebookClient;
import com.restfb.FacebookClient;
import com.restfb.types.User;

/**
 *
 * @author Shariwa
 */
public class Fbconnect {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
    FacebookClient fbClient=new DefaultFacebookClient("CAACEdEose0cBAAQZCiIUPAE5ODBftJ1nZATZBU4LOMP5kuZALCjbEBuOZBlZBbM4BQcGPLLH3XzCBrMdZAnOx9uK3ae4eaSKijHyIkPlwoKNw7ZAptaoahz22psIPL079U0iD7FjbRzvSijJsf4wzLJW40FXomeRdGwb8SxIi4pT9BisW3ZAgPZBgZASWYuNlIjcn98G0GXcv7rVjSMgbZB3dt59");
    User me=fbClient.fetchObject("788014164590107",com.restfb.types.User.class);
            System.out.println(me.getBio());
    }
    
}
