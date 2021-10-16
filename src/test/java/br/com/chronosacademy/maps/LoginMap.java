package br.com.chronosacademy.maps;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class LoginMap {
    @FindBy(css = "#menuUser")
    public WebElement btnLogin;
    @FindBy(css = ".closeBtn")
    public WebElement btnFechar;
    public WebElement divFechaModal;
    public WebElement inpUserName;
    public WebElement inpPassword;
    public WebElement inpRemember;
    public WebElement btnSignIn;
    public WebElement linkCreateAccount;
}
