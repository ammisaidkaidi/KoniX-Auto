package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bbh {
    public final /* synthetic */ bbl a;

    public bbh(bbl bblVar) {
        this.a = bblVar;
    }

    public /* synthetic */ bbh(bbl bblVar, byte[] bArr) {
        this.a = bblVar;
    }

    public final void a(byte[] bArr, String str) {
        bbl bblVar = this.a;
        cst listIterator = ((csf) bblVar.n).listIterator();
        while (listIterator.hasNext()) {
            ((bbh) listIterator.next()).a(bArr, str);
        }
        cst listIterator2 = ((csp) bblVar.o).listIterator();
        while (listIterator2.hasNext()) {
            ((bbo) listIterator2.next()).a();
        }
    }
}
