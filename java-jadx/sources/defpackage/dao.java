package defpackage;

import java.util.Locale;
import java.util.concurrent.TimeUnit;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dao {
    public final dan a;
    public double b;
    double c;
    public double d;
    public long e = 0;
    private volatile Object f;

    public dao(dan danVar) {
        this.a = danVar;
    }

    public static dao a(double d) {
        dao daoVar = new dao(new dan(null));
        boolean z = false;
        double d2 = 0.0d;
        if (d > 0.0d && !Double.isNaN(d)) {
            z = true;
        }
        ex.m(z, "rate must be positive");
        synchronized (daoVar.b()) {
            daoVar.c(daoVar.a.a());
            double micros = TimeUnit.SECONDS.toMicros(1L);
            Double.isNaN(micros);
            daoVar.d = micros / d;
            double d3 = daoVar.c;
            daoVar.c = d;
            if (d3 == Double.POSITIVE_INFINITY) {
                daoVar.b = d;
            } else {
                if (d3 != 0.0d) {
                    d2 = (daoVar.b * d) / d3;
                }
                daoVar.b = d2;
            }
        }
        return daoVar;
    }

    public final Object b() {
        Object obj = this.f;
        if (obj == null) {
            synchronized (this) {
                obj = this.f;
                if (obj == null) {
                    obj = new Object();
                    this.f = obj;
                }
            }
        }
        return obj;
    }

    public final void c(long j) {
        long j2 = this.e;
        if (j > j2) {
            double d = this.d;
            double d2 = this.c;
            double d3 = this.b;
            double d4 = j - j2;
            Double.isNaN(d4);
            this.b = Math.min(d2, d3 + (d4 / d));
            this.e = j;
        }
    }

    public final String toString() {
        double d;
        Locale locale = Locale.ROOT;
        Object[] objArr = new Object[1];
        synchronized (b()) {
            double micros = TimeUnit.SECONDS.toMicros(1L);
            double d2 = this.d;
            Double.isNaN(micros);
            d = micros / d2;
        }
        objArr[0] = Double.valueOf(d);
        return String.format(locale, "RateLimiter[stableRate=%3.1fqps]", objArr);
    }
}
