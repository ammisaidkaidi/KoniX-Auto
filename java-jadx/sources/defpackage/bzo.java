package defpackage;

import java.util.Random;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bzo implements dhx {
    private final dny a;
    private final /* synthetic */ int b;

    public bzo(dny dnyVar, int i) {
        this.b = i;
        this.a = dnyVar;
    }

    @Override // defpackage.dny
    public final /* synthetic */ Object a() {
        switch (this.b) {
            case 0:
                coc cocVar = (coc) ((dhy) this.a).a;
                bzp bzpVar = new bzp(null);
                return (bzq) cocVar.b(new bzq(bzpVar.a, bzpVar.b));
            case 1:
                return new bzj(this.a);
            case 2:
                return new cbr((Random) this.a.a());
            default:
                Object o = cdh.c((coc) ((dhy) this.a).a) ? cqw.o(cde.b()) : csf.a;
                dpx.m(o);
                return o;
        }
    }
}
