package defpackage;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class czz {
    private final boolean a;
    private final cqh b;

    public czz(boolean z, cqh cqhVar) {
        this.a = z;
        this.b = cqhVar;
    }

    public final dag a(Callable callable, Executor executor) {
        return new czi(this.b, this.a, executor, callable);
    }

    public final dag b(czb czbVar, Executor executor) {
        return new czi(this.b, this.a, executor, czbVar);
    }
}
