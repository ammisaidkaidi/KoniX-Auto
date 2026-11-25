package defpackage;

import android.os.Handler;
import android.os.Looper;
import android.view.ViewGroup;
import java.util.Set;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class FragmentStrictModePolicyHandler {
    private static final LifecycleObserverClassSet a = yy.a;

    public static final void a(AndroidxFragment brVar, String str) {
        brVar.getClass();
        FragmentReuseViolation ywVar = new FragmentReuseViolation(brVar, str);
        h(ywVar);
        LifecycleObserverClassSet f = f(brVar);
        if (f.b.contains(StrictModePenaltyPolicy.DETECT_FRAGMENT_REUSE) && i(f, brVar.getClass(), ywVar.getClass())) {
            g(f, ywVar);
        }
    }

    public static final void b(AndroidxFragment brVar, ViewGroup viewGroup) {
        brVar.getClass();
        FragmentTagUsageViolation zbVar = new FragmentTagUsageViolation(brVar, viewGroup);
        h(zbVar);
        LifecycleObserverClassSet f = f(brVar);
        if (f.b.contains(StrictModePenaltyPolicy.DETECT_FRAGMENT_TAG_USAGE) && i(f, brVar.getClass(), zbVar.getClass())) {
            g(f, zbVar);
        }
    }

    public static final void c(AndroidxFragment brVar) {
        GetTargetFragmentViolation zcVar = new GetTargetFragmentViolation(brVar);
        h(zcVar);
        LifecycleObserverClassSet f = f(brVar);
        if (f.b.contains(StrictModePenaltyPolicy.DETECT_TARGET_FRAGMENT_USAGE) && i(f, brVar.getClass(), zcVar.getClass())) {
            g(f, zcVar);
        }
    }

    public static final void d(AndroidxFragment brVar, ViewGroup viewGroup) {
        brVar.getClass();
        WrongFragmentContainerViolation zgVar = new WrongFragmentContainerViolation(brVar, viewGroup);
        h(zgVar);
        LifecycleObserverClassSet f = f(brVar);
        if (f.b.contains(StrictModePenaltyPolicy.DETECT_WRONG_FRAGMENT_CONTAINER) && i(f, brVar.getClass(), zgVar.getClass())) {
            g(f, zgVar);
        }
    }

    public static final void e(AndroidxFragment brVar, AndroidxFragment brVar2) {
        SetTargetFragmentViolation zdVar = new SetTargetFragmentViolation(brVar, brVar2);
        h(zdVar);
        LifecycleObserverClassSet f = f(brVar);
        if (f.b.contains(StrictModePenaltyPolicy.DETECT_TARGET_FRAGMENT_USAGE) && i(f, brVar.getClass(), zdVar.getClass())) {
            g(f, zdVar);
        }
    }

    private static final LifecycleObserverClassSet f(AndroidxFragment brVar) {
        while (brVar != null) {
            if (brVar.X()) {
                brVar.A();
            }
            brVar = brVar.D;
        }
        return a;
    }

    private static final void g(LifecycleObserverClassSet yyVar, FragmentRuntimeException zfVar) {
        AndroidxFragment brVar = zfVar.a;
        String name = brVar.getClass().getName();
        if (yyVar.b.contains(StrictModePenaltyPolicy.PENALTY_LOG)) {
            CommonObjectsAndPreconditionsUtil.d("Policy violation in ", name);
        }
        if (yyVar.b.contains(StrictModePenaltyPolicy.PENALTY_DEATH)) {
            FragmentStrictModeViolationRunnable yzVar = new FragmentStrictModeViolationRunnable(name, zfVar);
            if (!brVar.X()) {
                yzVar.run();
                return;
            }
            Handler handler = brVar.A().j.d;
            if (CommonObjectsAndPreconditionsUtil.e(handler.getLooper(), Looper.myLooper())) {
                yzVar.run();
            } else {
                handler.post(yzVar);
            }
        }
    }

    private static final void h(FragmentRuntimeException zfVar) {
        if (FragmentManagerImpl.R(3)) {
            CommonObjectsAndPreconditionsUtil.d("StrictMode violation in ", zfVar.a.getClass().getName());
        }
    }

    private static final boolean i(LifecycleObserverClassSet yyVar, Class cls, Class cls2) {
        Set set = (Set) yyVar.c.get(GalTransportThread);
        if (set == null) {
            return true;
        }
        return (CommonObjectsAndPreconditionsUtil.e(cls2.getSuperclass(), FragmentRuntimeException.class) || !set.contains(cls2.getSuperclass())) && !set.contains(cls2);
    }
}
