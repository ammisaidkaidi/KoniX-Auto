package defpackage;

import android.content.Context;
import android.view.View;

/* compiled from: PG */
/* loaded from: classes.dex */
final class mx extends ma {
    final /* synthetic */ mz d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public mx(mz mzVar, Context context, lo loVar, View view) {
        super(context, loVar, view, true);
        this.d = mzVar;
        this.b = 8388613;
        e(mzVar.l);
    }

    @Override // defpackage.ma
    protected final void c() {
        lo loVar = this.d.c;
        if (loVar != null) {
            loVar.close();
        }
        this.d.i = null;
        super.c();
    }
}
