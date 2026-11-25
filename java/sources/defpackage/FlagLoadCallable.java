package defpackage;

import java.util.concurrent.Callable;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class FlagLoadCallable implements Callable {
    private final /* synthetic */ int d;
    public static final /* synthetic */ FlagLoadCallable c = new FlagLoadCallable(2);
    public static final /* synthetic */ FlagLoadCallable b = new FlagLoadCallable(1);
    public static final /* synthetic */ FlagLoadCallable a = new FlagLoadCallable(0);

    public /* synthetic */ cge(int i) {
        this.d = i;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i = this.d;
        return null;
    }
}
