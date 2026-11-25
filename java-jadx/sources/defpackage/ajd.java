package defpackage;

import android.content.Context;
import android.os.Build;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ajd extends aiz {
    public ajd(Context context, amh amhVar) {
        super(ajo.a(context, amhVar).c);
    }

    @Override // defpackage.aiz
    public final boolean b(akk akkVar) {
        return akkVar.j.i == 3 || (Build.VERSION.SDK_INT >= 30 && akkVar.j.i == 6);
    }

    @Override // defpackage.aiz
    public final /* bridge */ /* synthetic */ boolean c(Object obj) {
        ait aitVar = (ait) obj;
        return !aitVar.a || aitVar.c;
    }
}
