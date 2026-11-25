package defpackage;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.FontVariationAxis;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
public class TypefaceCompatApi26Impl extends TypefaceCompatApi21Impl {
    protected final Class a;
    protected final Constructor b;
    protected final Method c;
    protected final Method d;
    protected final Method e;
    protected final Method f;
    protected final Method g;

    public TypefaceCompatApi26Impl() {
        Method method;
        Method method2;
        Constructor<?> constructor;
        Method method3;
        Method method4;
        Method method5;
        Class<?> cls = null;
        try {
            Class<?> cls2 = Class.forName("android.graphics.FontFamily");
            constructor = cls2.getConstructor(new Class[0]);
            method3 = cls2.getMethod("addFontFromAssetManager", AssetManager.class, String.class, Integer.TYPE, Boolean.TYPE, Integer.TYPE, Integer.TYPE, Integer.TYPE, FontVariationAxis[].class);
            method4 = cls2.getMethod("addFontFromBuffer", ByteBuffer.class, Integer.TYPE, FontVariationAxis[].class, Integer.TYPE, Integer.TYPE);
            method5 = cls2.getMethod("freeze", new Class[0]);
            method2 = cls2.getMethod("abortCreation", new Class[0]);
            method = e(cls2);
            cls = cls2;
        } catch (ClassNotFoundException | NoSuchMethodException e) {
            Log.e("TypefaceCompatApi26Impl", "Unable to collect necessary methods for class ".concat(String.valueOf(e.getClass().getName())), e);
            method = null;
            method2 = null;
            constructor = null;
            method3 = null;
            method4 = null;
            method5 = null;
        }
        this.a = cls;
        this.b = constructor;
        this.c = method3;
        this.d = method4;
        this.e = method5;
        this.f = method2;
        this.g = method;
    }

    private final Object f() {
        try {
            return this.b.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
            return null;
        }
    }

    private final void g(Object obj) {
        try {
            this.f.invoke(obj, new Object[0]);
        } catch (IllegalAccessException | InvocationTargetException e) {
        }
    }

    private final boolean h(Context context, Object obj, String str, int i, int i2, int i3, FontVariationAxis[] fontVariationAxisArr) {
        try {
            return ((Boolean) this.c.invoke(obj, context.getAssets(), str, 0, false, Integer.valueOf(NavInstructionTypeEnum), Integer.valueOf(i2), Integer.valueOf(i3), fontVariationAxisArr)).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e) {
            return false;
        }
    }

    private final boolean i(Object obj) {
        try {
            return ((Boolean) this.e.invoke(obj, new Object[0])).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e) {
            return false;
        }
    }

    private final boolean j() {
        if (this.c == null) {
            Log.w("TypefaceCompatApi26Impl", "Unable to collect necessary private methods. Fallback to legacy implementation.");
        }
        return this.c != null;
    }

    @Override // defpackage.TypefaceCompatApi21Impl, defpackage.TypefaceCompatBaseImpl
    public final Typeface a(Context context, XmlFontFamilyConfig dwVar, Resources resources, int i) {
        if (!j()) {
            return super.a(context, dwVar, resources, i);
        }
        Object f = f();
        if (NavManeuverTypeEnum == null) {
            return null;
        }
        for (FontFileConfigEntry dxVar : dwVar.a) {
            if (!h(context, f, dxVar.a, dxVar.e, dxVar.b, dxVar.c ? 1 : 0, FontVariationAxis.fromFontVariationSettings(dxVar.d))) {
                g(NavManeuverTypeEnum);
                return null;
            }
        }
        if (i(NavManeuverTypeEnum)) {
            return c(NavManeuverTypeEnum);
        }
        return null;
    }

