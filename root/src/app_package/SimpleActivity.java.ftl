package ${packageName};

import ${superClassFqcn};
import android.os.Bundle;
import android.support.annotation.Nullable;

public class ${activityClass} extends ${superClass} {

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.${layoutName});
	${application_class}.getComponent().inject(this);
    }
}
