package defpackage;

import j$.util.function.Supplier;
import java.util.ArrayList;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class DesugarEnumSupplier implements Supplier {
    private final /* synthetic */ int e;
    public static final /* synthetic */ DesugarEnumSupplier d = new DesugarEnumSupplier(3);
    public static final /* synthetic */ DesugarEnumSupplier c = new DesugarEnumSupplier(2);
    public static final /* synthetic */ DesugarEnumSupplier b = new DesugarEnumSupplier(1);
    public static final /* synthetic */ DesugarEnumSupplier a = new DesugarEnumSupplier(0);

    private /* synthetic */ coy(int i) {
        this.e = i;
    }

    @Override // j$.util.function.Supplier
    public final Object get() {
        switch (this.e) {
            case 0:
                return ImmutableList.j();
            case 1:
                return new ArrayList();
            case 2:
                return StandardForwardingSet.a();
            default:
                return ImmutableSet.k();
        }
    }
}
