package framework;

import org.apache.commons.configuration2.PropertiesConfiguration;
import org.apache.commons.configuration2.PropertiesConfigurationLayout;

import java.io.FileInputStream;
import java.io.InputStreamReader;

public class PropertiesUtil {

    private InputStreamReader isr;
    private PropertiesConfiguration propertiesConfiguration;
    private PropertiesConfigurationLayout propertiesConfigurationLayout;

    public PropertiesUtil()
    {
        try{

            //InputStreamReader helps us in reading the data from the config file
            //Since it cannot interact with the file directly, it will take the help of FileInputStream to read the data from the file
            isr=new InputStreamReader(new FileInputStream("CommonConfigs.properties"));
            propertiesConfiguration=new PropertiesConfiguration();
            propertiesConfigurationLayout=new PropertiesConfigurationLayout();

            //Whatever the data that is stored in the isr object will be loaded into propertiesConfiguration Object.
            propertiesConfigurationLayout.load(propertiesConfiguration,isr);
        }

        catch (Exception e){

        }
    }

    public String getProperty(String key)
    {
        return propertiesConfiguration.getProperty(key).toString().replace("[","").replace("]","");
    }

}
