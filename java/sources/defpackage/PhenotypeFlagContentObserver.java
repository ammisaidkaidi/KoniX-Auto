package defpackage;

import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PhenotypeFlagContentObserver extends ContentObserver {
    final /* synthetic */ PhenotypeFlagSource a;

    /* JADX WARN: 'super' call moved to the top of the method (TimerMetricServiceFactory_can break code semantics) */
    public PhenotypeFlagContentObserver(PhenotypeFlagSource bsvVar, Handler handler) {
        super(handler);
        this.a = bsvVar;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z, Uri uri) {
        this.a.b();
    }
}