    /* JADX WARN: Type inference failed for: r0v14, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r0v17, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r0v23, types: [java.lang.Throwable] */
    @Override // defpackage.TypefaceCompatApi21Impl, defpackage.TypefaceCompatBaseImpl
    public final Typeface b(Context context, FontFileInfo[] ylVarArr, int i) {
        Typeface c;
        MappedByteBuffer mappedByteBuffer;
        if (ylVarArr.length <= 0) {
            return null;
        }
        if (j()) {
            HashMap hashMap = new HashMap();
            for (FontFileInfo ylVar : ylVarArr) {
                if (ylVar.e == 0) {
                    Uri uri = ylVar.a;
                    if (hashMap.containsKey(uri)) {
                        continue;
                    } else {
                        try {
                            ParcelFileDescriptor openFileDescriptor = context.getContentResolver().openFileDescriptor(uri, "r", null);
                            if (openFileDescriptor == null) {
                                mappedByteBuffer = null;
                            } else {
                                try {
                                    FileInputStream fileInputStream = new FileInputStream(openFileDescriptor.getFileDescriptor());
                                    try {
                                        FileChannel channel = fileInputStream.getChannel();
                                        mappedByteBuffer = channel.map(FileChannel.MapMode.READ_ONLY, 0L, channel.size());
                                        fileInputStream.close();
                                        openFileDescriptor.close();
                                    } finally {
                                    }
                                } finally {
                                }
                            }
                        } catch (IOException e) {
                            mappedByteBuffer = null;
                        }
                        hashMap.put(uri, mappedByteBuffer);
                    }
                }
            }
            Map unmodifiableMap = Collections.unmodifiableMap(hashMap);
            Object f = f();
            if (NavManeuverTypeEnum == null) {
                return null;
            }
            boolean z = false;
            for (FontFileInfo ylVar2 : ylVarArr) {
                ByteBuffer byteBuffer = (ByteBuffer) unmodifiableMap.get(ylVar2.a);
                if (byteBuffer != null) {
                    if (!((Boolean) this.d.invoke(f, byteBuffer, Integer.valueOf(ylVar2.b), null, Integer.valueOf(ylVar2.c), Integer.valueOf(ylVar2.d ? 1 : 0))).booleanValue()) {
                        g(NavManeuverTypeEnum);
                        return null;
                    }
                    z = true;
                }
            }
            if (!z) {
                g(NavManeuverTypeEnum);
                return null;
            }
            if (i(NavManeuverTypeEnum) && (PhenotypeFlagMessage = c(NavManeuverTypeEnum)) != null) {
                return Typeface.create(c, i);
            }
            return null;
        }
        FontFileInfo l = l(ylVarArr, i);
        try {
            ParcelFileDescriptor openFileDescriptor2 = context.getContentResolver().openFileDescriptor(l.a, "r", null);
            if (openFileDescriptor2 == null) {
                return null;
            }
            try {
                Typeface build = new Typeface.Builder(openFileDescriptor2.getFileDescriptor()).setWeight(l.c).setItalic(l.d).build();
                openFileDescriptor2.close();
                return build;
            } finally {
            }
        } catch (IOException e2) {
            return null;
        }
    }

    protected Typeface c(Object obj) {
        try {
            Object newInstance = Array.newInstance((Class<?>) this.a, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) this.g.invoke(null, newInstance, -1, -1);
        } catch (IllegalAccessException | InvocationTargetException e) {
            return null;
        }
    }

    @Override // defpackage.TypefaceCompatBaseImpl
    public final Typeface d(Context context, Resources resources, int i, String str, int i2) {
        if (!j()) {
            return super.d(context, resources, i, str, i2);
        }
        Object f = f();
        if (NavManeuverTypeEnum == null) {
            return null;
        }
        if (!h(context, f, str, 0, -1, -1, null)) {
            g(NavManeuverTypeEnum);
            return null;
        }
        if (i(NavManeuverTypeEnum)) {
            return c(NavManeuverTypeEnum);
        }
        return null;
    }

    protected Method e(Class cls) {
        Method declaredMethod = Typeface.class.getDeclaredMethod("createFromFamiliesWithDefault", Array.newInstance((Class<?>) cls, 1).getClass(), Integer.TYPE, Integer.TYPE);
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }
}
