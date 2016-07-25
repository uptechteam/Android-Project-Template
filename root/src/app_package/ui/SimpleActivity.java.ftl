package ${packageName}.ui;

import ${superClassFqcn};
import android.os.Bundle;
import android.support.annotation.Nullable;

<#if genereteBaseActivity>
import ${packageName}.ui.${baseActivityName}

public class ${activityClass} extends ${baseActivityName} {
<#else>
public class ${activityClass} extends ${superClass} {
</#if>

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.${layoutName});
	${application_class}.getComponent().inject(this);
    }
}
