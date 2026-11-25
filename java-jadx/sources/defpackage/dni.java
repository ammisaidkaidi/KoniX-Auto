package defpackage;

import android.content.Context;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dni implements dnh {
    public static final cgj a;
    public static final cgj b;
    public static final cgj c;

    static {
        cgo e = new cgo("com.google.android.libraries.performance.primes").d().e();
        a = e.b("45359218", true);
        b = e.b("45359255", false);
        c = e.b("36", true);
    }

    @Override // defpackage.dnh
    public final boolean a(Context context) {
        return ((Boolean) a.b(context)).booleanValue();
    }

    @Override // defpackage.dnh
    public final boolean b(Context context) {
        return ((Boolean) b.b(context)).booleanValue();
    }

    @Override // defpackage.dnh
    public final boolean c(Context context) {
        return ((Boolean) c.b(context)).booleanValue();
    }
}
