package ${packageName}.config;

import android.content.Context;

import javax.inject.Singleton;

import dagger.Module;
import dagger.Provides;

@Module
public class ${app_module} {

    private Context context;

    public ${app_module}(Context context) {
        this.context = context;
    }

    @Provides
    @Singleton
    ${app_preferences} providePrefs() {
        return new ${app_preferences}(context);
    }
}