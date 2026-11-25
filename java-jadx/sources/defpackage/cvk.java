package defpackage;

import android.os.Build;
import android.util.Log;
import dalvik.system.VMStack;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cvk extends cva {
    private static final boolean a = cvj.a();
    private static final boolean b;
    private static final cuz c;

    static {
        boolean z = true;
        if (Build.FINGERPRINT != null && !"robolectric".equals(Build.FINGERPRINT)) {
            z = false;
        }
        b = z;
        Log.class.getName();
        c = new cvi();
    }

    static Class p() {
        return VMStack.getStackClass2();
    }

    static String q() {
        try {
            return VMStack.getStackClass2().getName();
        } catch (Throwable th) {
            return null;
        }
    }

    static boolean t() {
        try {
            Class.forName("dalvik.system.VMStack").getMethod("getStackClass2", new Class[0]);
            return cvj.class.getName().equals(q());
        } catch (Throwable th) {
            return false;
        }
    }

    @Override // defpackage.cva
    protected cuc e(String str) {
        if (cvn.a.get() != null) {
            return ((cvf) cvn.a.get()).a(str);
        }
        cvn cvnVar = new cvn(str.replace('$', '.'));
        cvl.a.offer(cvnVar);
        if (cvn.a.get() == null) {
            return cvnVar;
        }
        cvn.e();
        return cvnVar;
    }

    @Override // defpackage.cva
    protected cuz h() {
        return c;
    }

    @Override // defpackage.cva
    protected cvs j() {
        return cvo.a;
    }

    @Override // defpackage.cva
    protected String m() {
        return "platform: Android";
    }
}
