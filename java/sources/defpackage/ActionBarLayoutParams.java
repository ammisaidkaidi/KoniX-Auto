package defpackage;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ActionBarLayoutParams extends ViewGroup.MarginLayoutParams {
    public ActionBarLayoutParams() {
        super(-1, -1);
    }

    public ActionBarLayoutParams(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ActionBarLayoutParams(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
    }
}
