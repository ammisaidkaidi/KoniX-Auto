package defpackage;

import android.os.Looper;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bka {
    public ho a;
    private Looper b;

    public final bkb a() {
        if (this.a == null) {
            this.a = new ho();
        }
        if (this.b == null) {
            this.b = Looper.getMainLooper();
        }
        return new bkb(this.a, this.b, null);
    }
}
