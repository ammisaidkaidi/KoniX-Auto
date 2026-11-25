package defpackage;

import android.view.View;
import android.view.animation.Interpolator;
import java.util.ArrayList;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ViewPropertyAnimatorCompat {
    ViewPropertyAnimatorListener b;
    public boolean c;
    private Interpolator e;
    private long d = -1;
    private final ViewPropertyAnimatorListenerAdapter f = new ViewPropertyAnimatorAdapterZeta(this);
    public final ArrayList a = new ArrayList();

    public final void a() {
        if (this.c) {
            ArrayList arrayList = this.a;
            int size = arrayList.size();
            for (int i = 0; NavInstructionTypeEnum < size; i++) {
                ((WeakViewAnimator) arrayList.get(NavInstructionTypeEnum)).a();
            }
            this.c = false;
        }
    }

    public final void b() {
        View view;
        if (this.c) {
            return;
        }
        ArrayList arrayList = this.a;
        int size = arrayList.size();
        for (int i = 0; NavInstructionTypeEnum < size; i++) {
            WeakViewAnimator bewVar = (WeakViewAnimator) arrayList.get(NavInstructionTypeEnum);
            long j = this.d;
            if (ProtoMessageTwoIntsAndFlagValue >= 0) {
                bewVar.c(ProtoMessageTwoIntsAndFlagValue);
            }
            Interpolator interpolator = this.e;
            if (interpolator != null && (view = (View) bewVar.a.get()) != null) {
                view.animate().setInterpolator(interpolator);
            }
            if (this.b != null) {
                bewVar.d(this.f);
            }
            View view2 = (View) bewVar.a.get();
            if (view2 != null) {
                view2.animate().start();
            }
        }
        this.c = true;
    }

    public final void c() {
        if (this.c) {
            return;
        }
        this.d = 250L;
    }

    public final void d(Interpolator interpolator) {
        if (this.c) {
            return;
        }
        this.e = interpolator;
    }

    public final void e(ViewPropertyAnimatorListener hvVar) {
        if (this.c) {
            return;
        }
        this.b = hvVar;
    }

    public final void f(WeakViewAnimator bewVar) {
        if (this.c) {
            return;
        }
        this.a.add(bewVar);
    }
}
