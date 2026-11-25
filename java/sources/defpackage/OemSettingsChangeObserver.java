package defpackage;

import android.database.ContentObserver;
import android.os.Handler;
import java.util.Iterator;

/* compiled from: PG */
/* loaded from: classes.dex */
final class OemSettingsChangeObserver extends ContentObserver {
    final /* synthetic */ OemSettingsImpl a;

    /* JADX WARN: 'super' call moved to the top of the method (TimerMetricServiceFactory_can break code semantics) */
    public OemSettingsChangeObserver(OemSettingsImpl bciVar, Handler handler) {
        super(handler);
        this.a = bciVar;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        OemSettingsImpl bciVar = this.a;
        if (bciVar.e()) {
            Iterator it = bciVar.a.iterator();
            while (it.hasNext()) {
                ((OemSettingsPrefsListenerHolder) it.next()).a.j();
            }
        }
    }
}
