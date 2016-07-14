package ${packageName}.config;

import javax.inject.Singleton;

import dagger.Component;
import ${packageName}.${activityClass};

@Singleton
@Component(modules = {
        ${app_module}.class
})
public interface ${app_component} {
    void inject(${activityClass} mainActivity);
}