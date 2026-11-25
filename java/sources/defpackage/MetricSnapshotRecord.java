package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class MetricSnapshotRecord {
    public final ProtoMegaConfigMessage a;
    public final Long b;
    public final Long c;
    public final Long d;
    public final Long e;
    public final PrimesLifecycleEventEnum f;
    public final String g;
    public final ProtoEmptyMessageBeta h;

    public MetricSnapshotRecord(ProtoMegaConfigMessage dosVar, Long l, Long l2, Long l3, Long l4, PrimesLifecycleEventEnum doiVar, String str, ProtoEmptyMessageBeta dotVar) {
        this.a = dosVar;
        this.b = l;
        this.c = l2;
        this.d = l3;
        this.e = l4;
        this.f = doiVar;
        this.g = str;
        this.h = dotVar;
    }

    public final String toString() {
        return String.format("StatsRecord:\n  elapsed: %d\n  current: %d\n  Primes version: %d\n  version name #: %d\n  customName: %s\n", this.b, this.c, this.d, this.e, this.g);
    }
}
