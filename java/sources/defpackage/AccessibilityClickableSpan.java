package defpackage;

import android.os.Bundle;
import android.text.style.ClickableSpan;
import android.view.View;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class AccessibilityClickableSpan extends ClickableSpan {
    private final int a;
    private final AccessibilityNodeInfoCompatImpl b;
    private final int c;

    public AccessibilityClickableSpan(int i, AccessibilityNodeInfoCompatImpl ikVar, int i2) {
        this.a = i;
        this.b = ikVar;
        this.c = i2;
    }

    @Override // android.text.style.ClickableSpan
    public final void onClick(View view) {
        Bundle bundle = new Bundle();
        bundle.putInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", this.a);
        AccessibilityNodeInfoCompatImpl ikVar = this.b;
        ikVar.a.performAction(this.c, bundle);
    }
}
