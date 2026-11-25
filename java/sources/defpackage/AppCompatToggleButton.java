package defpackage;

import android.R;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ToggleButton;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class AppCompatToggleButton extends ToggleButton {
    private final AppCompatBackgroundHelper a;
    private final TextViewAutoSizeHelper b;

    public AppCompatToggleButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.buttonStyleToggle);
        ThemeUtilsCompat.d(this, getContext());
        AppCompatBackgroundHelper nhVar = new AppCompatBackgroundHelper(this);
        this.a = nhVar;
        nhVar.b(attributeSet, R.attr.buttonStyleToggle);
        TextViewAutoSizeHelper omVar = new TextViewAutoSizeHelper(this);
        this.b = omVar;
        omVar.b(attributeSet, R.attr.buttonStyleToggle);
    }

    @Override // android.widget.ToggleButton, android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected final void drawableStateChanged() {
        super.drawableStateChanged();
        AppCompatBackgroundHelper nhVar = this.a;
        if (nhVar != null) {
            nhVar.a();
        }
        TextViewAutoSizeHelper omVar = this.b;
        if (omVar != null) {
            omVar.a();
        }
    }

    @Override // android.widget.ToggleButton, android.view.View
    public final void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        AppCompatBackgroundHelper nhVar = this.a;
        if (nhVar != null) {
            nhVar.e();
        }
    }

    @Override // android.view.View
    public final void setBackgroundResource(int i) {
        super.setBackgroundResource(NavInstructionTypeEnum);
        AppCompatBackgroundHelper nhVar = this.a;
        if (nhVar != null) {
            nhVar.c(NavInstructionTypeEnum);
        }
    }
}
