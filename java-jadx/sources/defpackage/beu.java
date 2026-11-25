package defpackage;

import com.google.android.apps.auto.aareceiver.ui.AndroidAutoHeadunitActivity;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class beu implements czv {
    final /* synthetic */ AndroidAutoHeadunitActivity a;

    public beu(AndroidAutoHeadunitActivity androidAutoHeadunitActivity) {
        this.a = androidAutoHeadunitActivity;
    }

    @Override // defpackage.czv
    public final void a(Throwable th) {
        this.a.r.b(bdf.AHU_START_UNTIL_RENDERER_READY, 5);
    }

    @Override // defpackage.czv
    public final /* bridge */ /* synthetic */ void b(Object obj) {
        this.a.r.b(bdf.AHU_START_UNTIL_RENDERER_READY, 3);
    }
}
