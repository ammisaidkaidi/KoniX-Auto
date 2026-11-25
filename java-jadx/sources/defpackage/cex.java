package defpackage;

import android.os.Parcel;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cex implements ceo {
    private final bkc a;

    public cex(bkc bkcVar) {
        this.a = bkcVar;
    }

    private static dag f(brh brhVar) {
        final das e = das.e();
        brhVar.f(czj.a, new brc() { // from class: btm
            @Override // defpackage.brc
            public final void a(brh brhVar2) {
                das dasVar = das.this;
                if (((bro) brhVar2).d) {
                    dasVar.cancel(false);
                    return;
                }
                if (brhVar2.d()) {
                    dasVar.k(brhVar2.b());
                    return;
                }
                Exception a = brhVar2.a();
                if (a == null) {
                    throw new IllegalStateException();
                }
                dasVar.l(a);
            }
        });
        return cyb.e(e, bjz.class, ciu.b, czj.a);
    }

    @Override // defpackage.ceo
    public final dag a(String str) {
        str.getClass();
        return f(this.a.e(str));
    }

    @Override // defpackage.ceo
    public final dag b() {
        bkc bkcVar = this.a;
        bmb a = bmc.a();
        a.a = new blx() { // from class: bov
            @Override // defpackage.blx
            public final void a(Object obj, Object obj2) {
                bqi bqiVar = new bqi((brk) obj2);
                bqj bqjVar = (bqj) ((bqk) obj).w();
                Parcel a2 = bqjVar.a();
                asr.c(a2, bqiVar);
                a2.writeString("com.google.android.apps.auto.aareceiver#com.google.android.embedded.projection");
                bqjVar.c(10, a2);
            }
        };
        return f(bkcVar.c(a.a()).g(czj.a, new aga()));
    }

    @Override // defpackage.ceo
    public final dag c(String str, String str2) {
        str.getClass();
        str2.getClass();
        return f(this.a.g(str, str2).g(czj.a, new aga()));
    }

    @Override // defpackage.ceo
    public final dag d(int i, String[] strArr, byte[] bArr) {
        return f(this.a.f("com.google.android.apps.auto.aareceiver#com.google.android.embedded.projection", i, strArr, bArr));
    }

    @Override // defpackage.ceo
    public final dag e() {
        return hh.j(null);
    }
}
