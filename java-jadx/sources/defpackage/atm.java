package defpackage;

import android.os.UserManager;
import com.google.android.apps.auto.aareceiver.AndroidAutoReceiverApp;

/* compiled from: PG */
/* loaded from: classes.dex */
public class atm extends ata implements dht {
    private final dhk g = new dhk(new atl(this));

    @Override // defpackage.dht
    public final Object aT() {
        return this.g.aT();
    }

    @Override // defpackage.ata, android.app.Application
    public final void onCreate() {
        Object aT = aT();
        AndroidAutoReceiverApp androidAutoReceiverApp = (AndroidAutoReceiverApp) this;
        androidAutoReceiverApp.b = new atk();
        atj atjVar = (atj) aT;
        androidAutoReceiverApp.c = (axz) atjVar.g.a();
        androidAutoReceiverApp.d = (UserManager) atjVar.f.a();
        androidAutoReceiverApp.e = (btz) atjVar.h.a();
        androidAutoReceiverApp.f = (dgq) atjVar.i.a();
        super.onCreate();
    }
}
