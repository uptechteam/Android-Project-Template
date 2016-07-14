package ${packageName};
import android.app.Application;

import ${packageName}.config.${app_component};
import ${packageName}.config.${app_module};
import ${packageName}.config.DaggerAppComponent;

public class ${application_class} extends Application {
    private static ${app_component} component;

    public static ${app_component} getComponent() {
        return component;
    }

    @Override
    public void onCreate() {
        super.onCreate();
        component = DaggerAppComponent.builder().appModule(new ${app_module}(this)).build();
    }
}