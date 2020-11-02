/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ex1;

import javax.servlet.ServletContextAttributeEvent;
import javax.servlet.ServletContextAttributeListener;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.ServletRequestAttributeEvent;
import javax.servlet.ServletRequestAttributeListener;
import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 * Web application lifecycle listener.
 *
 * @author Mustafa Shubbar <codingbox@outlook.com>
 */
public class TestListener implements ServletContextListener, ServletContextAttributeListener, HttpSessionListener, HttpSessionAttributeListener, ServletRequestListener, ServletRequestAttributeListener {

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        System.out.println("LISTENER ServletContextEvent contextInitialized");
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        System.out.println("LISTENER ServletContextEvent contextDestroyed");
    }

    @Override
    public void attributeAdded(ServletContextAttributeEvent scae) {
        System.out.println("LISTENER ServletContextAttributeEvent attributeAdded");
    }

    @Override
    public void attributeRemoved(ServletContextAttributeEvent scae) {
        System.out.println("LISTENER ServletContextAttributeEvent attributeRemoved");
    }

    @Override
    public void attributeReplaced(ServletContextAttributeEvent scae) {
        System.out.println("LISTENER ServletContextAttributeEvent attributeReplaced");
    }

    @Override
    public void sessionCreated(HttpSessionEvent se) {
        System.out.println("LISTENER HttpSessionEvent sessionCreated");
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent se) {
        System.out.println("LISTENER HttpSessionEvent sessionDestroyed");
    }

    @Override
    public void attributeAdded(HttpSessionBindingEvent se) {
        System.out.println("LISTENER HttpSessionBindingEvent attributeAdded");
    }

    @Override
    public void attributeRemoved(HttpSessionBindingEvent se) {
        System.out.println("LISTENER HttpSessionBindingEvent attributeRemoved");
    }

    @Override
    public void attributeReplaced(HttpSessionBindingEvent se) {
        System.out.println("LISTENER HttpSessionBindingEvent attributeReplaced");
    }

    @Override
    public void requestDestroyed(ServletRequestEvent sre) {
        System.out.println("LISTENER ServletRequestEvent requestDestroyed");
    }

    @Override
    public void requestInitialized(ServletRequestEvent sre) {
        System.out.println("LISTENER ServletRequestEvent requestInitialized");
    }

    @Override
    public void attributeAdded(ServletRequestAttributeEvent srae) {
        System.out.println("LISTENER ServletRequestAttributeEvent attributeAdded");
    }

    @Override
    public void attributeRemoved(ServletRequestAttributeEvent srae) {
        System.out.println("LISTENER ServletRequestAttributeEvent attributeRemoved");
    }

    @Override
    public void attributeReplaced(ServletRequestAttributeEvent srae) {
        System.out.println("LISTENER ServletRequestAttributeEvent attributeReplaced");
    }
}
