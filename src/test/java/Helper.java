import net.minidev.json.JSONObject;
import java.util.*;

public class Helper {
    public static String getWarmestCity(List result) {
        String warmestCity = null;
        Double warmestTemperature = -999.0;

        for(int i=0; i<result.size(); i++) {;
            JSONObject test = new JSONObject((Map<String, ?>) result.get(i));
            JSONObject responseList = new JSONObject((Map<String, ?>) test.get("response"));
            List ls = (List) responseList.get("data");
            JSONObject data = new JSONObject((Map<String, ?>) ls.get(0));

            String stringTemp = String.valueOf(data.get("temp"));
            double temp = Double.parseDouble(stringTemp);
            if (temp > warmestTemperature) {
                warmestCity = (String) data.get("city_name");
                warmestTemperature = temp;
            }
        }
        return "Warmest City: " + warmestCity + " / Temperature: " + warmestTemperature;
    }

    public static String getColdestCity(List result) {
        String coldestCity = null;
        Double coldestTemperature = 999.0;

        for(int i=0; i<result.size(); i++) {;
            JSONObject test = new JSONObject((Map<String, ?>) result.get(i));
            JSONObject responseList = new JSONObject((Map<String, ?>) test.get("response"));
            List ls = (List) responseList.get("data");
            JSONObject data = new JSONObject((Map<String, ?>) ls.get(0));

            String stringTemp = String.valueOf(data.get("temp"));
            double temp = Double.parseDouble(stringTemp);
            if (temp < coldestTemperature) {
                coldestCity = (String) data.get("city_name");
                coldestTemperature = temp;
            }
        }
        return "Coldest City: " + coldestCity + " / Temperature: " + coldestTemperature;
    }
}
