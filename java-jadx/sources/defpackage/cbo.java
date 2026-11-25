package defpackage;

import android.content.SharedPreferences;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cbo implements dhx {
    private final dny a;
    private final dny b;

    public cbo(dny dnyVar, dny dnyVar2) {
        this.a = dnyVar;
        this.b = dnyVar2;
    }

    @Override // defpackage.dny
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final coc a() {
        final coc cocVar = (coc) ((dhy) this.a).a;
        ((dhr) this.b).a();
        return cocVar.d() ? coc.e(new col() { // from class: cbn
            @Override // defpackage.col
            public final Object a() {
                return (SharedPreferences) coc.this.a();
            }
        }) : cns.a;
    }
}
