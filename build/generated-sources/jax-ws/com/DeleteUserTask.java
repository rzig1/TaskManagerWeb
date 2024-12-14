
package com;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for deleteUserTask complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="deleteUserTask"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="idtask" type="{http://www.w3.org/2001/XMLSchema}int"/&gt;
 *         &lt;element name="idusers" type="{http://www.w3.org/2001/XMLSchema}int"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "deleteUserTask", propOrder = {
    "idtask",
    "idusers"
})
public class DeleteUserTask {

    protected int idtask;
    protected int idusers;

    /**
     * Gets the value of the idtask property.
     * 
     */
    public int getIdtask() {
        return idtask;
    }

    /**
     * Sets the value of the idtask property.
     * 
     */
    public void setIdtask(int value) {
        this.idtask = value;
    }

    /**
     * Gets the value of the idusers property.
     * 
     */
    public int getIdusers() {
        return idusers;
    }

    /**
     * Sets the value of the idusers property.
     * 
     */
    public void setIdusers(int value) {
        this.idusers = value;
    }

}
