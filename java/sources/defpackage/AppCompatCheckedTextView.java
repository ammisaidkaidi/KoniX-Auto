package defpackage;

import android.R;
import android.content.Context;
import android.util.AttributeSet;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.CheckedTextView;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class AppCompatCheckedTextView extends CheckedTextView {
    private static final int[] a = {R.attr.checkMark};
    private final TextViewAutoSizeHelper b;

    /* JADX WARN: 'super' call moved to the top of the method (TimerMetricServiceFactory_can break code semantics) */
    public AppCompatCheckedTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.checkedTextViewStyle);
        TintContextWrapper.a(context);
        ThemeUtilsCompat.d(this, getContext());
        TextViewAutoSizeHelper omVar = new TextViewAutoSizeHelper(this);
        this.b = omVar;
        omVar.b(attributeSet, R.attr.checkedTextViewStyle);
        omVar.a();
        TintResourcesHelper q = TintResourcesHelper.q(getContext(), attributeSet, a, R.attr.checkedTextViewStyle);
        setCheckMarkDrawable(q.h(0));
        q.n();
    }

    @Override // android.widget.CheckedTextView, android.widget.TextView, android.view.View
    protected final void drawableStateChanged() {
        super.drawableStateChanged();
        TextViewAutoSizeHelper omVar = this.b;
        if (omVar != null) {
            omVar.a();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        MixedApi23ViewCompatStatics.b(onCreateInputConnection, editorInfo, this);
        return onCreateInputConnection;
    }

    @Override // android.widget.CheckedTextView
    public final void setCheckMarkDrawable(int i) {
        setCheckMarkDrawable(SimpleHolderKj.b(getContext(), i));
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        TextViewAutoSizeHelper omVar = this.b;
        if (omVar != null) {
            omVar.c(context, i);
        }
    }
}
