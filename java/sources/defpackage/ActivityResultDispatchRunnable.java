package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ActivityResultDispatchRunnable implements Runnable {
    final /* synthetic */ int a;
    final /* synthetic */ ActivityResultRegistry b;
    final /* synthetic */ QuadIntValue c;

    public ActivityResultDispatchRunnable(ActivityResultRegistry tyVar, int i, QuadIntValue czdVar, byte[] bArr) {
        this.b = tyVar;
        this.a = i;
        this.c = czdVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ActivityResultRegistryCallback tsVar;
        ActivityResultRegistry tyVar = this.b;
        int i = this.a;
        Object obj = this.c.a;
        String str = (String) tyVar.b.get(Integer.valueOf(NavInstructionTypeEnum));
        if (str == null) {
            return;
        }
        ActivityResultRegistryHolder twVar = (ActivityResultRegistryHolder) tyVar.f.get(str);
        if (twVar == null || (tsVar = twVar.a) == null) {
            tyVar.h.remove(str);
            tyVar.g.put(str, obj);
        } else if (tyVar.e.remove(str)) {
            tsVar.a(obj);
        }
    }
}
