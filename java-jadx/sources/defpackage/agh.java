package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class agh {
    public static final agh a = new agh(new agg());
    public boolean b;
    public boolean c;
    public boolean d;
    public boolean e;
    public long f;
    public long g;
    public agj h;
    public int i;

    public agh() {
        this.i = 1;
        this.f = -1L;
        this.g = -1L;
        this.h = new agj();
    }

    public final boolean a() {
        return this.h.a() > 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        agh aghVar = (agh) obj;
        if (this.b == aghVar.b && this.c == aghVar.c && this.d == aghVar.d && this.e == aghVar.e && this.f == aghVar.f && this.g == aghVar.g && this.i == aghVar.i) {
            return this.h.equals(aghVar.h);
        }
        return false;
    }

    public agh(agg aggVar) {
        this.i = 1;
        this.f = -1L;
        this.g = -1L;
        this.h = new agj();
        this.b = false;
        this.c = false;
        this.i = 1;
        this.d = false;
        this.e = false;
        this.h = aggVar.a;
        this.f = -1L;
        this.g = -1L;
    }

    public final int hashCode() {
        int i = this.i;
        if (i == 0) {
            throw null;
        }
        boolean z = this.b;
        boolean z2 = this.c;
        boolean z3 = this.d;
        boolean z4 = this.e;
        long j = this.f;
        long j2 = this.g;
        return (((((((((((((i * 31) + (z ? 1 : 0)) * 31) + (z2 ? 1 : 0)) * 31) + (z3 ? 1 : 0)) * 31) + (z4 ? 1 : 0)) * 31) + ((int) ((j >>> 32) ^ j))) * 31) + ((int) ((j2 >>> 32) ^ j2))) * 31) + this.h.hashCode();
    }

    public agh(agh aghVar) {
        this.i = 1;
        this.f = -1L;
        this.g = -1L;
        this.h = new agj();
        this.b = aghVar.b;
        this.c = aghVar.c;
        this.i = aghVar.i;
        this.d = aghVar.d;
        this.e = aghVar.e;
        this.h = aghVar.h;
    }
}
