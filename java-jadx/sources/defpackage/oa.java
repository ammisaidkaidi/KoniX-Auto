package defpackage;

import android.view.View;

/* compiled from: PG */
/* loaded from: classes.dex */
final class oa extends pm {
    final /* synthetic */ oh a;
    final /* synthetic */ ok b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public oa(ok okVar, View view, oh ohVar) {
        super(view);
        this.b = okVar;
        this.a = ohVar;
    }

    @Override // defpackage.pm
    public final mg a() {
        return this.a;
    }

    @Override // defpackage.pm
    public final boolean b() {
        if (this.b.b.u()) {
            return true;
        }
        this.b.b();
        return true;
    }
}
