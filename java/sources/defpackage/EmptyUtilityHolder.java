package defpackage;

import android.util.SparseIntArray;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class EmptyUtilityHolder {
    public final SparseIntArray a;
    public GoogleApiAvailabilityBase b;

    public EmptyUtilityHolder() {
        GoogleApiAvailability bjdVar = bjd.a;
        throw null;
    }

    public final void a() {
        this.a.clear();
    }

    public final int b(int i) {
        return this.a.get(i, -1);
    }

    public EmptyUtilityHolder(GoogleApiAvailabilityBase bjeVar) {
        this.a = new SparseIntArray();
        ThreadAndNullChecksUtil.d(bjeVar);
        this.b = bjeVar;
    }
}
