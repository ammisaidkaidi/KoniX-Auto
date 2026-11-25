package defpackage;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
final class czg extends czh {
    final /* synthetic */ czi a;
    private final Callable c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public czg(czi cziVar, Callable callable, Executor executor) {
        super(cziVar, executor);
        this.a = cziVar;
        callable.getClass();
        this.c = callable;
    }

    @Override // defpackage.daf
    public final Object a() {
        return this.c.call();
    }

    @Override // defpackage.daf
    public final String b() {
        return this.c.toString();
    }

    @Override // defpackage.czh
    public final void c(Object obj) {
        this.a.k(obj);
    }
}
