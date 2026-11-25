package defpackage;

import android.R;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.MultiAutoCompleteTextView;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ns extends MultiAutoCompleteTextView {
    private static final int[] a = {R.attr.popupBackground};
    private final nh b;
    private final om c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ns(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, com.google.android.embedded.projection.R.attr.autoCompleteTextViewStyle);
        sj.a(context);
        sh.d(this, getContext());
        sm q = sm.q(getContext(), attributeSet, a, com.google.android.embedded.projection.R.attr.autoCompleteTextViewStyle);
        if (q.p(0)) {
            setDropDownBackgroundDrawable(q.h(0));
        }
        q.n();
        nh nhVar = new nh(this);
        this.b = nhVar;
        nhVar.b(attributeSet, com.google.android.embedded.projection.R.attr.autoCompleteTextViewStyle);
        om omVar = new om(this);
        this.c = omVar;
        omVar.b(attributeSet, com.google.android.embedded.projection.R.attr.autoCompleteTextViewStyle);
        omVar.a();
    }

    @Override // android.widget.TextView, android.view.View
    protected final void drawableStateChanged() {
        super.drawableStateChanged();
        nh nhVar = this.b;
        if (nhVar != null) {
            nhVar.a();
        }
        om omVar = this.c;
        if (omVar != null) {
            omVar.a();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        hm.b(onCreateInputConnection, editorInfo, this);
        return onCreateInputConnection;
    }

    @Override // android.view.View
    public final void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        nh nhVar = this.b;
        if (nhVar != null) {
            nhVar.e();
        }
    }

    @Override // android.view.View
    public final void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        nh nhVar = this.b;
        if (nhVar != null) {
            nhVar.c(i);
        }
    }

    @Override // android.widget.AutoCompleteTextView
    public final void setDropDownBackgroundResource(int i) {
        setDropDownBackgroundDrawable(kj.b(getContext(), i));
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        om omVar = this.c;
        if (omVar != null) {
            omVar.c(context, i);
        }
    }
}
