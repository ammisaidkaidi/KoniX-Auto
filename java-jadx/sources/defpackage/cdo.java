package defpackage;

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.StrictMode;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cdo implements cdr {
    public static final Map a = new vb();
    public static final String[] b = {"key", "value"};
    public final ContentResolver c;
    public final Uri d;
    private final ContentObserver e;
    private final Object f;
    private volatile Map g;
    private final List h;

    public cdo(ContentResolver contentResolver, Uri uri) {
        cdn cdnVar = new cdn(this);
        this.e = cdnVar;
        this.f = new Object();
        this.h = new ArrayList();
        contentResolver.getClass();
        uri.getClass();
        this.c = contentResolver;
        this.d = uri;
        contentResolver.registerContentObserver(uri, false, cdnVar);
    }

    static synchronized void b() {
        synchronized (cdo.class) {
            for (cdo cdoVar : a.values()) {
                cdoVar.c.unregisterContentObserver(cdoVar.e);
            }
            a.clear();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.cdr
    public final /* bridge */ /* synthetic */ Object a(String str) {
        Map map;
        Map map2;
        Map map3 = this.g;
        Map map4 = map3;
        if (map3 == null) {
            synchronized (this.f) {
                Map map5 = this.g;
                map = map5;
                if (map5 == null) {
                    StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
                    try {
                        try {
                            map2 = (Map) act.a(new cdq() { // from class: cdm
                                @Override // defpackage.cdq
                                public final Object a() {
                                    cdo cdoVar = cdo.this;
                                    Cursor query = cdoVar.c.query(cdoVar.d, cdo.b, null, null, null);
                                    if (query == null) {
                                        return Collections.emptyMap();
                                    }
                                    try {
                                        int count = query.getCount();
                                        if (count == 0) {
                                            return Collections.emptyMap();
                                        }
                                        Map vbVar = count <= 256 ? new vb(count) : new HashMap(count, 1.0f);
                                        while (query.moveToNext()) {
                                            vbVar.put(query.getString(0), query.getString(1));
                                        }
                                        query.close();
                                        return vbVar;
                                    } finally {
                                        query.close();
                                    }
                                }
                            });
                        } finally {
                            StrictMode.setThreadPolicy(allowThreadDiskReads);
                        }
                    } catch (SQLiteException | IllegalStateException | SecurityException e) {
                        Log.e("ConfigurationContentLoader", "PhenotypeFlag unable to load ContentProvider, using default values");
                        StrictMode.setThreadPolicy(allowThreadDiskReads);
                        map2 = null;
                    }
                    this.g = map2;
                    allowThreadDiskReads = map2;
                    map = allowThreadDiskReads;
                }
            }
            map4 = map;
        }
        if (map4 == null) {
            map4 = Collections.emptyMap();
        }
        return (String) map4.get(str);
    }

    public final void c() {
        synchronized (this.f) {
            this.g = null;
            cei.e();
        }
        synchronized (this) {
            Iterator it = this.h.iterator();
            while (it.hasNext()) {
                ((cdp) it.next()).a();
            }
        }
    }
}
