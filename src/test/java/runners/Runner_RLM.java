package runners;

import io.cucumber.testng.AbstractTestNGCucumberTests;
import io.cucumber.testng.CucumberOptions;
import org.testng.annotations.DataProvider;

@CucumberOptions(
        features="./src/test/resources/Features/AESL_SA_RLM.feature",
        glue="StepdefsRLM",
        monochrome=true,
        tags="@TC_01"
)
public class Runner_RLM extends AbstractTestNGCucumberTests {

    @DataProvider
    public Object[][] getScenarios()
    {
        return super.scenarios();
    }
}

