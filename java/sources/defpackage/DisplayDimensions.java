package defpackage;

import android.content.Context;
import android.content.SharedPreferences;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class DisplayDimensions {
    public final SharedPreferences a;

    public DisplayDimensions(Context context) {
        this.a = PreferenceManager.c(context);
    }

    public final int a() {
        return this.a.getInt("height", 0);
    }

    public final int b() {
        return this.a.getInt("width", 0);
    }

    public final boolean c() {
        return this.a.contains("width") && this.a.contains("height") && b() != 0 && a() != 0;
    }
}
