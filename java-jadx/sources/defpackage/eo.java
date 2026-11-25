package defpackage;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.Font;
import android.graphics.fonts.FontFamily;
import android.graphics.fonts.FontStyle;
import android.os.ParcelFileDescriptor;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class eo extends er {
    @Override // defpackage.er
    public final Typeface a(Context context, dw dwVar, Resources resources, int i) {
        try {
            FontFamily.Builder builder = null;
            for (dx dxVar : dwVar.a) {
                try {
                    Font build = new Font.Builder(resources, dxVar.f).setWeight(dxVar.b).setSlant(dxVar.c ? 1 : 0).setTtcIndex(dxVar.e).setFontVariationSettings(dxVar.d).build();
                    if (builder == null) {
                        builder = new FontFamily.Builder(build);
                    } else {
                        builder.addFont(build);
                    }
                } catch (IOException e) {
                }
            }
            if (builder == null) {
                return null;
            }
            return new Typeface.CustomFallbackBuilder(builder.build()).setStyle(new FontStyle(1 != (i & 1) ? 400 : 700, (i & 2) != 0 ? 1 : 0)).build();
        } catch (Exception e2) {
            return null;
        }
    }

    /* JADX WARN: Type inference failed for: r6v2, types: [java.lang.Throwable] */
    @Override // defpackage.er
    public final Typeface b(Context context, yl[] ylVarArr, int i) {
        ContentResolver contentResolver = context.getContentResolver();
        try {
            FontFamily.Builder builder = null;
            for (yl ylVar : ylVarArr) {
                try {
                    ParcelFileDescriptor openFileDescriptor = contentResolver.openFileDescriptor(ylVar.a, "r", null);
                    if (openFileDescriptor == null) {
                        continue;
                    } else {
                        try {
                            Font build = new Font.Builder(openFileDescriptor).setWeight(ylVar.c).setSlant(ylVar.d ? 1 : 0).setTtcIndex(ylVar.b).build();
                            if (builder == null) {
                                builder = new FontFamily.Builder(build);
                            } else {
                                builder.addFont(build);
                            }
                            try {
                                openFileDescriptor.close();
                            } catch (IOException e) {
                            }
                        } catch (Throwable th) {
                            try {
                                openFileDescriptor.close();
                            } catch (Throwable th2) {
                            }
                            throw th;
                        }
                    }
                } catch (IOException e2) {
                }
            }
            if (builder == null) {
                return null;
            }
            return new Typeface.CustomFallbackBuilder(builder.build()).setStyle(new FontStyle(1 != (i & 1) ? 400 : 700, (i & 2) != 0 ? 1 : 0)).build();
        } catch (Exception e3) {
            return null;
        }
    }

    @Override // defpackage.er
    public final Typeface d(Context context, Resources resources, int i, String str, int i2) {
        try {
            Font build = new Font.Builder(resources, i).build();
            return new Typeface.CustomFallbackBuilder(new FontFamily.Builder(build).build()).setStyle(build.getStyle()).build();
        } catch (Exception e) {
            return null;
        }
    }

    @Override // defpackage.er
    protected final Typeface k(Context context, InputStream inputStream) {
        throw new RuntimeException("Do not use this function in API 29 or later.");
    }

    @Override // defpackage.er
    protected final yl l(yl[] ylVarArr, int i) {
        throw new RuntimeException("Do not use this function in API 29 or later.");
    }
}
