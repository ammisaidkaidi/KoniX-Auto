package defpackage;

import android.content.Context;
import android.database.ContentObserver;
import android.util.Log;

/* compiled from: PG */
/* loaded from: classes.dex */
final class cdu implements cdr {
    private static cdu b;
    public final Context a;
    private final ContentObserver c;

    private cdu() {
        this.a = null;
        this.c = null;
    }

    private cdu(Context context) {
        this.a = context;
        cdt cdtVar = new cdt();
        this.c = cdtVar;
        context.getContentResolver().registerContentObserver(brr.a, true, cdtVar);
    }

    static cdu b(Context context) {
        cdu cduVar;
        synchronized (cdu.class) {
            if (b == null) {
                b = r.k(context, "com.google.android.providers.gsf.permission.READ_GSERVICES") == 0 ? new cdu(context) : new cdu();
            }
            cduVar = b;
        }
        return cduVar;
    }

    static synchronized void d() {
        Context context;
        synchronized (cdu.class) {
            cdu cduVar = b;
            if (cduVar != null && (context = cduVar.a) != null && cduVar.c != null) {
                context.getContentResolver().unregisterContentObserver(b.c);
            }
            b = null;
        }
    }

    @Override // defpackage.cdr
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public final String a(final String str) {
        if (this.a == null) {
            return null;
        }
        try {
            return (String) act.a(new cdq() { // from class: cds
                @Override // defpackage.cdq
                public final Object a() {
                    cdu cduVar = cdu.this;
                    return brr.b(cduVar.a.getContentResolver(), str);
                }
            });
        } catch (IllegalStateException | NullPointerException | SecurityException e) {
            String valueOf = String.valueOf(str);
            Log.e("GservicesLoader", valueOf.length() != 0 ? "Unable to read GServices for: ".concat(valueOf) : new String("Unable to read GServices for: "), e);
            return null;
        }
    }
}
