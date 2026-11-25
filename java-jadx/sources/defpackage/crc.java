package defpackage;

import java.util.Comparator;

/* compiled from: PG */
/* loaded from: classes.dex */
final class crc extends cqj {
    private static final long serialVersionUID = 0;
    private final Comparator a;

    public crc(crd crdVar) {
        super(crdVar);
        this.a = crdVar.comparator();
    }

    @Override // defpackage.cqj
    public final /* bridge */ /* synthetic */ cqi a(int i) {
        return new crb(this.a);
    }
}
