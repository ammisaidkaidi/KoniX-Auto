package defpackage;

import com.google.android.apps.auto.aareceiver.media.MediaBrowserService;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class MediaBrowserServiceConnection extends MediaSessionCompatInnerHelper {
    final /* synthetic */ ProjectionSession e;

    public MediaBrowserServiceConnection(ProjectionSession bblVar) {
        this.e = bblVar;
    }

    @Override // defpackage.MediaSessionCompatInnerHelper
    public final void a() {
        MediaBrowserService.i(this.e, 127);
    }

    @Override // defpackage.MediaSessionCompatInnerHelper
    public final void b() {
        MediaBrowserService.i(this.e, 126);
    }

    @Override // defpackage.MediaSessionCompatInnerHelper
    public final void c() {
        MediaBrowserService.i(this.e, 87);
    }

    @Override // defpackage.MediaSessionCompatInnerHelper
    public final void d() {
        MediaBrowserService.i(this.e, 88);
    }

    @Override // defpackage.MediaSessionCompatInnerHelper
    public final void e() {
        MediaBrowserService.i(this.e, 86);
    }
}
