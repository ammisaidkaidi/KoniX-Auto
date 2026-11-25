package defpackage;

import android.support.v7.widget.Toolbar;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ToolbarCollapseRunnable implements Runnable {
    final /* synthetic */ Toolbar a;

    public ToolbarCollapseRunnable(Toolbar toolbar) {
        this.a = toolbar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.a.s();
    }
}
