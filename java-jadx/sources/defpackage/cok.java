package defpackage;

import java.util.concurrent.TimeUnit;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cok {
    public final cor a;
    public boolean b;
    public long c;
    public long d;

    public cok() {
        this.a = cor.a;
    }

    public cok(cor corVar) {
        corVar.getClass();
        this.a = corVar;
    }

    public static cok b(cor corVar) {
        return new cok(corVar);
    }

    private final long d() {
        return this.b ? (this.a.a() - this.d) + this.c : this.c;
    }

    public final long a(TimeUnit timeUnit) {
        return timeUnit.convert(d(), TimeUnit.NANOSECONDS);
    }

    public final void c() {
        ex.s(!this.b, "This stopwatch is already running.");
        this.b = true;
        this.d = this.a.a();
    }

    public final String toString() {
        String str;
        long d = d();
        TimeUnit timeUnit = TimeUnit.DAYS.convert(d, TimeUnit.NANOSECONDS) > 0 ? TimeUnit.DAYS : TimeUnit.HOURS.convert(d, TimeUnit.NANOSECONDS) > 0 ? TimeUnit.HOURS : TimeUnit.MINUTES.convert(d, TimeUnit.NANOSECONDS) > 0 ? TimeUnit.MINUTES : TimeUnit.SECONDS.convert(d, TimeUnit.NANOSECONDS) > 0 ? TimeUnit.SECONDS : TimeUnit.MILLISECONDS.convert(d, TimeUnit.NANOSECONDS) > 0 ? TimeUnit.MILLISECONDS : TimeUnit.MICROSECONDS.convert(d, TimeUnit.NANOSECONDS) > 0 ? TimeUnit.MICROSECONDS : TimeUnit.NANOSECONDS;
        double d2 = d;
        double convert = TimeUnit.NANOSECONDS.convert(1L, timeUnit);
        Double.isNaN(d2);
        Double.isNaN(convert);
        String b = coe.b(d2 / convert);
        switch (coj.a[timeUnit.ordinal()]) {
            case 1:
                str = "ns";
                break;
            case 2:
                str = "μs";
                break;
            case 3:
                str = "ms";
                break;
            case 4:
                str = "s";
                break;
            case 5:
                str = "min";
                break;
            case 6:
                str = "h";
                break;
            case 7:
                str = "d";
                break;
            default:
                throw new AssertionError();
        }
        StringBuilder sb = new StringBuilder(String.valueOf(b).length() + 1 + str.length());
        sb.append(b);
        sb.append(" ");
        sb.append(str);
        return sb.toString();
    }
}
