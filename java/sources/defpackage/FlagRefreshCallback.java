package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class FlagRefreshCallback implements PhenotypeStoreCallback {
    private final /* synthetic */ int c;
    public static final /* synthetic */ FlagRefreshCallback b = new FlagRefreshCallback(1);
    public static final /* synthetic */ FlagRefreshCallback a = new FlagRefreshCallback(0);

    private /* synthetic */ cgi(int i) {
        this.c = i;
    }

    @Override // defpackage.PhenotypeStoreCallback
    public final void a() {
        switch (this.c) {
            case 0:
                int i = cgj.a;
                break;
            default:
                int i2 = cei.d;
                break;
        }
    }
}
