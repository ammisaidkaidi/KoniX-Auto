package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public class cb {
    private static final vi a = new vi();

    public static Class a(ClassLoader classLoader, String str) {
        vi viVar = a;
        vi viVar2 = (vi) viVar.get(classLoader);
        if (viVar2 == null) {
            viVar2 = new vi();
            viVar.put(classLoader, viVar2);
        }
        Class cls = (Class) viVar2.get(str);
        if (cls != null) {
            return cls;
        }
        Class<?> cls2 = Class.forName(str, false, classLoader);
        viVar2.put(str, cls2);
        return cls2;
    }

    public br b(String str) {
        throw null;
    }
}
