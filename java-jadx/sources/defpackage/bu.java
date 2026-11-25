package defpackage;

import android.os.Handler;
import android.view.View;
import android.view.Window;

/* compiled from: PG */
/* loaded from: classes.dex */
final class bu extends cc implements aak, to, tz, aex, cu {
    final /* synthetic */ bv a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bu(bv bvVar) {
        super(bvVar, bvVar, new Handler());
        this.a = bvVar;
    }

    @Override // defpackage.zq
    public final zn C() {
        return this.a.e;
    }

    @Override // defpackage.aex
    public final aev D() {
        return this.a.D();
    }

    @Override // defpackage.cc, defpackage.by
    public final View a(int i) {
        return this.a.findViewById(i);
    }

    @Override // defpackage.aak
    public final aed ai() {
        return this.a.ai();
    }

    @Override // defpackage.cc, defpackage.by
    public final boolean b() {
        Window window = this.a.getWindow();
        return (window == null || window.peekDecorView() == null) ? false : true;
    }

    @Override // defpackage.cu
    public final void c() {
    }
}
