package defpackage;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.animation.AnimationUtils;

/* compiled from: PG */
/* loaded from: classes.dex */
final class OverScrollerCompatImpl implements Runnable {
    final /* synthetic */ ViewDragTouchListener a;

    public OverScrollerCompatImpl(ViewDragTouchListener inVar) {
        this.a = inVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ViewDragTouchListener inVar = this.a;
        if (inVar.e) {
            if (inVar.c) {
                inVar.c = false;
                ScrollHelperStubIl ilVar = inVar.a;
                long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
                ilVar.e = currentAnimationTimeMillis;
                ilVar.g = -1L;
                ilVar.f = currentAnimationTimeMillis;
                ilVar.h = 0.5f;
            }
            ScrollHelperStubIl ilVar2 = this.a.a;
            if ((ilVar2.g > 0 && AnimationUtils.currentAnimationTimeMillis() > ilVar2.g + ilVar2.i) || !this.a.b()) {
                this.a.e = false;
                return;
            }
            ViewDragTouchListener inVar2 = this.a;
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
            this.a.f.scrollListBy((int) ((currentAnimationTimeMillis2 - j) * (((-4.0f) * a * a) + (SingleStringProtoMessage * 4.0f)) * ilVar2.d));
            ViewCompatAccessibilityStatics.r(this.a.b, this);
        }
    }
}
