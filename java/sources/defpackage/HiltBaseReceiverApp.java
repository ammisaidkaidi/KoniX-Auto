package defpackage;

import android.os.UserManager;
import com.google.android.apps.auto.aareceiver.AndroidAutoReceiverApp;

/* compiled from: PG */
/* loaded from: classes.dex */
public class HiltBaseReceiverApp extends BaseReceiverApp implements StingComponentHolder {
    private final StingApplicationComponentHolder g = new StingApplicationComponentHolder(new ClusterActivityScopeHolder(this));

    @Override // defpackage.StingComponentHolder
    public final Object aT() {
        return this.g.aT();
    }

    @Override // com.google.android.apps.auto.aareceiver.BaseReceiverApp, android.app.Application
    public final void onCreate() {
        Object aT = aT();
        AndroidAutoReceiverApp androidAutoReceiverApp = (AndroidAutoReceiverApp) this;
        androidAutoReceiverApp.b = new FloggerConfig();
        AareceiverAppComponent atjVar = (AareceiverAppComponent) aT;
        androidAutoReceiverApp.c = (PhenotypeManager) atjVar.g.a();
        androidAutoReceiverApp.d = (UserManager) atjVar.f.a();
        androidAutoReceiverApp.e = (Primes) atjVar.h.a();
        androidAutoReceiverApp.f = (ReleaseChannelEnum) atjVar.i.a();
        super.onCreate();
    }
}
