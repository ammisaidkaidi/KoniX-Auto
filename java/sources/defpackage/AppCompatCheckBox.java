package defpackage;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.CheckBox;
import com.google.android.embedded.projection.R;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class AppCompatCheckBox extends CheckBox {
    private final AppCompatCompoundButtonHelper a;
    private final AppCompatBackgroundHelper b;
    private final TextViewAutoSizeHelper c;

    /* JADX WARN: 'super' call moved to the top of the method (TimerMetricServiceFactory_can break code semantics) */
    public AppCompatCheckBox(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.checkboxStyle);
        TintContextWrapper.a(context);
        ThemeUtilsCompat.d(this, getContext());
        AppCompatCompoundButtonHelper nlVar = new AppCompatCompoundButtonHelper(this);
        this.a = nlVar;
        nlVar.a(attributeSet, R.attr.checkboxStyle);
        AppCompatBackgroundHelper nhVar = new AppCompatBackgroundHelper(this);
        this.b = nhVar;
        nhVar.b(attributeSet, R.attr.checkboxStyle);
        TextViewAutoSizeHelper omVar = new TextViewAutoSizeHelper(this);
        this.c = omVar;
        omVar.b(attributeSet, R.attr.checkboxStyle);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
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

    @Override // android.widget.CompoundButton, android.widget.TextView
    public final int getCompoundPaddingLeft() {
        return super.getCompoundPaddingLeft();
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

    @Override // android.widget.CompoundButton
    public final void setButtonDrawable(int i) {
        setButtonDrawable(SimpleHolderKj.b(getContext(), i));
    }

    @Override // android.widget.CompoundButton
    public final void setButtonDrawable(Drawable drawable) {
        super.setButtonDrawable(drawable);
        AppCompatCompoundButtonHelper nlVar = this.a;
        if (nlVar != null) {
            nlVar.b();
        }
    }
}
