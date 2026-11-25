package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class AppCompatViewInflaterStub extends LruCacheCompat {
    public AppCompatViewInflaterStub() {
        super((int) GetExperimentTokensFlagsFacade.a.a().a());
    }

    @Override // defpackage.LruCacheCompat
    protected final /* bridge */ /* synthetic */ int a(Object obj, Object obj2) {
        ExperimentTokensHolder bpaVar = (ExperimentTokensHolder) obj2;
        int length = ((String) obj).length();
        int length2 = bpaVar.c.length();
        byte[] bArr = bpaVar.d;
        int a = ExperimentTokensHolder.a(bpaVar.e);
        int a2 = ExperimentTokensHolder.a(bpaVar.f);
        int a3 = ExperimentTokensHolder.a(bpaVar.g);
        int a4 = ExperimentTokensHolder.a(bpaVar.h);
        byte[][] bArr2 = bpaVar.j;
        int a5 = ExperimentTokensHolder.a(null);
        int[] iArr = bpaVar.i;
        int[] iArr2 = bpaVar.k;
        return length + length + length2 + length2 + a + a2 + a3 + a4 + a5;
    }
}
