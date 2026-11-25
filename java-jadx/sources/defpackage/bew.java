package defpackage;

import android.app.Activity;
import android.view.View;
import java.lang.ref.WeakReference;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bew {
    public final WeakReference a;

    public bew(View view) {
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
            view.animate().alpha(f);
        }
    }

    public final void c(long j) {
        View view = (View) this.a.get();
        if (view != null) {
            view.animate().setDuration(j);
        }
    }

    public final void d(hv hvVar) {
        View view = (View) this.a.get();
        if (view != null) {
            if (hvVar != null) {
                view.animate().setListener(new ht(hvVar));
            } else {
                view.animate().setListener(null);
            }
        }
    }

    public final void e(kf kfVar) {
        View view = (View) this.a.get();
        if (view != null) {
            view.animate().setUpdateListener(kfVar != null ? new hu(kfVar) : null);
        }
    }

    public final void f(float f) {
        View view = (View) this.a.get();
        if (view != null) {
            view.animate().translationY(f);
        }
    }

    public bew(Activity activity) {
        this.a = new WeakReference(activity);
    }
}
