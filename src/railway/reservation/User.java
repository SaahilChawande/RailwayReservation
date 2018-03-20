/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package railway.reservation;

/**
 *
 * @author admini
 */

public class User {
    private String firstName;
    private String lastName;
    private String email;
    private String password;
    private String gender;
    private int age;
    
    public User()   {}
    
    public User(String firstName, String lastName, String email, String password, String gender, int age)   {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.password = password;
        this.gender = gender;
        this.age = age;
    }
        
    public void setFirstName(String firstName)  {
        this.firstName = firstName;
    }
    
    public void setLastName(String lastName)  {
        this.lastName = lastName;
    }
    
    public void setEmail(String email)  {
        this.email = email;
    }
    
    public void setPassword(String password)  {
        this.password = password;
    }
    
    public void setGender(String gender)  {
        this.gender = gender;
    }
    
    public void setAge(int age)  {
        this.age = age;
    }
    
    public String toString()    {
        return "Name: " + firstName + " " + lastName + "\nEmail: " + email + 
                "\nGender: " + gender + "\nAge: " + age + "\nPassword: " + password;
    }
}
