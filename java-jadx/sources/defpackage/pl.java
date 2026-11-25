package defpackage;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;

/* compiled from: PG */
/* loaded from: classes.dex */
final class pl implements Runnable {
    final /* synthetic */ pm a;
    private final /* synthetic */ int b;

    public pl(pm pmVar, int i) {
        this.b = i;
        this.a = pmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.b) {
            case 0:
                pm pmVar = this.a;
                pmVar.d();
                View view = pmVar.c;
                if (view.isEnabled() && !view.isLongClickable() && pmVar.b()) {
                    view.getParent().requestDisallowInterceptTouchEvent(true);
                    long uptimeMillis = SystemClock.uptimeMillis();
                    MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                    view.onTouchEvent(obtain);
                    obtain.recycle();
                    pmVar.d = true;
                    break;
                }
                break;
            default:
                ViewParent parent = this.a.c.getParent();
                if (parent != null) {
                    parent.requestDisallowInterceptTouchEvent(true);
                    break;
                }
                break;
        }
    }
}
