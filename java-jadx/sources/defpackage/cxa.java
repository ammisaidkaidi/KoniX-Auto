package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cxa extends cxd {
    final char[] a;

    public cxa(cwz cwzVar) {
        super(cwzVar, null);
        this.a = new char[512];
        ex.l(cwzVar.b.length == 16);
        for (int i = 0; i < 256; i++) {
            this.a[i] = cwzVar.a(i >>> 4);
            this.a[i | 256] = cwzVar.a(i & 15);
        }
    }
}
