package defpackage;

import android.graphics.Point;
import android.view.ViewGroup;

/* compiled from: PG */
/* loaded from: classes.dex */
final class bgr implements czv {
    final /* synthetic */ int a;
    final /* synthetic */ int b;
    final /* synthetic */ int c;
    final /* synthetic */ int d;
    final /* synthetic */ bgz e;

    public bgr(bgz bgzVar, int i, int i2, int i3, int i4) {
        this.e = bgzVar;
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = i4;
    }

    @Override // defpackage.czv
    public final void a(Throwable th) {
        ((csx) ((csx) bgz.a.b().g(th)).h("com/google/android/apps/auto/aareceiver/video/ProjectionRenderer$1", "onFailure", 597, "ProjectionRenderer.java")).n("Starting renderer failed. Codec initialization failed or was cancelled");
    }

    @Override // defpackage.czv
    public final /* bridge */ /* synthetic */ void b(Object obj) {
        synchronized (this.e) {
            bgz bgzVar = this.e;
            if (bgzVar.h) {
                bgzVar.p.a();
                this.e.h = false;
            }
            if (this.e.j()) {
                bgz bgzVar2 = this.e;
                bgzVar2.i.a();
                bgzVar2.d(bgzVar2.i.d);
            } else if (this.e.j != 1) {
                return;
            }
            this.e.k = new Point(this.a, this.b);
            this.e.l = new Point(this.a - this.c, this.b - this.d);
            final bgz bgzVar3 = this.e;
            bgzVar3.m = bgzVar3.c.a(bgzVar3.g, bgzVar3.k.x, bgzVar3.k.y);
            double d = bgzVar3.k.x;
            double d2 = bgzVar3.m;
            Double.isNaN(d);
            final int round = (int) Math.round(d * d2);
            double d3 = bgzVar3.k.y;
            double d4 = bgzVar3.m;
            Double.isNaN(d3);
            final int round2 = (int) Math.round(d3 * d4);
            double d5 = bgzVar3.l.x;
            double d6 = bgzVar3.m;
            Double.isNaN(d5);
            final int round3 = (int) Math.round(d5 * d6);
            double d7 = bgzVar3.l.y;
            double d8 = bgzVar3.m;
            Double.isNaN(d7);
            final int round4 = (int) Math.round(d7 * d8);
            if (bgzVar3.e.getWidth() != round || bgzVar3.e.getHeight() != round2 || bgzVar3.d.getWidth() != round3 || bgzVar3.d.getHeight() != round4) {
                bgzVar3.d.post(new Runnable() { // from class: bgq
                    @Override // java.lang.Runnable
                    public final void run() {
                        bgz bgzVar4 = bgz.this;
                        int i = round;
                        int i2 = round2;
                        int i3 = round3;
                        int i4 = round4;
                        ViewGroup.LayoutParams layoutParams = bgzVar4.e.getLayoutParams();
                        layoutParams.width = i;
                        layoutParams.height = i2;
                        bgzVar4.e.setLayoutParams(layoutParams);
                        ViewGroup.LayoutParams layoutParams2 = bgzVar4.d.getLayoutParams();
                        layoutParams2.width = i3;
                        layoutParams2.height = i4;
                        bgzVar4.d.setLayoutParams(layoutParams2);
                    }
                });
            }
            this.e.j = 2;
            bgz bgzVar4 = this.e;
            while (!bgzVar4.n.isEmpty()) {
                bgzVar4.c((byte[]) bgzVar4.n.poll());
            }
        }
    }
}
