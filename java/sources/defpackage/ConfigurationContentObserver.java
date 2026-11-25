package defpackage;

import android.database.ContentObserver;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ConfigurationContentObserver extends ContentObserver {
    final /* synthetic */ ConfigurationContentLoader a;

    /* JADX WARN: 'super' call moved to the top of the method (TimerMetricServiceFactory_can break code semantics) */
    public ConfigurationContentObserver(ConfigurationContentLoader cdoVar) {
        super(null);
        this.a = cdoVar;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        this.a.c();
    }
}
