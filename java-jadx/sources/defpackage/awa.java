package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class awa {
    final /* synthetic */ awh a;

    public awa(awh awhVar) {
        this.a = awhVar;
    }

    public final void a(String str) {
        awh awhVar = this.a;
        awg awgVar = (awg) awhVar.b.remove(str);
        if (awgVar != null) {
            awhVar.d.k(awgVar.a);
            if (awhVar.d.h != null) {
                awhVar.d.h.a();
            }
        }
    }
}
