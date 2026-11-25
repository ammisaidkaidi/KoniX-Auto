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
public final class ans extends anx implements TextView.OnEditorActionListener {
    private EditText ak;
    private CharSequence al;
    private final boolean am = true;

    private final EditTextPreference ao() {
        return (EditTextPreference) an();
    }

    @Override // defpackage.ann
    protected final void aj(View view) {
        super.aj(view);
        EditText editText = (EditText) aro.f(view, R.id.edit);
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

    @Override // defpackage.ann
    protected final void ak(boolean z) {
        if (z) {
            String obj = this.ak.getText().toString();
            if (ao().callChangeListener(obj)) {
                ao().setText(obj);
            }
        }
    }

    @Override // defpackage.ann
    protected final boolean al() {
        return true;
    }

    @Override // defpackage.anx, defpackage.ann, defpackage.bm, defpackage.br
    public final void d(Bundle bundle) {
        super.d(bundle);
        if (bundle == null) {
            this.al = ao().getText();
        } else {
            this.al = bundle.getCharSequence("EditTextPreferenceDialogFragment.text");
        }
    }

    @Override // defpackage.ann, defpackage.bm, defpackage.br
    public final void g(Bundle bundle) {
        super.g(bundle);
        bundle.putCharSequence("EditTextPreferenceDialogFragment.text", this.al);
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        if (i != 6 || !this.am) {
            return false;
        }
        ao().callChangeListener(textView.getText());
        super.b(false, false);
        return true;
    }
}
