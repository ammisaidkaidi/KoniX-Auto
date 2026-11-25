package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;

/* compiled from: PG */
/* loaded from: classes.dex */
final class az extends AnimatorListenerAdapter {
    final /* synthetic */ ViewGroup a;
    final /* synthetic */ View b;
    final /* synthetic */ boolean c;
    final /* synthetic */ dl d;
    final /* synthetic */ be e;

    public az(ViewGroup viewGroup, View view, boolean z, dl dlVar, be beVar) {
        this.a = viewGroup;
        this.b = view;
        this.c = z;
        this.d = dlVar;
        this.e = beVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.a.endViewTransition(this.b);
        if (this.c) {
            r.o(this.d.e, this.b);
        }
        this.e.b();
        if (cr.R(2)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Animator from operation ");
            sb.append(this.d);
            sb.append(" has ended.");
        }
    }
}
