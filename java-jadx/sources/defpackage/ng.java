package defpackage;

import android.R;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.AutoCompleteTextView;

/* compiled from: PG */
/* loaded from: classes.dex */
public class ng extends AutoCompleteTextView {
    private static final int[] a = {R.attr.popupBackground};
    private final nh b;
    private final om c;

    public ng(Context context) {
        this(context, null);
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

    public ng(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.google.android.embedded.projection.R.attr.autoCompleteTextViewStyle);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ng(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        sj.a(context);
        sh.d(this, getContext());
        sm q = sm.q(getContext(), attributeSet, a, i);
        if (q.p(0)) {
            setDropDownBackgroundDrawable(q.h(0));
        }
        q.n();
        nh nhVar = new nh(this);
        this.b = nhVar;
        nhVar.b(attributeSet, i);
        om omVar = new om(this);
        this.c = omVar;
        omVar.b(attributeSet, i);
        omVar.a();
    }
}
