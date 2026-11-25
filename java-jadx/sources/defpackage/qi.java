package defpackage;

import android.content.Context;
import android.os.Build;
import android.widget.PopupWindow;
import java.lang.reflect.Method;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class qi extends qf implements qg {
    public static Method a;
    public qg b;

    static {
        try {
            if (Build.VERSION.SDK_INT <= 28) {
                a = PopupWindow.class.getDeclaredMethod("setTouchModal", Boolean.TYPE);
            }
        } catch (NoSuchMethodException e) {
        }
    }

    public qi(Context context, int i) {
        super(context, null, i);
    }

    @Override // defpackage.qf
    public final pf o(Context context, boolean z) {
        qh qhVar = new qh(context, z);
        qhVar.e = this;
        return qhVar;
    }
}
