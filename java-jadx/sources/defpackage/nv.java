package defpackage;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.RadioButton;
import com.google.android.embedded.projection.R;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class nv extends RadioButton {
    private final nl a;
    private final nh b;
    private final om c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public nv(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.radioButtonStyle);
        sj.a(context);
        sh.d(this, getContext());
        nl nlVar = new nl(this);
        this.a = nlVar;
        nlVar.a(attributeSet, R.attr.radioButtonStyle);
        nh nhVar = new nh(this);
        this.b = nhVar;
        nhVar.b(attributeSet, R.attr.radioButtonStyle);
        om omVar = new om(this);
        this.c = omVar;
        omVar.b(attributeSet, R.attr.radioButtonStyle);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
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

    @Override // android.widget.CompoundButton, android.widget.TextView
    public final int getCompoundPaddingLeft() {
        return super.getCompoundPaddingLeft();
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

    @Override // android.widget.CompoundButton
    public final void setButtonDrawable(int i) {
        setButtonDrawable(kj.b(getContext(), i));
    }

    @Override // android.widget.CompoundButton
    public final void setButtonDrawable(Drawable drawable) {
        super.setButtonDrawable(drawable);
        nl nlVar = this.a;
        if (nlVar != null) {
            nlVar.b();
        }
    }
}
