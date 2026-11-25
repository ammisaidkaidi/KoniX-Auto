package defpackage;

import android.content.Context;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class boc {
    private static final boc a = new boc();
    private dhq b = null;

    public static dhq b(Context context) {
        return a.a(context);
    }

    public final synchronized dhq a(Context context) {
        if (this.b == null) {
            if (context.getApplicationContext() != null) {
                context = context.getApplicationContext();
            }
            this.b = new dhq(context);
        }
        return this.b;
    }
}
