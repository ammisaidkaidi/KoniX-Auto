package defpackage;

import com.google.android.apps.auto.aareceiver.ui.AndroidAutoHeadunitActivity;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class HeadunitActivityFutureCallback implements ListenableFutureCallback {
    final /* synthetic */ AndroidAutoHeadunitActivity a;

    public HeadunitActivityFutureCallback(AndroidAutoHeadunitActivity androidAutoHeadunitActivity) {
        this.a = androidAutoHeadunitActivity;
    }

    @Override // defpackage.ListenableFutureCallback
    public final void a(Throwable th) {
        this.a.r.b(LatencyEventType.AHU_START_UNTIL_RENDERER_READY, 5);
    }

    @Override // defpackage.ListenableFutureCallback
    public final /* bridge */ /* synthetic */ void b(Object obj) {
        this.a.r.b(LatencyEventType.AHU_START_UNTIL_RENDERER_READY, 3);
    }
}
