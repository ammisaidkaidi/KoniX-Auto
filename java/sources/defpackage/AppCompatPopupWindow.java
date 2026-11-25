package defpackage;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.PopupWindow;

/* compiled from: PG */
/* loaded from: classes.dex */
final class AppCompatPopupWindow extends PopupWindow {
    public AppCompatPopupWindow(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, 0);
        TintResourcesHelper q = TintResourcesHelper.q(context, attributeSet, ki.r, i);
        if (q.p(2)) {
            ConstraintLayoutStateParser.a(this, q.o(2, false));
        }
        setBackgroundDrawable(q.h(0));
        q.n();
    }
}
