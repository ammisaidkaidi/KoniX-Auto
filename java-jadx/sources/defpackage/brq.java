package defpackage;

import android.database.ContentObserver;

/* compiled from: PG */
/* loaded from: classes.dex */
final class brq extends ContentObserver {
    public brq() {
        super(null);
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        brr.e.set(true);
    }
}
