package defpackage;

import android.content.SharedPreferences;
import android.os.StrictMode;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cel implements cdr {
    public static final Map a = new vb();
    public final Object b;
    public volatile Map c;
    public final List d;
    private final SharedPreferences e;
    private final SharedPreferences.OnSharedPreferenceChangeListener f;

    public cel(SharedPreferences sharedPreferences) {
        SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: cek
            @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
            public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences2, String str) {
                cel celVar = cel.this;
                synchronized (celVar.b) {
                    celVar.c = null;
                    cei.e();
                }
                synchronized (celVar) {
                    Iterator it = celVar.d.iterator();
                    while (it.hasNext()) {
                        ((cdp) it.next()).a();
                    }
                }
            }
        };
        this.f = onSharedPreferenceChangeListener;
        this.b = new Object();
        this.d = new ArrayList();
        this.e = sharedPreferences;
        sharedPreferences.registerOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
    }

    static synchronized void b() {
        synchronized (cel.class) {
            for (cel celVar : a.values()) {
                celVar.e.unregisterOnSharedPreferenceChangeListener(celVar.f);
            }
            a.clear();
        }
    }

    @Override // defpackage.cdr
    public final Object a(String str) {
        Map<String, ?> map = this.c;
        if (map == null) {
            synchronized (this.b) {
                map = this.c;
                if (map == null) {
                    StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
                    try {
                        Map<String, ?> all = this.e.getAll();
                        this.c = all;
                        StrictMode.setThreadPolicy(allowThreadDiskReads);
                        map = all;
                    } catch (Throwable th) {
                        StrictMode.setThreadPolicy(allowThreadDiskReads);
                        throw th;
                    }
                }
            }
        }
        if (map != null) {
            return map.get(str);
        }
        return null;
    }
}
