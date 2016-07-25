package ${packageName}.ui;

import android.os.Bundle;
import android.support.annotation.StringRes;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;

public abstract class ${BaseFragmentName} extends Fragment {

    protected static final String TAG = BaseFragment.class.getSimpleName();

    protected abstract int getContentView();

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        return inflater.inflate(getContentView(), container, false);
    }

    protected void makeToast(@StringRes int messageId) {
        Toast.makeText(getActivity(), getString(messageId), Toast.LENGTH_SHORT).show();
    }
}