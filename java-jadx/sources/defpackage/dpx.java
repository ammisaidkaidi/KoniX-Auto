package defpackage;

import android.app.Application;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.ContextWrapper;
import androidx.preference.Preference;
import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dpx {
    public static Thread a;

    public static int a(int i) {
        switch (i) {
            case 0:
                return 1;
            case 1:
                return 2;
            case 2:
                return 3;
            case 3:
                return 4;
            case 4:
                return 5;
            case 5:
                return 6;
            default:
                return 0;
        }
    }

    public static int b(int i) {
        switch (i) {
            case 0:
                return 1;
            case 1:
                return 2;
            case 2:
                return 3;
            case 3:
                return 4;
            case 4:
                return 5;
            default:
                return 0;
        }
    }

    public static int c(int i) {
        switch (i) {
            case 0:
                return 1;
            case 1:
                return 2;
            case 2:
                return 3;
            case 3:
                return 4;
            case 4:
                return 5;
            case 5:
                return 6;
            case 6:
                return 7;
            case 7:
                return 8;
            case 8:
                return 9;
            case 9:
                return 10;
            case 10:
                return 11;
            case 11:
                return 12;
            case 12:
                return 13;
            case 13:
                return 14;
            case 14:
                return 15;
            default:
                return 0;
        }
    }

    public static String d(String str, Object obj) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(obj);
        return str.concat(String.valueOf(obj));
    }

    public static boolean e(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    public static int f(int i) {
        return i < 0 ? i : i < 3 ? i + 1 : i >= 1073741824 ? Preference.DEFAULT_ORDER : (int) ((i / 0.75f) + 1.0f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static int g(Iterable iterable) {
        return iterable.size();
    }

    public static final dnz h(Object obj, Object obj2) {
        return new dnz(obj, obj2);
    }

    public static final dhz i(List list, List list2) {
        return new dhz(list, list2);
    }

    public static final void j(dny dnyVar, List list) {
        list.add(dnyVar);
    }

    public static final void k(dny dnyVar, List list) {
        list.add(dnyVar);
    }

    public static void l(Object obj, Class cls) {
        if (obj == null) {
            throw new IllegalStateException(String.valueOf(cls.getCanonicalName()).concat(" must be set"));
        }
    }

    public static void m(Object obj) {
        if (obj == null) {
            throw new NullPointerException("Cannot return null from a non-@Nullable @Provides method");
        }
    }

    public static List n(int i) {
        return i == 0 ? Collections.emptyList() : new ArrayList(i);
    }

    public static void o(boolean z, String str, Object... objArr) {
        if (!z) {
            throw new IllegalStateException(String.format(str, objArr));
        }
    }

    public static void p(Object obj) {
        if (obj == null) {
            throw null;
        }
    }

    public static Object q(Context context) {
        ComponentCallbacks2 r = r(context.getApplicationContext());
        boolean z = r instanceof dht;
        Object[] objArr = {r.getClass()};
        if (z) {
            return ((dht) r).aT();
        }
        throw new IllegalArgumentException(String.format("Sting BroadcastReceiver must be attached to an @Sting Application. Found: %s", objArr));
    }

    public static Application r(Context context) {
        if (context instanceof Application) {
            return (Application) context;
        }
        Context context2 = context;
        while (context2 instanceof ContextWrapper) {
            context2 = ((ContextWrapper) context2).getBaseContext();
            if (context2 instanceof Application) {
                return (Application) context2;
            }
        }
        String valueOf = String.valueOf(context);
        String.valueOf(valueOf).length();
        throw new IllegalStateException("Could not find an Application in the given context: ".concat(String.valueOf(valueOf)));
    }

    public static Object s(Object obj, Class cls) {
        boolean z;
        if (!(obj instanceof dhs)) {
            if (obj instanceof dht) {
                return s(((dht) obj).aT(), cls);
            }
            throw new IllegalStateException(String.format("Given component holder %s does not implement %s or %s", obj.getClass(), dhs.class, dht.class));
        }
        if (obj instanceof dhu) {
            Annotation[] annotations = cls.getAnnotations();
            int length = annotations.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    z = false;
                    break;
                }
                if (annotations[i].annotationType().getCanonicalName().contentEquals("dagger.hilt.android.EarlyEntryPoint")) {
                    z = true;
                    break;
                }
                i++;
            }
            o(!z, "Interface, %s, annotated with @EarlyEntryPoint should be called with EarlyEntryPoints.get() rather than EntryPoints.get()", cls.getCanonicalName());
        }
        return cls.cast(obj);
    }

    public static int t(int i) {
        switch (i) {
            case 0:
                return 1;
            case 1:
                return 2;
            case 2:
                return 3;
            case 3:
                return 4;
            case 4:
                return 5;
            case 5:
                return 6;
            case 6:
                return 7;
            case 7:
                return 8;
            case 8:
                return 9;
            case 9:
                return 10;
            case 10:
                return 11;
            case 11:
                return 12;
            case 12:
                return 13;
            default:
                return 0;
        }
    }

    public static int u(int i) {
        if (i != 1) {
            return i - 2;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }

    public static int v(int i) {
        switch (i) {
            case 0:
                return 2;
            case 1:
                return 3;
            case 2:
                return 4;
            case 3:
                return 5;
            case 4:
                return 6;
            case 5:
                return 7;
            case 6:
                return 8;
            case 7:
                return 9;
            case 8:
                return 10;
            case 9:
                return 11;
            default:
                return 0;
        }
    }
}
