package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class FontProviderQueryHelper_ek {
    public static final TypefaceCompatBaseImpl a;
    public static final LruCacheCompat b;

    static {
        if (Build.VERSION.SDK_INT >= 29) {
            a = new TypefaceCompatPostApi29Impl();
        } else {
            a = new TypefaceCompatApi28Impl();
        }
        b = new LruCacheCompat(16);
    }

    public static Typeface a(Context context, Typeface typeface, int i) {
        if (context != null) {
            return Typeface.create(typeface, i);
        }
        throw new IllegalArgumentException("Context cannot be null");
    }

    public static Typeface b(Context context, Resources resources, int i, String str, int i2) {
        Typeface d = a.d(context, resources, i, str, i2);
        if (ProtoMsgIntStringInt != null) {
            b.c(c(resources, i, i2), d);
        }
        return d;
    }

    public static String c(Resources resources, int i, int i2) {
        return resources.getResourcePackageName(NavInstructionTypeEnum) + "-" + i + "-" + i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:55:0x0025, code lost:
    
        if (r0.equals(r2) == false) goto L14;
     */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x002a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Typeface d(Context context, FontFamilyConfig dvVar, Resources resources, int i, int i2, ResourcesCompatFontCallback ebVar) {
        Typeface typeface;
        Typeface typeface2 = null;
        if (dvVar instanceof ProviderFontFamilyConfig) {
            ProviderFontFamilyConfig dyVar = (ProviderFontFamilyConfig) dvVar;
            String str = dyVar.d;
            if (str != null) {
                if (str.isEmpty()) {
                    typeface = null;
                } else {
                    typeface = Typeface.create(str, 0);
                    Typeface create = Typeface.create(Typeface.DEFAULT, 0);
                    if (typeface != null) {
                    }
                }
                if (typeface == null) {
                    ebVar.b(typeface);
                    return typeface;
                }
                int i3 = dyVar.c;
                int i4 = dyVar.b;
                Handler c = ResourcesCompatFontCallback.c();
                FontRequestThreadConfig ymVar = new FontRequestThreadConfig(ebVar);
                FontRequestData yeVar = dyVar.a;
                FontProviderQueryHelper_yc ycVar = new FontProviderQueryHelper_yc(ymVar, c);
                if (i3 == 0) {
                    String b2 = yk.b(yeVar, i2);
                    Typeface typeface3 = (Typeface) yk.a.b(b2);
                    if (typeface3 != null) {
                        ycVar.a(new TypefaceHolder(typeface3));
                        typeface2 = typeface3;
                    } else if (i4 == -1) {
                        TypefaceHolder a2 = yk.a(b2, context, yeVar, i2);
                        ycVar.a(a2);
                        typeface2 = a2.a;
                    } else {
                        try {
                            TypefaceHolder yjVar = (TypefaceHolder) PrimesTimeoutTracker.d(yk.b, new FontRequestCallable(b2, context, yeVar, i2), i4);
                            ycVar.a(yjVar);
                            typeface2 = yjVar.a;
                        } catch (InterruptedException e) {
                            ycVar.a(new TypefaceHolder(-3));
                        }
                    }
                } else {
                    String b3 = yk.b(yeVar, i2);
                    Typeface typeface4 = (Typeface) yk.a.b(b3);
                    if (typeface4 != null) {
                        ycVar.a(new TypefaceHolder(typeface4));
                        typeface2 = typeface4;
                    } else {
                        FontResultCallbackAdapter ygVar = new FontResultCallbackAdapter(ycVar);
                        synchronized (yk.c) {
                            ArrayList arrayList = (ArrayList) yk.d.get(b3);
                            if (arrayList != null) {
                                arrayList.add(ygVar);
                            } else {
                                ArrayList arrayList2 = new ArrayList();
                                arrayList2.add(ygVar);
                                yk.d.put(b3, arrayList2);
                                yk.b.execute(new FontAsyncLoadRunnable(Looper.myLooper() == null ? new Handler(Looper.getMainLooper()) : new Handler(), new FontFamilyCallable(b3, context, yeVar, i2), new FontLoadCallback(b3)));
                            }
                        }
                    }
                }
            }
            typeface = null;
            if (typeface == null) {
            }
        } else {
            typeface2 = a.a(context, (XmlFontFamilyConfig) dvVar, resources, i2);
            if (typeface2 != null) {
                ebVar.b(typeface2);
            } else {
                ResourcesCompatFontCallback.d();
            }
        }
        if (typeface2 != null) {
            b.c(c(resources, i, i2), typeface2);
        }
        return typeface2;
    }
}
