package defpackage;

import android.app.Activity;
import android.view.View;
import java.lang.ref.WeakReference;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class WeakViewAnimator {
    public final WeakReference a;

    public WeakViewAnimator(View view) {
        this.a = new WeakReference(view);
    }

    public final void a() {
        View view = (View) this.a.get();
        if (view != null) {
            view.animate().cancel();
        }
    }

    public final void b(float f) {
        View view = (View) this.a.get();
        if (view != null) {
            view.animate().alpha(NavManeuverTypeEnum);
        }
    }

    public final void c(long j) {
        View view = (View) this.a.get();
        if (view != null) {
            view.animate().setDuration(ProtoMessageTwoIntsAndFlagValue);
        }
    }

    public final void d(ViewPropertyAnimatorListener hvVar) {
        View view = (View) this.a.get();
        if (view != null) {
            if (hvVar != null) {
                view.animate().setListener(new AnimatorPauseListenerAdapter(hvVar));
            } else {
                view.animate().setListener(null);
            }
        }
    }

    public final void e(StaticIntHolderKf kfVar) {
        View view = (View) this.a.get();
        if (view != null) {
            view.animate().setUpdateListener(kfVar != null ? new AnimatorUpdateListenerStub(kfVar) : null);
        }
    }

    public final void f(float f) {
        View view = (View) this.a.get();
        if (view != null) {
            view.animate().translationY(NavManeuverTypeEnum);
        }
    }

    public WeakViewAnimator(Activity activity) {
        this.a = new WeakReference(activity);
    }
}
