package defpackage;

import android.os.Handler;
import android.view.SurfaceHolder;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ProjectionRendererSurfaceCallback implements SurfaceHolder.Callback {
    final Handler a = new Handler();
    final /* synthetic */ ProjectionRenderer b;

    public ProjectionRendererSurfaceCallback(ProjectionRenderer bgzVar) {
        this.b = bgzVar;
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        FloggerLoggerFactory cszVar = bgz.a;
        synchronized (this.b) {
            this.b.i(i2, i3);
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceCreated(SurfaceHolder surfaceHolder) {
        synchronized (this.b) {
            this.b.d(surfaceHolder.getSurface());
        }
        ProjectionRenderer bgzVar = this.b;
        bgzVar.c.g(bgzVar.g, 1);
        this.b.o.k(null);
        this.a.postDelayed(new Runnable() { // from class: bgs
            @Override // java.lang.Runnable
            public final void run() {
                ProjectionRenderer bgzVar2;
                HeadunitActivityCallbackHolder beyVar;
                ProjectionRendererSurfaceCallback bgtVar = ProjectionRendererSurfaceCallback.this;
                synchronized (bgtVar.b) {
                    int i = bgtVar.b.j;
                    if (!bgtVar.b.j() && (beyVar = (bgzVar2 = bgtVar.b).p) != null) {
                        bgzVar2.h = true;
                        beyVar.a.runOnUiThread(new ClusterActivityRunnable(beyVar, 1));
                        if (AaReceiverFlagsDkoFacade.c()) {
                            beyVar.a.r.b(LatencyEventType.AHU_START_UNTIL_RENDERER_READY, 4);
                            beyVar.a.r.b(LatencyEventType.AHU_START_UNTIL_FIRST_VIDEO_FRAME, 4);
                        }
                    }
                }
            }
        }, 3000L);
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        synchronized (this.b) {
            this.b.h();
            this.a.removeCallbacksAndMessages(null);
            ProjectionRenderer bgzVar = this.b;
            if (bgzVar.h) {
                bgzVar.h = false;
                bgzVar.p.a();
            }
        }
        this.b.o.cancel(false);
        this.b.o = SettableFuture.e();
        ProjectionRenderer bgzVar2 = this.b;
        bgzVar2.c.g(bgzVar2.g, 2);
    }
}
