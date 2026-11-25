package defpackage;

import android.R;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.TextView;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class CarUiTextViewBase extends TextView {
    public CarUiTextViewBase(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.textViewStyle, 0);
    }

    public abstract void a(CarUiListItemData amoVar);
}
