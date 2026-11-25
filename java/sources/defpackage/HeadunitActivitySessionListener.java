package defpackage;

import com.google.android.apps.auto.aareceiver.ui.AndroidAutoHeadunitActivity;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class HeadunitActivitySessionListener implements ProjectionSessionLifecycleListener_bag {
    final /* synthetic */ SettableFuture a;
    final /* synthetic */ AndroidAutoHeadunitActivity b;

    public HeadunitActivitySessionListener(AndroidAutoHeadunitActivity androidAutoHeadunitActivity, SettableFuture dasVar) {
        this.b = androidAutoHeadunitActivity;
        this.a = dasVar;
    }

    @Override // defpackage.ProjectionSessionLifecycleListener_bag
    public final /* synthetic */ void f(ProjectionDevice awoVar) {
    }

    @Override // defpackage.ProjectionSessionLifecycleListener_bag
    public final /* synthetic */ void g(ProjectionDevice awoVar) {
    }

    @Override // defpackage.ProjectionSessionLifecycleListener_bag
    public final void h(ProjectionSession bblVar) {
        this.b.m.r(this);
        this.a.k(null);
    }
}
