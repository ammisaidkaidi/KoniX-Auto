package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class aaq extends aaf {
    public static final aag a = new aap(0);
    public final vj b = new vj();
    public boolean c = false;

    public final void a() {
        this.c = false;
    }

    public final aan b() {
        return (aan) this.b.d(54321);
    }

    @Override // defpackage.aaf
    public final void c() {
        int b = this.b.b();
        for (int i = 0; i < b; i++) {
            ((aan) this.b.e(i)).j();
        }
        vj vjVar = this.b;
        int i2 = vjVar.e;
        Object[] objArr = vjVar.d;
        for (int i3 = 0; i3 < i2; i3++) {
            objArr[i3] = null;
        }
        vjVar.e = 0;
        vjVar.b = false;
    }
}
