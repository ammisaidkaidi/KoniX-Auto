package defpackage;

import androidx.lifecycle.OnLifecycleEvent;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class zi {
    public static final zi a = new zi();
    private final Map c = new HashMap();
    public final Map b = new HashMap();

    private static final void d(Map map, zh zhVar, zl zlVar, Class cls) {
        zl zlVar2 = (zl) map.get(zhVar);
        if (zlVar2 == null || zlVar == zlVar2) {
            if (zlVar2 == null) {
                map.put(zhVar, zlVar);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Method " + zhVar.b.getName() + " in " + cls.getName() + " already declared with different @OnLifecycleEvent value: previous value " + zlVar2 + ", new value " + zlVar);
    }

    public final Method[] a(Class cls) {
        try {
            return cls.getDeclaredMethods();
        } catch (NoClassDefFoundError e) {
            throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e);
        }
    }

    public final blb b(Class cls, Method[] methodArr) {
        int i;
        Class superclass = cls.getSuperclass();
        HashMap hashMap = new HashMap();
        if (superclass != null) {
            hashMap.putAll(c(superclass).b);
        }
        for (Class<?> cls2 : cls.getInterfaces()) {
            for (Map.Entry entry : c(cls2).b.entrySet()) {
                d(hashMap, (zh) entry.getKey(), (zl) entry.getValue(), cls);
            }
        }
        if (methodArr == null) {
            methodArr = a(cls);
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
                    if (!parameterTypes[0].isAssignableFrom(zq.class)) {
                        throw new IllegalArgumentException("invalid parameter type. Must be one and instanceof LifecycleOwner");
                    }
                    i = 1;
                }
                zl a2 = onLifecycleEvent.a();
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
                d(hashMap, new zh(i, method), a2, cls);
                z = true;
            }
        }
        blb blbVar = new blb(hashMap);
        this.c.put(cls, blbVar);
        this.b.put(cls, Boolean.valueOf(z));
        return blbVar;
    }

    public final blb c(Class cls) {
        blb blbVar = (blb) this.c.get(cls);
        return blbVar != null ? blbVar : b(cls, null);
    }
}
