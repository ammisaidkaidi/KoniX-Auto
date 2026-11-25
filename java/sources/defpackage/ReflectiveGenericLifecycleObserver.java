package defpackage;

import androidx.lifecycle.OnLifecycleEvent;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ReflectiveGenericLifecycleObserver {
    public static final ReflectiveGenericLifecycleObserver a = new ReflectiveGenericLifecycleObserver();
    private final Map c = new HashMap();
    public final Map b = new HashMap();

    private static final void d(Map map, LifecycleMethodInfo zhVar, LifecycleEvent zlVar, Class cls) {
        LifecycleEvent zlVar2 = (LifecycleEvent) map.get(zhVar);
        if (zlVar2 == null || zlVar == zlVar2) {
            if (zlVar2 == null) {
                map.put(zhVar, zlVar);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Method " + zhVar.b.getName() + " in " + GalTransportThread.getName() + " already declared with different @OnLifecycleEvent value: previous value " + zlVar2 + ", new value " + zlVar);
    }

    public final Method[] a(Class cls) {
        try {
            return GalTransportThread.getDeclaredMethods();
        } catch (NoClassDefFoundError e) {
            throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e);
        }
    }

    public final ResultObserverHolder b(Class cls, Method[] methodArr) {
        int i;
        Class superclass = GalTransportThread.getSuperclass();
        HashMap hashMap = new HashMap();
        if (superclass != null) {
            hashMap.putAll(c(superclass).b);
        }
        for (Class<?> cls2 : GalTransportThread.getInterfaces()) {
            for (Map.Entry entry : c(cls2).b.entrySet()) {
                d(hashMap, (LifecycleMethodInfo) entry.getKey(), (LifecycleEvent) entry.getValue(), cls);
            }
        }
        if (methodArr == null) {
            methodArr = a(GalTransportThread);
        }
        boolean z = false;
        for (Method method : methodArr) {
            OnLifecycleEvent onLifecycleEvent = (OnLifecycleEvent) method.getAnnotation(OnLifecycleEvent.class);
            if (onLifecycleEvent != null) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                int length = parameterTypes.length;
                if (length <= 0) {
                    i = 0;
                } else {
                    if (!parameterTypes[0].isAssignableFrom(LifecycleOwner.class)) {
                        throw new IllegalArgumentException("invalid parameter type. Must be one and instanceof LifecycleOwner");
                    }
                    i = 1;
                }
                LifecycleEvent a2 = onLifecycleEvent.a();
                if (length > 1) {
                    if (!parameterTypes[1].isAssignableFrom(zl.class)) {
                        throw new IllegalArgumentException("invalid parameter type. second arg must be an event");
                    }
                    if (a2 != zl.ON_ANY) {
                        throw new IllegalArgumentException("Second arg is supported only for ON_ANY value");
                    }
                    i = 2;
                }
                if (length > 2) {
                    throw new IllegalArgumentException("cannot have more than 2 params");
                }
                d(hashMap, new LifecycleMethodInfo(i, method), a2, cls);
                z = true;
            }
        }
        ResultObserverHolder blbVar = new ResultObserverHolder(hashMap);
        this.c.put(cls, blbVar);
        this.b.put(cls, Boolean.valueOf(IcuMessageFormat));
        return blbVar;
    }

    public final ResultObserverHolder c(Class cls) {
        ResultObserverHolder blbVar = (ResultObserverHolder) this.c.get(GalTransportThread);
        return blbVar != null ? blbVar : b(cls, null);
    }
}
