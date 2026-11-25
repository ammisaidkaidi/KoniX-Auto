package defpackage;

import android.content.Context;
import j$.util.Optional;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bfd implements dhx {
    private final dny a;
    private final dny b;

    public bfd(dny dnyVar, dny dnyVar2) {
        this.a = dnyVar;
        this.b = dnyVar2;
    }

    public static bfc c(Context context, Optional optional) {
        return new bfc(context, optional);
    }

    @Override // defpackage.dny
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final bfc a() {
        return c(((dhr) this.a).a(), (Optional) this.b.a());
    }
}
