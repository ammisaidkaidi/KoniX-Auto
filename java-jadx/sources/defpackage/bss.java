package defpackage;

import android.content.Context;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bss {
    public final dny a;
    public final dny b;
    public final dny c;

    public bss(dny dnyVar, dny dnyVar2, dny dnyVar3) {
        dnyVar.getClass();
        this.c = dnyVar;
        dnyVar2.getClass();
        this.b = dnyVar2;
        dnyVar3.getClass();
        this.a = dnyVar3;
    }

    public bss(Context context) {
        dhx b = dhy.b(context);
        this.a = b;
        bsq bsqVar = new bsq(b);
        this.b = bsqVar;
        this.c = dhw.c(new atx(b, bsqVar, 12, (boolean[]) null));
    }
}
