package defpackage;

import android.view.View;
import android.view.ViewGroup;

/* compiled from: PG */
/* loaded from: classes.dex */
final class bd implements xu {
    final /* synthetic */ View a;
    final /* synthetic */ ViewGroup b;
    final /* synthetic */ be c;
    final /* synthetic */ dl d;

    public bd(View view, ViewGroup viewGroup, be beVar, dl dlVar) {
        this.a = view;
        this.b = viewGroup;
        this.c = beVar;
        this.d = dlVar;
    }

    @Override // defpackage.xu
    public final void a() {
        this.a.clearAnimation();
        this.b.endViewTransition(this.a);
        this.c.b();
        if (cr.R(2)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Animation from operation ");
            sb.append(this.d);
            sb.append(" has been cancelled.");
        }
    }
}
