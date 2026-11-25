package defpackage;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.animation.AnimationUtils;

/* compiled from: PG */
/* loaded from: classes.dex */
final class im implements Runnable {
    final /* synthetic */ in a;

    public im(in inVar) {
        this.a = inVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        in inVar = this.a;
        if (inVar.e) {
            if (inVar.c) {
                inVar.c = false;
                il ilVar = inVar.a;
                long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
                ilVar.e = currentAnimationTimeMillis;
                ilVar.g = -1L;
                ilVar.f = currentAnimationTimeMillis;
                ilVar.h = 0.5f;
            }
            il ilVar2 = this.a.a;
            if ((ilVar2.g > 0 && AnimationUtils.currentAnimationTimeMillis() > ilVar2.g + ilVar2.i) || !this.a.b()) {
                this.a.e = false;
                return;
            }
            in inVar2 = this.a;
            if (inVar2.d) {
                inVar2.d = false;
                long uptimeMillis = SystemClock.uptimeMillis();
                MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                inVar2.b.onTouchEvent(obtain);
                obtain.recycle();
            }
            if (ilVar2.f == 0) {
                throw new RuntimeException("Cannot compute scroll delta before calling start()");
            }
            long currentAnimationTimeMillis2 = AnimationUtils.currentAnimationTimeMillis();
            float a = ilVar2.a(currentAnimationTimeMillis2);
            long j = ilVar2.f;
            ilVar2.f = currentAnimationTimeMillis2;
            this.a.f.scrollListBy((int) ((currentAnimationTimeMillis2 - j) * (((-4.0f) * a * a) + (a * 4.0f)) * ilVar2.d));
            hs.r(this.a.b, this);
        }
    }
}
