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
public final class AppCompatMultiAutoCompleteTextView extends MultiAutoCompleteTextView {
    private static final int[] a = {R.attr.popupBackground};
    private final AppCompatBackgroundHelper b;
    private final TextViewAutoSizeHelper c;

    /* JADX WARN: 'super' call moved to the top of the method (TimerMetricServiceFactory_can break code semantics) */
    public AppCompatMultiAutoCompleteTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, com.google.android.embedded.projection.R.attr.autoCompleteTextViewStyle);
        TintContextWrapper.a(context);
        ThemeUtilsCompat.d(this, getContext());
        TintResourcesHelper q = TintResourcesHelper.q(getContext(), attributeSet, a, com.google.android.embedded.projection.R.attr.autoCompleteTextViewStyle);
        if (q.p(0)) {
            setDropDownBackgroundDrawable(q.h(0));
        }
        q.n();
        AppCompatBackgroundHelper nhVar = new AppCompatBackgroundHelper(this);
        this.b = nhVar;
        nhVar.b(attributeSet, com.google.android.embedded.projection.R.attr.autoCompleteTextViewStyle);
        TextViewAutoSizeHelper omVar = new TextViewAutoSizeHelper(this);
        this.c = omVar;
        omVar.b(attributeSet, com.google.android.embedded.projection.R.attr.autoCompleteTextViewStyle);
        omVar.a();
    }

    @Override // android.widget.TextView, android.view.View
    protected final void drawableStateChanged() {
        super.drawableStateChanged();
        AppCompatBackgroundHelper nhVar = this.b;
        if (nhVar != null) {
            nhVar.a();
        }
        TextViewAutoSizeHelper omVar = this.c;
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

    @Override // android.view.View
    public final void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        AppCompatBackgroundHelper nhVar = this.b;
        if (nhVar != null) {
            nhVar.e();
        }
    }

    @Override // android.view.View
    public final void setBackgroundResource(int i) {
        super.setBackgroundResource(NavInstructionTypeEnum);
        AppCompatBackgroundHelper nhVar = this.b;
        if (nhVar != null) {
            nhVar.c(NavInstructionTypeEnum);
        }
    }

    @Override // android.widget.AutoCompleteTextView
    public final void setDropDownBackgroundResource(int i) {
        setDropDownBackgroundDrawable(SimpleHolderKj.b(getContext(), i));
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        TextViewAutoSizeHelper omVar = this.c;
        if (omVar != null) {
            omVar.c(context, i);
        }
    }
}
