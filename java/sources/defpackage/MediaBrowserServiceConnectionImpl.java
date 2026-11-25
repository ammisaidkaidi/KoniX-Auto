package defpackage;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.google.android.apps.auto.aareceiver.media.MediaBrowserService;

/* compiled from: PG */
/* loaded from: classes.dex */
final class MediaBrowserServiceConnectionImpl implements ServiceConnection {
    final /* synthetic */ ProjectionSession a;

    public MediaBrowserServiceConnectionImpl(ProjectionSession bblVar) {
        this.a = bblVar;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        ProjectionSession bblVar = this.a;
        bblVar.b = ((MediaBrowserServiceBinder) iBinder).a;
        MediaBrowserService mediaBrowserService = bblVar.b;
        if (!mediaBrowserService.f.i()) {
            mediaBrowserService.f.d(true);
        }
        mediaBrowserService.f.e(new MediaBrowserServiceConnection(bblVar));
        ProjectionSession bblVar2 = this.a;
        bblVar2.k.c = bblVar2.b.f;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        ProjectionSession bblVar = this.a;
        bblVar.b = null;
        bblVar.k.c = null;
    }
}
