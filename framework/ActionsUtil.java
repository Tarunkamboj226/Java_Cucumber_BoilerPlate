package framework;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.edge.EdgeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.safari.SafariDriver;

import java.time.Duration;

public class ActionsUtil {

    public static WebDriver getDriver(String browserName)
    {
        WebDriver driver=null;
        switch (browserName.toUpperCase())
        {
            case "CHROME": driver=new ChromeDriver();
                break;

            case "FIREFOX": driver=new FirefoxDriver();
                break;

            case "EDGE": driver=new EdgeDriver();
                break;

            case "SAFARI": driver=new SafariDriver();
                break;

            default:
                System.out.println("Browser not found please check");
        }

        driver.manage().window().maximize();

        //Implicit Wait will be applied at a driver level
        driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(10));
        driver.manage().deleteAllCookies();

        return driver;
    }

}
