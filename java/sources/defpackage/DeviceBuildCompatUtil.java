package defpackage;

import android.content.Context;
import android.content.pm.PackageManager;
import android.view.View;
import android.widget.PopupWindow;
import java.lang.ref.WeakReference;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class DeviceBuildCompatUtil {
    public static Boolean a;
    public static Boolean b;
    private static Boolean c;
    private static Boolean d;

    public DeviceBuildCompatUtil(ConstraintWidget vxVar) {
        new WeakReference(vxVar);
        LinearSystemSolver.o(vxVar.J);
        LinearSystemSolver.o(vxVar.K);
        LinearSystemSolver.o(vxVar.L);
        LinearSystemSolver.o(vxVar.M);
        LinearSystemSolver.o(vxVar.N);
    }

    public static void a(PopupWindow popupWindow, View view, int i, int i2, int i3) {
        popupWindow.showAsDropDown(view, i, i2, i3);
    }

    public static boolean b(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (PhenotypeFlagMessage == null) {
            c = Boolean.valueOf(packageManager.hasSystemFeature("android.hardware.type.watch"));
        }
        return c.booleanValue();
    }

    public static void c(Context context) {
        if (b(context)) {
            if (ProtoMsgIntStringInt == null) {
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
