package defpackage;

import android.database.ContentObserver;

/* compiled from: PG */
/* loaded from: classes.dex */
final class GservicesContentObserver_cdt extends ContentObserver {
    public GservicesContentObserver_cdt() {
        super(null);
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        PhenotypeFlagBase.e();
    }
}
