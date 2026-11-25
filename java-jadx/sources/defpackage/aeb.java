package defpackage;

import android.database.sqlite.SQLiteException;
import android.util.Log;
import java.util.Collections;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.Lock;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class aeb {
    final String[] b;
    final aee c;
    public volatile afn i;
    xt j = null;
    AtomicBoolean d = new AtomicBoolean(false);
    public volatile boolean e = false;
    final up g = new up();
    Runnable h = new adz(this);
    public aea f = new aea();
    final HashMap a = new HashMap();

    public aeb(aee aeeVar, Map map, String... strArr) {
        this.c = aeeVar;
        Collections.newSetFromMap(new IdentityHashMap());
        this.b = new String[7];
        for (int i = 0; i < 7; i++) {
            String lowerCase = strArr[i].toLowerCase(Locale.US);
            this.a.put(lowerCase, Integer.valueOf(i));
            String str = (String) map.get(strArr[i]);
            if (str != null) {
                this.b[i] = str.toLowerCase(Locale.US);
            } else {
                this.b[i] = lowerCase;
            }
        }
        for (Map.Entry entry : map.entrySet()) {
            String lowerCase2 = ((String) entry.getValue()).toLowerCase(Locale.US);
            if (this.a.containsKey(lowerCase2)) {
                String lowerCase3 = ((String) entry.getKey()).toLowerCase(Locale.US);
                HashMap hashMap = this.a;
                hashMap.put(lowerCase3, (Integer) hashMap.get(lowerCase2));
            }
        }
    }

    public final void a(afh afhVar) {
        if (afhVar.i()) {
            return;
        }
        try {
            Lock c = this.c.c();
            c.lock();
            try {
                synchronized (this.f) {
                }
            } finally {
                c.unlock();
            }
        } catch (SQLiteException | IllegalStateException e) {
            Log.e("ROOM", "Cannot run invalidation tracker. Is the db closed?", e);
        }
    }
}
