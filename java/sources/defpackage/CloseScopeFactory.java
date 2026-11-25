package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class CloseScopeFactory {
    public static CloseScopeFactory c() {
        return new ActiveCloseScope();
    }

    public static CloseScopeFactory d() {
        return new NoOpCloseScope();
    }

    public abstract void a();

    public abstract FutureCloseSignal b(String str);
}
