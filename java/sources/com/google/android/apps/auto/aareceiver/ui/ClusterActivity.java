package com.google.android.apps.auto.aareceiver.ui;

import android.content.Intent;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.SurfaceView;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.apps.auto.aareceiver.ui.ClusterActivity;
import com.google.android.embedded.projection.R;
import com.google.android.projection.protocol.VideoSink;
import com.google.android.apps.auto.aareceiver.service.AndroidAutoHeadunitProjectionHandler;
import defpackage.VideoSinkCallback;
import com.google.android.apps.auto.aareceiver.session.ProjectionSession;
import defpackage.HeadunitActivityCallbackHolder;
import defpackage.ClusterActivityFocusRunnable;
import defpackage.AareceiverActivityBase;
import com.google.android.apps.auto.aareceiver.video.latencychecker.VideoLatencyChecker;
import defpackage.DisplayType;
import defpackage.VideoConfigMessage;
import defpackage.VideoSinkConfigMessage;
import defpackage.VideoFrameBuffer;
import defpackage.ParameterizedLoggerApi;
import defpackage.FloggerLoggerFactory;
import defpackage.ListenableFuture;
import defpackage.SettableFuture;
import defpackage.ProtoMsgHoldingMessageAndBool;

/* compiled from: PG */
/* loaded from: classes.dex */
public class ClusterActivity extends AareceiverActivityBase implements VideoSinkCallback {
    private static final FloggerLoggerFactory a = FloggerLoggerFactory.g("com/google/android/apps/auto/aareceiver/ui/ClusterActivity");

    private final void p(Intent intent) {
        Bundle bundleExtra;
        if (intent == null || (bundleExtra = intent.getBundleExtra("android.car.cluster.ClusterActivityState")) == null) {
            return;
        }
        Rect rect = (Rect) bundleExtra.getParcelable("android.car:activityState.unobscured");
        ProjectionSession bblVar = this.v.i.h;
        if (bblVar == null) {
            ((ParameterizedLoggerApi) AndroidAutoHeadunitProjectionHandler.a.c().h("com/google/android/apps/auto/aareceiver/service/AndroidAutoHeadunitProjectionHandler", "updateClusterContentArea", 277, "AndroidAutoHeadunitProjectionHandler.java")).n("updateClusterContentArea called outside of the session.");
            return;
        }
        if (bblVar.r == null) {
            ((ParameterizedLoggerApi) ProjectionSession.a.c().h("com/google/android/apps/auto/aareceiver/session/ProjectionSession", "updateClusterContentArea", 789, "ProjectionSession.java")).n("Trying to update cluster UiConfig while cluster is null!");
            return;
        }
        ProtoMsgHoldingMessageAndBool n = VideoConfigMessage.f.n();
        int i = rect.top;
        if (n.c) {
            n.k();
            n.c = false;
        }
        VideoConfigMessage ckeVar = (VideoConfigMessage) n.b;
        ckeVar.a |= 1;
        ckeVar.b = i;
        int i2 = rect.left;
        if (n.c) {
            n.k();
            n.c = false;
        }
        VideoConfigMessage ckeVar2 = (VideoConfigMessage) n.b;
        ckeVar2.a |= 4;
        ckeVar2.d = i2;
        int height = bblVar.r.getHeight() - rect.bottom;
        if (n.c) {
            n.k();
            n.c = false;
        }
        VideoConfigMessage ckeVar3 = (VideoConfigMessage) n.b;
        ckeVar3.a |= 2;
        ckeVar3.c = height;
        int width = bblVar.r.getWidth() - rect.right;
        if (n.c) {
            n.k();
            n.c = false;
        }
        VideoConfigMessage ckeVar4 = (VideoConfigMessage) n.b;
        ckeVar4.a |= 8;
        ckeVar4.e = width;
        VideoConfigMessage ckeVar5 = (VideoConfigMessage) n.h();
        ProtoMsgHoldingMessageAndBool n2 = VideoSinkConfigMessage.f.n();
        if (n2.c) {
            n2.k();
            n2.c = false;
        }
        VideoSinkConfigMessage ckxVar = (VideoSinkConfigMessage) n2.b;
        ckeVar5.getClass();
        ckxVar.c = ckeVar5;
        int i3 = ckxVar.a | 2;
        ckxVar.a = i3;
        ckeVar5.getClass();
        ckxVar.d = ckeVar5;
        ckxVar.a = i3 | 4;
        VideoSinkConfigMessage ckxVar2 = (VideoSinkConfigMessage) n2.h();
        VideoSink videoSink = (VideoSink) bblVar.p.get(DisplayType.DISPLAY_TYPE_CLUSTER);
        VideoSinkConfigMessage ckxVar3 = videoSink.b;
        if (ckxVar3 != null) {
            VideoConfigMessage ckeVar6 = ckxVar3.c;
            if (ckeVar6 == null) {
                ckeVar6 = cke.f;
            }
            if (ckeVar5.equals(ckeVar6)) {
                return;
            }
        }
        videoSink.nativeUpdateUiConfig(ckxVar2.h());
    }

