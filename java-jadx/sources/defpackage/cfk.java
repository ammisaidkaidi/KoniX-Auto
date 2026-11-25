package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class cfk implements col {
    public final /* synthetic */ cfm a;
    private final /* synthetic */ int b;

    public /* synthetic */ cfk(cfm cfmVar, int i) {
        this.b = i;
        this.a = cfmVar;
    }

    @Override // defpackage.col
    public final Object a() {
        switch (this.b) {
            case 0:
                return this.a.b();
            default:
                return this.a.c();
        }
    }
}
