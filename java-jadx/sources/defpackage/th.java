package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class th implements Runnable {
    final /* synthetic */ int a;
    final /* synthetic */ ty b;
    final /* synthetic */ czd c;

    public th(ty tyVar, int i, czd czdVar, byte[] bArr) {
        this.b = tyVar;
        this.a = i;
        this.c = czdVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ts tsVar;
        ty tyVar = this.b;
        int i = this.a;
        Object obj = this.c.a;
        String str = (String) tyVar.b.get(Integer.valueOf(i));
        if (str == null) {
            return;
        }
        tw twVar = (tw) tyVar.f.get(str);
        if (twVar == null || (tsVar = twVar.a) == null) {
            tyVar.h.remove(str);
            tyVar.g.put(str, obj);
        } else if (tyVar.e.remove(str)) {
            tsVar.a(obj);
        }
    }
}
