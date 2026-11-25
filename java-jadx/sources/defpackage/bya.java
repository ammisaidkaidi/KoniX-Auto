package defpackage;

import android.content.Context;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class bya implements col {
    public final /* synthetic */ Context a;
    private final /* synthetic */ int b;

    public /* synthetic */ bya(Context context, int i) {
        this.b = i;
        this.a = context;
    }

    @Override // defpackage.col
    public final Object a() {
        switch (this.b) {
            case 0:
                Context context = this.a;
                if (bxx.a == 0) {
                    synchronized (bxx.class) {
                        if (bxx.a == 0) {
                            int a = bxx.a(context);
                            if (a <= 0) {
                                a = 60;
                            }
                            double d = a;
                            Double.isNaN(d);
                            bxx.a = (int) Math.ceil(1000.0d / d);
                        }
                    }
                }
                return Integer.valueOf(bxx.a);
            case 1:
                return this.a.getSharedPreferences("primes", 0);
            case 2:
                return Boolean.valueOf(dng.a.a().c(this.a));
            case 3:
                return new cex(bos.a(this.a));
            default:
                Context context2 = this.a;
                int i = cei.d;
                return afo.c(context2);
        }
    }
}
