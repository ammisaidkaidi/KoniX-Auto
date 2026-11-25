package defpackage;

import android.content.Context;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ahj implements afc {
    final /* synthetic */ Context a;

    public ahj(Context context) {
        this.a = context;
    }

    @Override // defpackage.afc
    public final afd a(afb afbVar) {
        afa a = afb.a(this.a);
        a.b = afbVar.b;
        a.c = afbVar.c;
        a.d = true;
        return new afl().a(a.a());
    }
}
