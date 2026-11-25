package defpackage;

import android.database.ContentObserver;

/* compiled from: PG */
/* loaded from: classes.dex */
final class GservicesContentObserver_brq extends ContentObserver {
    public GservicesContentObserver_brq() {
        super(null);
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        GservicesContentResolver.e.set(true);
    }
}
