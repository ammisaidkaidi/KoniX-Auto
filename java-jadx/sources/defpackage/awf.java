package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class awf implements bdr {
    final /* synthetic */ awg a;
    final /* synthetic */ awh b;

    public awf(awh awhVar, awg awgVar) {
        this.b = awhVar;
        this.a = awgVar;
    }

    @Override // defpackage.bdr
    public final /* synthetic */ void a(int i) {
    }

    @Override // defpackage.bdr
    public final void b(bdt bdtVar) {
        ddf n = clc.g.n();
        String str = bdtVar.a;
        if (n.c) {
            n.k();
            n.c = false;
        }
        clc clcVar = (clc) n.b;
        int i = clcVar.a | 1;
        clcVar.a = i;
        clcVar.b = str;
        String str2 = bdtVar.b;
        int i2 = i | 4;
        clcVar.a = i2;
        clcVar.d = str2;
        String str3 = bdtVar.c;
        int i3 = i2 | 2;
        clcVar.a = i3;
        clcVar.c = str3;
        clcVar.e = 8;
        int i4 = 8 | i3;
        clcVar.a = i4;
        int i5 = bdtVar.e;
        if (i5 != 0) {
            clcVar.f = i5 - 1;
            clcVar.a = i4 | 16;
        }
        this.b.j(this.a.a(), 3, n.h());
    }

    @Override // defpackage.bdr
    public final /* synthetic */ void c() {
    }
}
