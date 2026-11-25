package defpackage;

import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
final class czf extends czh {
    final /* synthetic */ czi a;
    private final czb c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public czf(czi cziVar, czb czbVar, Executor executor) {
        super(cziVar, executor);
        this.a = cziVar;
        czbVar.getClass();
        this.c = czbVar;
    }

    @Override // defpackage.daf
    public final /* bridge */ /* synthetic */ Object a() {
        dag a = this.c.a();
        a.getClass();
        return a;
    }

    @Override // defpackage.daf
    public final String b() {
        return this.c.toString();
    }

    @Override // defpackage.czh
    public final /* bridge */ /* synthetic */ void c(Object obj) {
        this.a.d((dag) obj);
    }
}
