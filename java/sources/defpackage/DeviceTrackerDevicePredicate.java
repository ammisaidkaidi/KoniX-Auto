package defpackage;

import j$.util.function.Predicate;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class DeviceTrackerDevicePredicate implements Predicate {
    public final /* synthetic */ DeviceTracker a;
    private final /* synthetic */ int b;

    public /* synthetic */ bad(DeviceTracker bahVar, int i) {
        this.b = i;
        this.a = bahVar;
    }

    @Override // j$.util.function.Predicate
    public final /* synthetic */ Predicate and(Predicate predicate) {
        switch (this.b) {
        }
        return Predicate.CC.$default$and(this, predicate);
    }

    @Override // j$.util.function.Predicate
    public final /* synthetic */ Predicate negate() {
        switch (this.b) {
        }
        return Predicate.CC.$default$negate(this);
    }

    @Override // j$.util.function.Predicate
    public final /* synthetic */ Predicate or(Predicate predicate) {
        switch (this.b) {
        }
        return Predicate.CC.$default$or(this, predicate);
    }

    @Override // j$.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.b) {
            case 0:
                return this.a.i.e().equals(((ProjectionDevice) obj).e());
            default:
                return this.a.u((ProjectionDevice) obj);
        }
    }
}
