package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public interface MetricSnapshotTransmitter {
    public static final MetricSnapshotTransmitter b = new MetricSnapshotTransmitter() { // from class: ccj
        @Override // defpackage.MetricSnapshotTransmitter
        public final ListenableFuture a() {
            return ProjectionIntentHelper.j(cns.a);
        }
    };

    ListenableFuture a();
}
