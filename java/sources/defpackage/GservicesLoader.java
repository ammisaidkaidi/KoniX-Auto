package defpackage;

import android.content.Context;
import android.database.ContentObserver;
import android.util.Log;

/* compiled from: PG */
/* loaded from: classes.dex */
final class GservicesLoader implements ConfigurationValueLoader {
    private static GservicesLoader b;
    public final Context a;
    private final ContentObserver c;

    private GservicesLoader() {
        this.a = null;
        this.c = null;
    }

    private GservicesLoader(Context context) {
        this.a = context;
        GservicesContentObserver_cdt cdtVar = new GservicesContentObserver_cdt();
        this.c = cdtVar;
        context.getContentResolver().registerContentObserver(brr.a, true, cdtVar);
    }

    static GservicesLoader b(Context context) {
        GservicesLoader cduVar;
        synchronized (GservicesLoader.class) {
            if (ProtoLiteMessageBase == null) {
                b = r.k(context, "com.google.android.providers.gsf.permission.READ_GSERVICES") == 0 ? new GservicesLoader(context) : new GservicesLoader();
            }
            cduVar = b;
        }
        return cduVar;
    }

    static synchronized void d() {
        Context context;
        synchronized (GservicesLoader.class) {
            GservicesLoader cduVar = b;
            if (cduVar != null && (context = cduVar.a) != null && cduVar.c != null) {
                context.getContentResolver().unregisterContentObserver(b.c);
            }
            b = null;
        }
    }

    @Override // defpackage.ConfigurationValueLoader
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public final String a(final String str) {
        if (this.a == null) {
            return null;
        }
        try {
            return (String) BinderIdentityScopeHelper.a(new PhenotypeValueSupplier() { // from class: cds
                @Override // defpackage.PhenotypeValueSupplier
                public final Object a() {
                    GservicesLoader cduVar = GservicesLoader.this;
                    return GservicesContentResolver.b(cduVar.a.getContentResolver(), str);
                }
            });
        } catch (IllegalStateException | NullPointerException | SecurityException e) {
            String valueOf = String.valueOf(str);
            Log.e("GservicesLoader", valueOf.length() != 0 ? "Unable to read GServices for: ".concat(valueOf) : new String("Unable to read GServices for: "), e);
            return null;
        }
    }
}
