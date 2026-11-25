package defpackage;

import java.util.Iterator;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ProjectionHandlerFutureCallback implements ListenableFutureCallback {
    final /* synthetic */ AndroidAutoHeadunitProjectionHandler a;

    public ProjectionHandlerFutureCallback(AndroidAutoHeadunitProjectionHandler azyVar) {
        this.a = azyVar;
    }

    @Override // defpackage.ListenableFutureCallback
    public final void a(Throwable th) {
        if (this.a.i.h == null) {
            Iterator it = this.a.g.values().iterator();
            while (it.hasNext()) {
                ((VideoSinkCallback) it.next()).g(ActivityResultDispatchRunnable);
            }
        }
    }

    @Override // defpackage.ListenableFutureCallback
    public final void b(Object obj) {
    }
}
