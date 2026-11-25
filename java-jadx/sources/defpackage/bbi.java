package defpackage;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.google.android.apps.auto.aareceiver.media.MediaBrowserService;

/* compiled from: PG */
/* loaded from: classes.dex */
final class bbi implements ServiceConnection {
    final /* synthetic */ bbl a;

    public bbi(bbl bblVar) {
        this.a = bblVar;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        bbl bblVar = this.a;
        bblVar.b = ((axo) iBinder).a;
        MediaBrowserService mediaBrowserService = bblVar.b;
        if (!mediaBrowserService.f.i()) {
            mediaBrowserService.f.d(true);
        }
        mediaBrowserService.f.e(new axn(bblVar));
        bbl bblVar2 = this.a;
        bblVar2.k.c = bblVar2.b.f;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        bbl bblVar = this.a;
        bblVar.b = null;
        bblVar.k.c = null;
    }
}