    @Override // defpackage.VideoSinkCallback
    public final ListenableFuture a() {
        final SettableFuture e = SettableFuture.e();
        runOnUiThread(new Runnable() { // from class: bfb
            @Override // java.lang.Runnable
            public final void run() {
                ClusterActivity clusterActivity = ClusterActivity.this;
                clusterActivity.w.f(e);
            }
        });
        return e;
    }

    @Override // defpackage.VideoSinkCallback
    public final void b(final int i, final int i2, final int i3, final int i4) {
        runOnUiThread(new Runnable() { // from class: bfa
            @Override // java.lang.Runnable
            public final void run() {
                ClusterActivity clusterActivity = ClusterActivity.this;
                int i5 = i;
                int i6 = i2;
                int i7 = i3;
                int i8 = i4;
                double a2 = clusterActivity.v.a(DisplayType.DISPLAY_TYPE_CLUSTER, i5, i6);
                double d = i7;
                Double.isNaN(d);
                long round = Math.round(d * a2);
                double d2 = i8;
                Double.isNaN(d2);
                ((FrameLayout.LayoutParams) clusterActivity.y.getLayoutParams()).setMargins(-(((int) round) / 2), -((((int) Math.round(d2 * a2)) + 1) / 2), 0, 0);
                clusterActivity.y.requestLayout();
            }
        });
        this.w.g(i, i2, i3, i4);
    }

    @Override // defpackage.VideoSinkCallback
    public final void c(VideoFrameBuffer cmaVar) {
        this.w.a(cmaVar);
    }

    @Override // defpackage.VideoSinkCallback
    public final void d(byte[] bArr) {
        this.w.b(bArr);
    }

    @Override // defpackage.VideoSinkCallback
    public final void e() {
        moveTaskToBack(true);
    }

    @Override // defpackage.VideoSinkCallback
    public final void f(boolean z) {
        runOnUiThread(new ClusterActivityFocusRunnable(this, 0));
    }

    @Override // defpackage.VideoSinkCallback
    public final void g(Throwable th) {
        ((ParameterizedLoggerApi) ((ParameterizedLoggerApi) a.b().g(th)).h("com/google/android/apps/auto/aareceiver/ui/ClusterActivity", "onInitFailed", 92, "ClusterActivity.java")).n("Service failed to initialize");
        runOnUiThread(new ClusterActivityFocusRunnable(this, 1));
    }

    @Override // defpackage.VideoSinkCallback
    public final boolean h() {
        return !this.z;
    }

    @Override // defpackage.AareceiverActivityBase
    protected final SurfaceView l() {
        return this.y;
    }

    @Override // defpackage.AareceiverActivityBase
    protected final View m() {
        return this.x;
    }

    @Override // defpackage.AareceiverActivityBase
    protected final VideoLatencyChecker n() {
        return null;
    }

    @Override // defpackage.AareceiverActivityBase
    public final DisplayType o() {
        return DisplayType.DISPLAY_TYPE_CLUSTER;
    }

    @Override // defpackage.ComponentActivity, defpackage.ComponentActivityBase, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.cluster_activity);
        this.x = findViewById(R.id.cluster_clipper);
        this.y = (SurfaceView) findViewById(R.id.cluster_surface);
        p(getIntent());
        v();
        w();
        this.v.c(DisplayType.DISPLAY_TYPE_CLUSTER, this);
    }

    @Override // android.app.Activity
    protected final void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        p(intent);
    }

    @Override // defpackage.AareceiverActivityBase
    protected final void s() {
        this.v.f(DisplayType.DISPLAY_TYPE_CLUSTER, this);
    }

    @Override // defpackage.AareceiverActivityBase
    protected final HeadunitActivityCallbackHolder u() {
        return null;
    }
}
