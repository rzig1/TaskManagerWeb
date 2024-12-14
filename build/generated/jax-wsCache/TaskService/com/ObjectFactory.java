
package com;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the com package. 
 * <p>An ObjectFactory allows you to programatically 
 * construct new instances of the Java representation 
 * for XML content. The Java representation of XML 
 * content can consist of schema derived interfaces 
 * and classes representing the binding of schema 
 * type definitions, element declarations and model 
 * groups.  Factory methods for each of these are 
 * provided in this class.
 * 
 */
@XmlRegistry
public class ObjectFactory {

    private final static QName _CreateTask_QNAME = new QName("http://com/", "createTask");
    private final static QName _CreateTaskResponse_QNAME = new QName("http://com/", "createTaskResponse");
    private final static QName _DeleteUserTask_QNAME = new QName("http://com/", "deleteUserTask");
    private final static QName _DeleteUserTaskResponse_QNAME = new QName("http://com/", "deleteUserTaskResponse");
    private final static QName _GetUserTasks_QNAME = new QName("http://com/", "getUserTasks");
    private final static QName _GetUserTasksResponse_QNAME = new QName("http://com/", "getUserTasksResponse");
    private final static QName _UpdateUserTask_QNAME = new QName("http://com/", "updateUserTask");
    private final static QName _UpdateUserTaskResponse_QNAME = new QName("http://com/", "updateUserTaskResponse");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: com
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link CreateTask }
     * 
     */
    public CreateTask createCreateTask() {
        return new CreateTask();
    }

    /**
     * Create an instance of {@link CreateTaskResponse }
     * 
     */
    public CreateTaskResponse createCreateTaskResponse() {
        return new CreateTaskResponse();
    }

    /**
     * Create an instance of {@link DeleteUserTask }
     * 
     */
    public DeleteUserTask createDeleteUserTask() {
        return new DeleteUserTask();
    }

    /**
     * Create an instance of {@link DeleteUserTaskResponse }
     * 
     */
    public DeleteUserTaskResponse createDeleteUserTaskResponse() {
        return new DeleteUserTaskResponse();
    }

    /**
     * Create an instance of {@link GetUserTasks }
     * 
     */
    public GetUserTasks createGetUserTasks() {
        return new GetUserTasks();
    }

    /**
     * Create an instance of {@link GetUserTasksResponse }
     * 
     */
    public GetUserTasksResponse createGetUserTasksResponse() {
        return new GetUserTasksResponse();
    }

    /**
     * Create an instance of {@link UpdateUserTask }
     * 
     */
    public UpdateUserTask createUpdateUserTask() {
        return new UpdateUserTask();
    }

    /**
     * Create an instance of {@link UpdateUserTaskResponse }
     * 
     */
    public UpdateUserTaskResponse createUpdateUserTaskResponse() {
        return new UpdateUserTaskResponse();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link CreateTask }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://com/", name = "createTask")
    public JAXBElement<CreateTask> createCreateTask(CreateTask value) {
        return new JAXBElement<CreateTask>(_CreateTask_QNAME, CreateTask.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link CreateTaskResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://com/", name = "createTaskResponse")
    public JAXBElement<CreateTaskResponse> createCreateTaskResponse(CreateTaskResponse value) {
        return new JAXBElement<CreateTaskResponse>(_CreateTaskResponse_QNAME, CreateTaskResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link DeleteUserTask }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://com/", name = "deleteUserTask")
    public JAXBElement<DeleteUserTask> createDeleteUserTask(DeleteUserTask value) {
        return new JAXBElement<DeleteUserTask>(_DeleteUserTask_QNAME, DeleteUserTask.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link DeleteUserTaskResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://com/", name = "deleteUserTaskResponse")
    public JAXBElement<DeleteUserTaskResponse> createDeleteUserTaskResponse(DeleteUserTaskResponse value) {
        return new JAXBElement<DeleteUserTaskResponse>(_DeleteUserTaskResponse_QNAME, DeleteUserTaskResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetUserTasks }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://com/", name = "getUserTasks")
    public JAXBElement<GetUserTasks> createGetUserTasks(GetUserTasks value) {
        return new JAXBElement<GetUserTasks>(_GetUserTasks_QNAME, GetUserTasks.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetUserTasksResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://com/", name = "getUserTasksResponse")
    public JAXBElement<GetUserTasksResponse> createGetUserTasksResponse(GetUserTasksResponse value) {
        return new JAXBElement<GetUserTasksResponse>(_GetUserTasksResponse_QNAME, GetUserTasksResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link UpdateUserTask }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://com/", name = "updateUserTask")
    public JAXBElement<UpdateUserTask> createUpdateUserTask(UpdateUserTask value) {
        return new JAXBElement<UpdateUserTask>(_UpdateUserTask_QNAME, UpdateUserTask.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link UpdateUserTaskResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://com/", name = "updateUserTaskResponse")
    public JAXBElement<UpdateUserTaskResponse> createUpdateUserTaskResponse(UpdateUserTaskResponse value) {
        return new JAXBElement<UpdateUserTaskResponse>(_UpdateUserTaskResponse_QNAME, UpdateUserTaskResponse.class, null, value);
    }

}
