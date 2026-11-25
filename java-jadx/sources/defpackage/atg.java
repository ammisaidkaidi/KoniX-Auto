package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class atg implements dny {
    private final dny a;
    private final /* synthetic */ int b;

    private atg(dny dnyVar, int i, byte[] bArr) {
        this.b = i;
        dnyVar.getClass();
        this.a = dnyVar;
    }

    public static dny c(dny dnyVar) {
        return new atg(dnyVar, 0);
    }

    public static dny d(dny dnyVar) {
        return new atg(dnyVar, 1, null);
    }

    private atg(dny dnyVar, int i) {
        this.b = i;
        dnyVar.getClass();
        this.a = dnyVar;
    }

    @Override // defpackage.dny
    public final /* synthetic */ Object a() {
        switch (this.b) {
        }
        return b();
    }

    public final coc b() {
        switch (this.b) {
            case 0:
                return coc.e(this.a);
            default:
                return coc.e(this.a.a());
        }
    }
}
