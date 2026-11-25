package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class akk {
    public static final String a = agr.b("WorkSpec");
    public String b;
    public final String c;
    public String d;
    public agk e;
    public agk f;
    public long g;
    public long h;
    public long i;
    public agh j;
    public int k;
    public long l;
    public long m;
    public long n;
    public long o;
    public boolean p;
    public int q;
    public int r;
    public int s;

    public akk(akk akkVar) {
        this.q = 1;
        this.e = agk.a;
        this.f = agk.a;
        this.j = agh.a;
        this.r = 1;
        this.l = 30000L;
        this.o = -1L;
        this.s = 1;
        this.b = akkVar.b;
        this.c = akkVar.c;
        this.q = akkVar.q;
        this.d = akkVar.d;
        this.e = new agk(akkVar.e);
        this.f = new agk(akkVar.f);
        this.g = akkVar.g;
        this.h = akkVar.h;
        this.i = akkVar.i;
        this.j = new agh(akkVar.j);
        this.k = akkVar.k;
        this.r = akkVar.r;
        this.l = akkVar.l;
        this.m = akkVar.m;
        this.n = akkVar.n;
        this.o = akkVar.o;
        this.p = akkVar.p;
        this.s = akkVar.s;
    }

    public final boolean b() {
        return !agh.a.equals(this.j);
    }

    public final boolean c() {
        return this.q == 1 && this.k > 0;
    }

    public final boolean d() {
        return this.h != 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        akk akkVar = (akk) obj;
        if (this.g != akkVar.g || this.h != akkVar.h || this.i != akkVar.i || this.k != akkVar.k || this.l != akkVar.l || this.m != akkVar.m || this.n != akkVar.n || this.o != akkVar.o || this.p != akkVar.p || !this.b.equals(akkVar.b) || this.q != akkVar.q || !this.c.equals(akkVar.c)) {
            return false;
        }
        String str = this.d;
        if (str == null ? akkVar.d == null : str.equals(akkVar.d)) {
            return this.e.equals(akkVar.e) && this.f.equals(akkVar.f) && this.j.equals(akkVar.j) && this.r == akkVar.r && this.s == akkVar.s;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = this.b.hashCode();
        int i = this.q;
        fv.B(i);
        int hashCode2 = ((((hashCode * 31) + i) * 31) + this.c.hashCode()) * 31;
        String str = this.d;
        int hashCode3 = str != null ? str.hashCode() : 0;
        int hashCode4 = this.e.hashCode();
        int hashCode5 = this.f.hashCode();
        long j = this.g;
        long j2 = this.h;
        long j3 = this.i;
        int hashCode6 = (((((((((((((((hashCode2 + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + ((int) ((j >>> 32) ^ j))) * 31) + ((int) ((j2 >>> 32) ^ j2))) * 31) + ((int) ((j3 >>> 32) ^ j3))) * 31) + this.j.hashCode()) * 31) + this.k) * 31;
        int i2 = this.r;
        if (i2 == 0) {
            throw null;
        }
        long j4 = this.l;
        long j5 = this.m;
        long j6 = this.n;
        long j7 = this.o;
        int i3 = (((((((((((hashCode6 + i2) * 31) + ((int) (j4 ^ (j4 >>> 32)))) * 31) + ((int) ((j5 >>> 32) ^ j5))) * 31) + ((int) ((j6 >>> 32) ^ j6))) * 31) + ((int) ((j7 >>> 32) ^ j7))) * 31) + (this.p ? 1 : 0)) * 31;
        int i4 = this.s;
        if (i4 != 0) {
            return i3 + i4;
        }
        throw null;
    }

    public final String toString() {
        return "{WorkSpec: " + this.b + "}";
    }

    public final long a() {
        if (c()) {
            return this.m + Math.min(18000000L, this.r == 2 ? this.l * this.k : (long) Math.scalb(this.l, this.k - 1));
        }
        if (!d()) {
            long j = this.m;
            if (j == 0) {
                j = System.currentTimeMillis();
            }
            return j + this.g;
        }
        long currentTimeMillis = System.currentTimeMillis();
        long j2 = this.m;
        long j3 = j2 == 0 ? currentTimeMillis + this.g : j2;
        long j4 = this.i;
        long j5 = this.h;
        if (j4 != j5) {
            r1 = j2 == 0 ? -j4 : 0L;
            j3 += j5;
        } else if (j2 != 0) {
            r1 = j5;
        }
        return j3 + r1;
    }

    public akk(String str, String str2) {
        this.q = 1;
        this.e = agk.a;
        this.f = agk.a;
        this.j = agh.a;
        this.r = 1;
        this.l = 30000L;
        this.o = -1L;
        this.s = 1;
        this.b = str;
        this.c = str2;
    }
}
