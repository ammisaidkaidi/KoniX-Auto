package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public interface ClearcutSnapshotTransmitter {
    public static final ClearcutSnapshotTransmitter b = new ClearcutSnapshotTransmitter() { // from class: ccm
        @Override // defpackage.ClearcutSnapshotTransmitter
        public final ListenableFuture a() {
            int i = ccn.a;
            return ProjectionIntentHelper.j(ImmutableList.p());
        }
    };

    ListenableFuture a();
}
