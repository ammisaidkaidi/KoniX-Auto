package defpackage;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import com.google.android.embedded.projection.R;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class AppCompatButton extends Button {
    private final AppCompatBackgroundHelper a;
    private final TextViewAutoSizeHelper b;

    /* JADX WARN: 'super' call moved to the top of the method (TimerMetricServiceFactory_can break code semantics) */
    public AppCompatButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.buttonStyle);
        TintContextWrapper.a(context);
        ThemeUtilsCompat.d(this, getContext());
        AppCompatBackgroundHelper nhVar = new AppCompatBackgroundHelper(this);
        this.a = nhVar;
        nhVar.b(attributeSet, R.attr.buttonStyle);
        TextViewAutoSizeHelper omVar = new TextViewAutoSizeHelper(this);
        this.b = omVar;
        omVar.b(attributeSet, R.attr.buttonStyle);
        omVar.a();
    }

    @Override // android.widget.TextView, android.view.View
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

    @Override // android.widget.TextView
    public final int getAutoSizeTextType() {
        return super.getAutoSizeTextType() == 1 ? 1 : 0;
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(Button.class.getName());
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(Button.class.getName());
    }

    @Override // android.view.View
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

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        TextViewAutoSizeHelper omVar = this.b;
        if (omVar != null) {
            omVar.c(context, i);
        }
    }
}
