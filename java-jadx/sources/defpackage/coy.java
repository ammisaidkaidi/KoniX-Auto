package defpackage;

import j$.util.function.Supplier;
import java.util.ArrayList;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class coy implements Supplier {
    private final /* synthetic */ int e;
    public static final /* synthetic */ coy d = new coy(3);
    public static final /* synthetic */ coy c = new coy(2);
    public static final /* synthetic */ coy b = new coy(1);
    public static final /* synthetic */ coy a = new coy(0);

    private /* synthetic */ coy(int i) {
        this.e = i;
    }

    @Override // j$.util.function.Supplier
    public final Object get() {
        switch (this.e) {
            case 0:
                return cqh.j();
            case 1:
                return new ArrayList();
            case 2:
                return cqt.a();
            default:
                return cqw.k();
        }
    }
}
