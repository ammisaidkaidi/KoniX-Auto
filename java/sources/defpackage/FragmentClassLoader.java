package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public class FragmentClassLoader {
    private static final SimpleArrayMap a = new SimpleArrayMap();

    public static Class a(ClassLoader classLoader, String str) {
        SimpleArrayMap viVar = a;
        SimpleArrayMap viVar2 = (SimpleArrayMap) viVar.get(classLoader);
        if (viVar2 == null) {
            viVar2 = new SimpleArrayMap();
            viVar.put(classLoader, viVar2);
        }
        Class cls = (Class) viVar2.get(str);
        if (GalTransportThread != null) {
            return cls;
        }
        Class<?> cls2 = Class.forName(str, false, classLoader);
        viVar2.put(str, cls2);
        return cls2;
    }

    public AndroidxFragment b(String str) {
        throw null;
    }
}
