package defpackage;

import android.os.Build;
import android.view.accessibility.AccessibilityNodeInfo;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class czd {
    public final Object a;

    public czd() {
        int i = Build.VERSION.SDK_INT;
        throw null;
    }

    public czd(Object obj) {
        this.a = obj;
    }

    public static czd a(int i, int i2, int i3, int i4) {
        return new czd(AccessibilityNodeInfo.CollectionItemInfo.obtain(i, i2, i3, i4, false, false));
    }
}
