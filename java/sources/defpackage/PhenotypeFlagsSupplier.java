package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public interface PhenotypeFlagsSupplier {
    public static final PhenotypeFlagsSupplier b = new PhenotypeFlagsSupplier() { // from class: ccx
        @Override // defpackage.PhenotypeFlagsSupplier
        public final ListenableFuture a() {
            return ProjectionIntentHelper.j(cns.a);
        }
    };

    ListenableFuture a();
}
