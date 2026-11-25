package defpackage;

import android.os.Build;
import android.view.accessibility.AccessibilityNodeInfo;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class QuadIntValue {
    public final Object a;

    public QuadIntValue() {
        int i = Build.VERSION.SDK_INT;
        throw null;
    }

    public QuadIntValue(Object obj) {
        this.a = obj;
    }

    public static QuadIntValue a(int i, int i2, int i3, int i4) {
        return new QuadIntValue(AccessibilityNodeInfo.CollectionItemInfo.obtain(i, i2, i3, i4, false, false));
    }
}
