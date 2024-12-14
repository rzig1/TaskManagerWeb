
package com;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;
import javax.xml.bind.annotation.XmlSeeAlso;
import javax.xml.ws.Action;
import javax.xml.ws.RequestWrapper;
import javax.xml.ws.ResponseWrapper;


/**
 * This class was generated by the JAX-WS RI.
 * JAX-WS RI 2.2.11-b150120.1832
 * Generated source version: 2.2
 * 
 */
@WebService(name = "Service", targetNamespace = "http://com/")
@XmlSeeAlso({
    ObjectFactory.class
})
public interface Service {


    /**
     * 
     * @param login
     * @param pwd
     * @return
     *     returns int
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "login", targetNamespace = "http://com/", className = "com.Login")
    @ResponseWrapper(localName = "loginResponse", targetNamespace = "http://com/", className = "com.LoginResponse")
    @Action(input = "http://com/Service/loginRequest", output = "http://com/Service/loginResponse")
    public int login(
        @WebParam(name = "login", targetNamespace = "")
        String login,
        @WebParam(name = "pwd", targetNamespace = "")
        String pwd);

    /**
     * 
     * @param name
     * @param login
     * @param pwd
     * @return
     *     returns boolean
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "signup", targetNamespace = "http://com/", className = "com.Signup")
    @ResponseWrapper(localName = "signupResponse", targetNamespace = "http://com/", className = "com.SignupResponse")
    @Action(input = "http://com/Service/signupRequest", output = "http://com/Service/signupResponse")
    public boolean signup(
        @WebParam(name = "name", targetNamespace = "")
        String name,
        @WebParam(name = "login", targetNamespace = "")
        String login,
        @WebParam(name = "pwd", targetNamespace = "")
        String pwd);

    /**
     * 
     * @param name
     * @return
     *     returns java.lang.String
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "hello", targetNamespace = "http://com/", className = "com.Hello")
    @ResponseWrapper(localName = "helloResponse", targetNamespace = "http://com/", className = "com.HelloResponse")
    @Action(input = "http://com/Service/helloRequest", output = "http://com/Service/helloResponse")
    public String hello(
        @WebParam(name = "name", targetNamespace = "")
        String name);

}