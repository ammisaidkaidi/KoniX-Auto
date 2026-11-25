package defpackage;

import android.content.Context;
import android.content.SharedPreferences;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PhenotypeStickyAccountPrefs {
    static {
        PhenotypeConcurrentMap.a();
    }

    static SharedPreferences a(Context context) {
        return context.getSharedPreferences("PhenotypeStickyAccount", 0);
    }
}
