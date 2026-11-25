package defpackage;

import android.os.Bundle;
import android.text.style.ClickableSpan;
import android.view.View;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ii extends ClickableSpan {
    private final int a;
    private final ik b;
    private final int c;

    public ii(int i, ik ikVar, int i2) {
        this.a = i;
        this.b = ikVar;
        this.c = i2;
    }

    @Override // android.text.style.ClickableSpan
    public final void onClick(View view) {
        Bundle bundle = new Bundle();
        bundle.putInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", this.a);
        ik ikVar = this.b;
        ikVar.a.performAction(this.c, bundle);
    }
}
