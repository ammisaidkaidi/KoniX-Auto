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
public final class ConfigurationContentLoader implements ConfigurationValueLoader {
    public static final Map a = new DesugaredArrayMap();
    public static final String[] b = {"key", "value"};
    public final ContentResolver c;
    public final Uri d;
    private final ContentObserver e;
    private final Object f;
    private volatile Map g;
    private final List h;

    public ConfigurationContentLoader(ContentResolver contentResolver, Uri uri) {
        ConfigurationContentObserver cdnVar = new ConfigurationContentObserver(this);
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
        synchronized (ConfigurationContentLoader.class) {
            for (ConfigurationContentLoader cdoVar : a.values()) {
                cdoVar.c.unregisterContentObserver(cdoVar.e);
            }
            a.clear();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.ConfigurationValueLoader
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
                            map2 = (Map) BinderIdentityScopeHelper.a(new PhenotypeValueSupplier() { // from class: cdm
                                @Override // defpackage.PhenotypeValueSupplier
                                public final Object a() {
                                    ConfigurationContentLoader cdoVar = ConfigurationContentLoader.this;
                                    Cursor query = cdoVar.c.query(cdoVar.d, cdo.b, null, null, null);
                                    if (query == null) {
                                        return Collections.emptyMap();
                                    }
                                    try {
                                        int count = query.getCount();
                                        if (count == 0) {
                                            return Collections.emptyMap();
                                        }
                                        Map vbVar = count <= 256 ? new DesugaredArrayMap(count) : new HashMap(count, 1.0f);
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
            PhenotypeFlagBase.e();
        }
        synchronized (this) {
            Iterator it = this.h.iterator();
            while (it.hasNext()) {
                ((PhenotypeInitCallback) it.next()).a();
            }
        }
    }
}
