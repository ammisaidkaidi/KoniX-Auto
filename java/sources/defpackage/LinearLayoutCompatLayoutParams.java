package defpackage;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.LinearLayout;

/* compiled from: PG */
/* loaded from: classes.dex */
public class LinearLayoutCompatLayoutParams extends LinearLayout.LayoutParams {
    public LinearLayoutCompatLayoutParams(int i) {
        super(i, -2);
    }

    public LinearLayoutCompatLayoutParams(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public LinearLayoutCompatLayoutParams(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
    }
}
