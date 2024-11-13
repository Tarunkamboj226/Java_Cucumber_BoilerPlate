import framework.ActionsUtil;
import framework.PropertiesUtil;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

public class StepdefsUSRM {
    WebDriver driver;
    PropertiesUtil propertiesUtil = new PropertiesUtil();

    @Given("Launch website")
    public void launchwebsite() {
        driver = ActionsUtil.getDriver(propertiesUtil.getProperty("Browser"));
        driver.get("https://www.saucedemo.com");
    }

    @Then("Add username and password")
    public void addUsernameAndPassword() throws InterruptedException {
        WebElement username = driver.findElement(By.id("user-name"));
        username.sendKeys("standard_user");
        Thread.sleep(2000);

        WebElement password = driver.findElement(By.id("password"));
        password.sendKeys("secret_sauce");
        Thread.sleep(2000);
    }

    @And("Click on login button")
    public void clickOnLoginButton() throws InterruptedException {
        WebElement Login = driver.findElement(By.name("login-button"));
        Login.click();

        Thread.sleep(3000);

        driver.quit();
    }
}
