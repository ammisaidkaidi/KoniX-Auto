package defpackage;

import android.content.Context;
import android.content.pm.PackageManager;
import android.view.View;
import android.widget.PopupWindow;
import java.lang.ref.WeakReference;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ir {
    public static Boolean a;
    public static Boolean b;
    private static Boolean c;
    private static Boolean d;

    public ir(vx vxVar) {
        new WeakReference(vxVar);
        vn.o(vxVar.J);
        vn.o(vxVar.K);
        vn.o(vxVar.L);
        vn.o(vxVar.M);
        vn.o(vxVar.N);
    }

    public static void a(PopupWindow popupWindow, View view, int i, int i2, int i3) {
        popupWindow.showAsDropDown(view, i, i2, i3);
    }

    public static boolean b(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (c == null) {
            c = Boolean.valueOf(packageManager.hasSystemFeature("android.hardware.type.watch"));
        }
        return c.booleanValue();
    }

    public static void c(Context context) {
        if (b(context)) {
            if (d == null) {
                d = Boolean.valueOf(context.getPackageManager().hasSystemFeature("cn.google"));
            }
            d.booleanValue();
        }
    }

    public static boolean d(int[] iArr, int i) {
        for (int i2 : iArr) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }
}
