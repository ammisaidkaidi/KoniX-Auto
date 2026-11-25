package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.ParcelFileDescriptor;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* compiled from: PG */
/* loaded from: classes.dex */
class el extends er {
    private static Class a;
    private static Constructor b;
    private static Method c;
    private static Method d;
    private static boolean e = false;

    private static Object f() {
        g();
        try {
            return b.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e2) {
            throw new RuntimeException(e2);
        }
    }

    private static void g() {
        Method method;
        Class<?> cls;
        Method method2;
        if (e) {
            return;
        }
        e = true;
        Constructor<?> constructor = null;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            Constructor<?> constructor2 = cls.getConstructor(new Class[0]);
            method2 = cls.getMethod("addFontWeightStyle", String.class, Integer.TYPE, Boolean.TYPE);
            method = Typeface.class.getMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass());
            constructor = constructor2;
        } catch (ClassNotFoundException | NoSuchMethodException e2) {
            Log.e("TypefaceCompatApi21Impl", e2.getClass().getName(), e2);
            method = null;
            cls = null;
            method2 = null;
        }
        b = constructor;
        a = cls;
        c = method2;
        d = method;
    }

    private static final File h(ParcelFileDescriptor parcelFileDescriptor) {
        try {
            String readlink = Os.readlink("/proc/self/fd/" + parcelFileDescriptor.getFd());
            if (OsConstants.S_ISREG(Os.stat(readlink).st_mode)) {
                return new File(readlink);
            }
            return null;
        } catch (ErrnoException e2) {
            return null;
        }
    }

    @Override // defpackage.er
    public Typeface a(Context context, dw dwVar, Resources resources, int i) {
        Object f = f();
        for (dx dxVar : dwVar.a) {
            File a2 = ev.a(context);
            if (a2 == null) {
                return null;
            }
            try {
                if (ev.d(a2, resources, dxVar.f)) {
                    String path = a2.getPath();
                    int i2 = dxVar.b;
                    boolean z = dxVar.c;
                    g();
                    try {
                        if (((Boolean) c.invoke(f, path, Integer.valueOf(i2), Boolean.valueOf(z))).booleanValue()) {
                            a2.delete();
                        }
                    } catch (IllegalAccessException | InvocationTargetException e2) {
                        throw new RuntimeException(e2);
                    }
                }
            } catch (RuntimeException e3) {
            } catch (Throwable th) {
                a2.delete();
                throw th;
            }
            a2.delete();
            return null;
        }
        g();
        try {
            Object newInstance = Array.newInstance((Class<?>) a, 1);
            Array.set(newInstance, 0, f);
            return (Typeface) d.invoke(null, newInstance);
        } catch (IllegalAccessException | InvocationTargetException e4) {
            throw new RuntimeException(e4);
        }
    }

    @Override // defpackage.er
    public Typeface b(Context context, yl[] ylVarArr, int i) {
        if (ylVarArr.length <= 0) {
            return null;
        }
        yl l = l(ylVarArr, i);
        try {
            ParcelFileDescriptor openFileDescriptor = context.getContentResolver().openFileDescriptor(l.a, "r", null);
            if (openFileDescriptor == null) {
                return null;
            }
            try {
                File h = h(openFileDescriptor);
                if (h != null && h.canRead()) {
                    Typeface createFromFile = Typeface.createFromFile(h);
                    openFileDescriptor.close();
                    return createFromFile;
                }
                FileInputStream fileInputStream = new FileInputStream(openFileDescriptor.getFileDescriptor());
                try {
                    Typeface k = super.k(context, fileInputStream);
                    fileInputStream.close();
                    openFileDescriptor.close();
                    return k;
                } catch (Throwable th) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th2) {
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                try {
                    openFileDescriptor.close();
                } catch (Throwable th4) {
                }
                throw th3;
            }
        } catch (IOException e2) {
            return null;
        }
    }
}
