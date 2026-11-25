package defpackage;

import android.content.Context;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cbt implements dhx {
    private final dny a;
    private final dny b;
    private final dny c;

    public cbt(dny dnyVar, dny dnyVar2, dny dnyVar3) {
        this.a = dnyVar;
        this.b = dnyVar2;
        this.c = dnyVar3;
    }

    @Override // defpackage.dny
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final cbs a() {
        Context a = ((dhr) this.a).a();
        return new cbs(a, this.c);
    }
}
