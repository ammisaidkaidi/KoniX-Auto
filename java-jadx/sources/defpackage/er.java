package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.util.Log;
import androidx.preference.Preference;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Field;

/* compiled from: PG */
/* loaded from: classes.dex */
public class er {
    private final ConcurrentHashMap a = new ConcurrentHashMap();

    private static long f(Typeface typeface) {
        if (typeface == null) {
            return 0L;
        }
        try {
            Field declaredField = Typeface.class.getDeclaredField("native_instance");
            declaredField.setAccessible(true);
            return ((Number) declaredField.get(typeface)).longValue();
        } catch (IllegalAccessException e) {
            Log.e("TypefaceCompatBaseImpl", "Could not retrieve font from family.", e);
            return 0L;
        } catch (NoSuchFieldException e2) {
            Log.e("TypefaceCompatBaseImpl", "Could not retrieve font from family.", e2);
            return 0L;
        }
    }

    private static Object g(Object[] objArr, int i, eq eqVar) {
        int i2 = 1 != (i & 1) ? 400 : 700;
        boolean z = (i & 2) != 0;
        Object obj = null;
        int i3 = Preference.DEFAULT_ORDER;
        for (Object obj2 : objArr) {
            int abs = Math.abs(eqVar.a(obj2) - i2);
            int i4 = abs + abs + (eqVar.b(obj2) == z ? 0 : 1);
            if (obj == null || i3 > i4) {
                obj = obj2;
                i3 = i4;
            }
        }
        return obj;
    }

    public Typeface a(Context context, dw dwVar, Resources resources, int i) {
        dx dxVar = (dx) g(dwVar.a, i, new ep(0));
        if (dxVar == null) {
            return null;
        }
        Typeface b = ek.b(context, resources, dxVar.f, dxVar.a, i);
        long f = f(b);
        if (f != 0) {
            this.a.put(Long.valueOf(f), dwVar);
        }
        return b;
    }

    public Typeface b(Context context, yl[] ylVarArr, int i) {
        InputStream inputStream;
        InputStream inputStream2 = null;
        if (ylVarArr.length <= 0) {
            return null;
        }
        try {
            inputStream = context.getContentResolver().openInputStream(l(ylVarArr, i).a);
        } catch (IOException e) {
            inputStream = null;
        } catch (Throwable th) {
            th = th;
        }
        try {
            Typeface k = k(context, inputStream);
            ev.b(inputStream);
            return k;
        } catch (IOException e2) {
            ev.b(inputStream);
            return null;
        } catch (Throwable th2) {
            th = th2;
            inputStream2 = inputStream;
            ev.b(inputStream2);
            throw th;
        }
    }

    public Typeface d(Context context, Resources resources, int i, String str, int i2) {
        File a = ev.a(context);
        if (a == null) {
            return null;
        }
        try {
            if (ev.d(a, resources, i)) {
                Typeface createFromFile = Typeface.createFromFile(a.getPath());
                a.delete();
                return createFromFile;
            }
        } catch (RuntimeException e) {
        } catch (Throwable th) {
            a.delete();
            throw th;
        }
        a.delete();
        return null;
    }

    protected Typeface k(Context context, InputStream inputStream) {
        File a = ev.a(context);
        if (a == null) {
            return null;
        }
        try {
            if (ev.c(a, inputStream)) {
                Typeface createFromFile = Typeface.createFromFile(a.getPath());
                a.delete();
                return createFromFile;
            }
        } catch (RuntimeException e) {
        } catch (Throwable th) {
            a.delete();
            throw th;
        }
        a.delete();
        return null;
    }

    protected yl l(yl[] ylVarArr, int i) {
        return (yl) g(ylVarArr, i, new ep(1));
    }
}
