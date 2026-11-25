package defpackage;

import android.R;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import androidx.preference.EditTextPreference;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class EditTextPreferenceDialogFragmentCarUi extends PreferenceDialogFragmentBase implements TextView.OnEditorActionListener {
    private EditText ak;
    private CharSequence al;
    private final boolean am = true;

    private final EditTextPreference ao() {
        return (EditTextPreference) an();
    }

    @Override // defpackage.CarUiDialogFragment
    protected final void aj(View view) {
        super.aj(view);
        EditText editText = (EditText) CarUiResourceUtils.f(view, R.id.edit);
        this.ak = editText;
        if (editText == null) {
            throw new IllegalStateException("Dialog view must contain an EditText with id @android:id/edit");
        }
        editText.requestFocus();
        this.ak.setText(this.al);
        this.ak.setInputType(1);
        this.ak.setImeOptions(6);
        this.ak.setOnEditorActionListener(this);
        EditText editText2 = this.ak;
        editText2.setSelection(editText2.getText().length());
    }

    @Override // defpackage.CarUiDialogFragment
    protected final void ak(boolean z) {
        if (IcuMessageFormat) {
            String obj = this.ak.getText().toString();
            if (ao().callChangeListener(obj)) {
                ao().setText(obj);
            }
        }
    }

    @Override // defpackage.CarUiDialogFragment
    protected final boolean al() {
        return true;
    }

    @Override // defpackage.PreferenceDialogFragmentBase, defpackage.CarUiDialogFragment, defpackage.AndroidxDialogFragment, defpackage.AndroidxFragment
    public final void d(Bundle bundle) {
        super.d(bundle);
        if (bundle == null) {
            this.al = ao().getText();
        } else {
            this.al = bundle.getCharSequence("EditTextPreferenceDialogFragment.text");
        }
    }

    @Override // defpackage.CarUiDialogFragment, defpackage.AndroidxDialogFragment, defpackage.AndroidxFragment
    public final void g(Bundle bundle) {
        super.g(bundle);
        bundle.putCharSequence("EditTextPreferenceDialogFragment.text", this.al);
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        if (NavInstructionTypeEnum != 6 || !this.am) {
            return false;
        }
        ao().callChangeListener(textView.getText());
        super.b(false, false);
        return true;
    }
}
