package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dos extends ddk implements des {
    public static final dos ar;
    private static volatile dex as;
    public long A;
    public long B;
    public long C;
    public long D;
    public long E;
    public long F;
    public long G;
    public long H;
    public long I;
    public dor J;
    public long K;
    public dor L;
    public dor M;
    public dor N;
    public dor O;
    public dor P;
    public dor Q;
    public dor R;
    public dor S;
    public dor T;
    public dor U;
    public dor V;
    public dor W;
    public dor X;
    public long Y;
    public long Z;
    public int a;
    public long aa;
    public long ab;
    public long ac;
    public long ad;
    public long ae;
    public long af;
    public long ag;
    public long ah;
    public long ai;
    public long aj;
    public long ak;
    public long al;
    public long am;
    public dor an;
    public long ao;
    public long ap;
    public long aq;
    public int b;
    public long c;
    public long d;
    public long e;
    public long f;
    public dor m;
    public long v;
    public long w;
    public long x;
    public long y;
    public long z;
    public ddr g = dfa.b;
    public ddr h = dfa.b;
    public ddr i = dfa.b;
    public ddr j = dfa.b;
    public ddr k = dfa.b;
    public ddr l = dfa.b;
    public ddr n = dfa.b;
    public ddr o = dfa.b;
    public ddr p = dfa.b;
    public ddr u = dfa.b;

    static {
        dos dosVar = new dos();
        ar = dosVar;
        ddk.D(dos.class, dosVar);
    }

    private dos() {
    }

    public final void G() {
        ddr ddrVar = this.i;
        if (ddrVar.c()) {
            return;
        }
        this.i = ddk.z(ddrVar);
    }

    public final void H() {
        ddr ddrVar = this.j;
        if (ddrVar.c()) {
            return;
        }
        this.j = ddk.z(ddrVar);
    }

    public final void I() {
        ddr ddrVar = this.k;
        if (ddrVar.c()) {
            return;
        }
        this.k = ddk.z(ddrVar);
    }

    public final void J() {
        ddr ddrVar = this.l;
        if (ddrVar.c()) {
            return;
        }
        this.l = ddk.z(ddrVar);
    }

    public final void K() {
        ddr ddrVar = this.n;
        if (ddrVar.c()) {
            return;
        }
        this.n = ddk.z(ddrVar);
    }

    public final void L(long j) {
        this.a |= 2048;
        this.B = j;
    }

    public final void M(long j) {
        this.a |= 4096;
        this.C = j;
    }

    public final void N(long j) {
        this.a |= 8192;
        this.D = j;
    }

    public final void O(long j) {
        this.a |= 16384;
        this.E = j;
    }

    public final void P(long j) {
        this.a |= 32768;
        this.F = j;
    }

    public final void Q(long j) {
        this.a |= 65536;
        this.G = j;
    }

    public final void R(long j) {
        this.a |= 131072;
        this.H = j;
    }

    public final void S(long j) {
        this.a |= 262144;
        this.I = j;
    }

    public final void T(dor dorVar) {
        this.J = dorVar;
        this.a |= 524288;
    }

    public final void U(long j) {
        this.a |= 1048576;
        this.K = j;
    }

    public final void V(dor dorVar) {
        this.L = dorVar;
        this.a |= 2097152;
    }

    public final void W(dor dorVar) {
        this.M = dorVar;
        this.a |= 4194304;
    }

    public final void X(dor dorVar) {
        this.N = dorVar;
        this.a |= 8388608;
    }

    public final void Y(dor dorVar) {
        this.O = dorVar;
        this.a |= 16777216;
    }

    public final void Z(dor dorVar) {
        this.P = dorVar;
        this.a |= 33554432;
    }

    public final void aa(dor dorVar) {
        this.Q = dorVar;
        this.a |= 67108864;
    }

    public final void ab(dor dorVar) {
        this.R = dorVar;
        this.a |= 134217728;
    }

    public final void ac(dor dorVar) {
        this.S = dorVar;
        this.a |= 268435456;
    }

    public final void ad(dor dorVar) {
        this.T = dorVar;
        this.a |= 536870912;
    }

    public final void ae(dor dorVar) {
        this.U = dorVar;
        this.a |= 1073741824;
    }

    public final void af(dor dorVar) {
        this.V = dorVar;
        this.a |= Integer.MIN_VALUE;
    }

    public final void ag(dor dorVar) {
        this.W = dorVar;
        this.b |= 1;
    }

    public final void ah(dor dorVar) {
        this.X = dorVar;
        this.b |= 2;
    }

    public final void ai(long j) {
        this.b |= 4;
        this.Y = j;
    }

    public final void aj(long j) {
        this.b |= 8;
        this.Z = j;
    }

    public final void ak(long j) {
        this.b |= 16;
        this.aa = j;
    }

    public final void al(long j) {
        this.b |= 32;
        this.ab = j;
    }

    public final void am(long j) {
        this.b |= 64;
        this.ac = j;
    }

    public final void an(long j) {
        this.b |= 128;
        this.ad = j;
    }

    public final void ao(long j) {
        this.b |= 256;
        this.ae = j;
    }

    public final void ap(long j) {
        this.b |= 512;
        this.af = j;
    }

    public final void aq(long j) {
        this.b |= 1024;
        this.ag = j;
    }

    public final void ar(long j) {
        this.b |= 2048;
        this.ah = j;
    }

    public final boolean as() {
        return (this.b & 131072) != 0;
    }

    public final dor at() {
        dor dorVar = this.an;
        return dorVar == null ? dor.e : dorVar;
    }

    public final boolean au() {
        return (this.b & 262144) != 0;
    }

    public final boolean av() {
        return (this.b & 524288) != 0;
    }

    public final boolean aw() {
        return (this.b & 1048576) != 0;
    }

    public final void c() {
        ddr ddrVar = this.g;
        if (ddrVar.c()) {
            return;
        }
        this.g = ddk.z(ddrVar);
    }

    public final void k() {
        ddr ddrVar = this.h;
        if (ddrVar.c()) {
            return;
        }
        this.h = ddk.z(ddrVar);
    }

    @Override // defpackage.ddk
    protected final Object a(int i, Object obj) {
        switch (i - 1) {
            case 0:
                return (byte) 1;
            case 1:
            default:
                return null;
            case 2:
                return C(ar, "\u0001?\u0000\u0002\u0001@?\u0000\n\u0000\u0001ဂ\u0000\u0002ဂ\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005\u001b\u0006\u001b\u0007\u001b\b\u001b\t\u001b\n\u001b\u000bဉ\u0004\f\u001b\r\u001b\u000e\u001b\u000f\u001b\u0010ဂ\u0005\u0011ဂ\u0006\u0012ဂ\u0007\u0013ဂ\b\u0014ဂ\t\u0015ဂ\n\u0016ဂ\u000b\u0017ဂ\f\u0018ဂ\r\u0019ဂ\u000e\u001aဂ\u000f\u001bဂ\u0010\u001cဂ\u0011\u001dဂ\u0012\u001eဉ\u0013\u001fဂ\u0014 ဉ\u0015!ဉ\u0016\"ဉ\u0017#ဉ\u0018$ဉ\u0019%ဉ\u001a&ဉ\u001b'ဉ\u001c(ဉ\u001d)ဉ\u001e*ဉ\u001f+ဉ ,ဉ!-ဂ\".ဂ#/ဂ$0ဂ%1ဂ&2ဂ'3ဂ(4ဂ)5ဂ*6ဂ+7ဂ,8ဂ-9ဂ.:ဂ/;ဂ0=ဉ1>ဂ2?ဂ3@ဂ4", new Object[]{"a", "b", "c", "d", "e", "f", "g", dor.class, "h", dor.class, "i", dor.class, "j", dor.class, "k", dor.class, "l", dor.class, "m", "n", dor.class, "o", doo.class, "p", dop.class, "u", don.class, "v", "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "aa", "ab", "ac", "ad", "ae", "af", "ag", "ah", "ai", "aj", "ak", "al", "am", "an", "ao", "ap", "aq"});
            case 3:
                return new dos();
            case 4:
                return new ddf(ar);
            case 5:
                return ar;
            case 6:
                dex dexVar = as;
                if (dexVar == null) {
                    synchronized (dos.class) {
                        dexVar = as;
                        if (dexVar == null) {
                            dexVar = new ddg(ar);
                            as = dexVar;
                        }
                    }
                }
                return dexVar;
        }
    }
}
