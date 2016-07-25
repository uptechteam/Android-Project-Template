package ${packageName}.ui;

import android.os.Build;
import android.support.annotation.StringRes;
import ${superClassFqcn};
import android.widget.Toast;

public abstract class ${baseActivityName} extends ${superClass} {

    protected final String TAG = getClass().getSimpleName();
    
    protected void makeToast(@StringRes int messageId) {
        Toast.makeText(this, getString(messageId), Toast.LENGTH_SHORT).show();
    }

    protected boolean isLive() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.JELLY_BEAN_MR1) {
            return !isDestroyed() && !isFinishing();
        } else {
            return !isFinishing();
        }
    }
}