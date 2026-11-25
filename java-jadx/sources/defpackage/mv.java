package defpackage;

import android.view.View;

/* compiled from: PG */
/* loaded from: classes.dex */
final class mv extends pm {
    final /* synthetic */ mw a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public mv(mw mwVar, View view) {
        super(view);
        this.a = mwVar;
    }

    @Override // defpackage.pm
    public final mg a() {
        mx mxVar = this.a.a.i;
        if (mxVar == null) {
            return null;
        }
        return mxVar.a();
    }

    @Override // defpackage.pm
    public final boolean b() {
        this.a.a.m();
        return true;
    }

    @Override // defpackage.pm
    public final boolean c() {
        mz mzVar = this.a.a;
        if (mzVar.k != null) {
            return false;
        }
        mzVar.k();
        return true;
    }
}
