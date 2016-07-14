package ${packageName}.config;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;

public class ${app_preferences} {

    private final SharedPreferences prefs;

    public ${app_preferences}(Context context) {
        prefs = PreferenceManager.getDefaultSharedPreferences(context);
    }
}