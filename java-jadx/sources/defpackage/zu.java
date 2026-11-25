package defpackage;

import androidx.lifecycle.CompositeGeneratedAdaptersObserver;
import androidx.lifecycle.FullLifecycleObserverAdapter;
import androidx.lifecycle.OnLifecycleEvent;
import androidx.lifecycle.ReflectiveGenericLifecycleObserver;
import androidx.lifecycle.SingleGeneratedAdapterObserver;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class zu {
    private static final Map a = new HashMap();
    private static final Map b = new HashMap();

    static zo a(Object obj) {
        boolean z = obj instanceof zo;
        boolean z2 = obj instanceof zj;
        if (z && z2) {
            return new FullLifecycleObserverAdapter((zj) obj, (zo) obj);
        }
        if (z2) {
            return new FullLifecycleObserverAdapter((zj) obj, null);
        }
        if (z) {
            return (zo) obj;
        }
        Class<?> cls = obj.getClass();
        if (b(cls) != 2) {
            return new ReflectiveGenericLifecycleObserver(obj);
        }
        List list = (List) b.get(cls);
        if (list.size() == 1) {
            return new SingleGeneratedAdapterObserver(c((Constructor) list.get(0), obj));
        }
        zk[] zkVarArr = new zk[list.size()];
        for (int i = 0; i < list.size(); i++) {
            zkVarArr[i] = c((Constructor) list.get(i), obj);
        }
        return new CompositeGeneratedAdaptersObserver(zkVarArr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0117 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static int b(Class cls) {
        Constructor constructor;
        Class superclass;
        int length;
        Integer num = (Integer) a.get(cls);
        if (num != null) {
            return num.intValue();
        }
        int i = 2;
        if (cls.getCanonicalName() == null) {
            i = 1;
        } else {
            ArrayList arrayList = null;
            int i2 = 0;
            try {
                Package r5 = cls.getPackage();
                String canonicalName = cls.getCanonicalName();
                String name = r5 != null ? r5.getName() : "";
                if (!name.isEmpty()) {
                    canonicalName = canonicalName.substring(name.length() + 1);
                }
                String concat = String.valueOf(canonicalName.replace(".", "_")).concat("_LifecycleAdapter");
                if (!name.isEmpty()) {
                    concat = name + "." + concat;
                }
                constructor = Class.forName(concat).getDeclaredConstructor(cls);
                if (!constructor.isAccessible()) {
                    constructor.setAccessible(true);
                }
            } catch (ClassNotFoundException e) {
                constructor = null;
            } catch (NoSuchMethodException e2) {
                throw new RuntimeException(e2);
            }
            if (constructor != null) {
                b.put(cls, Collections.singletonList(constructor));
            } else {
                zi ziVar = zi.a;
                Boolean bool = (Boolean) ziVar.b.get(cls);
                if (bool != null) {
                    if (bool.booleanValue()) {
                        i = 1;
                    }
                    superclass = cls.getSuperclass();
                    if (d(superclass)) {
                        if (b(superclass) == 1) {
                            i = 1;
                        } else {
                            arrayList = new ArrayList((Collection) b.get(superclass));
                        }
                    }
                    Class<?>[] interfaces = cls.getInterfaces();
                    length = interfaces.length;
                    while (true) {
                        if (i2 >= length) {
                            Class<?> cls2 = interfaces[i2];
                            if (d(cls2)) {
                                if (b(cls2) == 1) {
                                    i = 1;
                                    break;
                                }
                                if (arrayList == null) {
                                    arrayList = new ArrayList();
                                }
                                arrayList.addAll((Collection) b.get(cls2));
                            }
                            i2++;
                        } else if (arrayList != null) {
                            b.put(cls, arrayList);
                        } else {
                            i = 1;
                        }
                    }
                } else {
                    Method[] a2 = ziVar.a(cls);
                    for (Method method : a2) {
                        if (((OnLifecycleEvent) method.getAnnotation(OnLifecycleEvent.class)) != null) {
                            ziVar.b(cls, a2);
                            i = 1;
                            break;
                        }
                    }
                    ziVar.b.put(cls, false);
                    superclass = cls.getSuperclass();
                    if (d(superclass)) {
                    }
                    Class<?>[] interfaces2 = cls.getInterfaces();
                    length = interfaces2.length;
                    while (true) {
                        if (i2 >= length) {
                        }
                        i2++;
                    }
                }
            }
        }
        a.put(cls, Integer.valueOf(i));
        return i;
    }

    private static zk c(Constructor constructor, Object obj) {
        try {
            return (zk) constructor.newInstance(obj);
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (InstantiationException e2) {
            throw new RuntimeException(e2);
        } catch (InvocationTargetException e3) {
            throw new RuntimeException(e3);
        }
    }

    private static boolean d(Class cls) {
        return cls != null && zp.class.isAssignableFrom(cls);
    }
}
