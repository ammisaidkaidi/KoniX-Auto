package defpackage;

import android.os.Handler;
import android.os.Looper;
import android.view.ViewGroup;
import java.util.Set;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class za {
    private static final yy a = yy.a;

    public static final void a(br brVar, String str) {
        brVar.getClass();
        yw ywVar = new yw(brVar, str);
        h(ywVar);
        yy f = f(brVar);
        if (f.b.contains(yx.DETECT_FRAGMENT_REUSE) && i(f, brVar.getClass(), ywVar.getClass())) {
            g(f, ywVar);
        }
    }

    public static final void b(br brVar, ViewGroup viewGroup) {
        brVar.getClass();
        zb zbVar = new zb(brVar, viewGroup);
        h(zbVar);
        yy f = f(brVar);
        if (f.b.contains(yx.DETECT_FRAGMENT_TAG_USAGE) && i(f, brVar.getClass(), zbVar.getClass())) {
            g(f, zbVar);
        }
    }

    public static final void c(br brVar) {
        zc zcVar = new zc(brVar);
        h(zcVar);
        yy f = f(brVar);
        if (f.b.contains(yx.DETECT_TARGET_FRAGMENT_USAGE) && i(f, brVar.getClass(), zcVar.getClass())) {
            g(f, zcVar);
        }
    }

    public static final void d(br brVar, ViewGroup viewGroup) {
        brVar.getClass();
        zg zgVar = new zg(brVar, viewGroup);
        h(zgVar);
        yy f = f(brVar);
        if (f.b.contains(yx.DETECT_WRONG_FRAGMENT_CONTAINER) && i(f, brVar.getClass(), zgVar.getClass())) {
            g(f, zgVar);
        }
    }

    public static final void e(br brVar, br brVar2) {
        zd zdVar = new zd(brVar, brVar2);
        h(zdVar);
        yy f = f(brVar);
        if (f.b.contains(yx.DETECT_TARGET_FRAGMENT_USAGE) && i(f, brVar.getClass(), zdVar.getClass())) {
            g(f, zdVar);
        }
    }

    private static final yy f(br brVar) {
        while (brVar != null) {
            if (brVar.X()) {
                brVar.A();
            }
            brVar = brVar.D;
        }
        return a;
    }

    private static final void g(yy yyVar, zf zfVar) {
        br brVar = zfVar.a;
        String name = brVar.getClass().getName();
        if (yyVar.b.contains(yx.PENALTY_LOG)) {
            dpx.d("Policy violation in ", name);
        }
        if (yyVar.b.contains(yx.PENALTY_DEATH)) {
            yz yzVar = new yz(name, zfVar);
            if (!brVar.X()) {
                yzVar.run();
                return;
            }
            Handler handler = brVar.A().j.d;
            if (dpx.e(handler.getLooper(), Looper.myLooper())) {
                yzVar.run();
            } else {
                handler.post(yzVar);
            }
        }
    }

    private static final void h(zf zfVar) {
        if (cr.R(3)) {
            dpx.d("StrictMode violation in ", zfVar.a.getClass().getName());
        }
    }

    private static final boolean i(yy yyVar, Class cls, Class cls2) {
        Set set = (Set) yyVar.c.get(cls);
        if (set == null) {
            return true;
        }
        return (dpx.e(cls2.getSuperclass(), zf.class) || !set.contains(cls2.getSuperclass())) && !set.contains(cls2);
    }
}
