package defpackage;

import java.util.concurrent.Callable;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class cge implements Callable {
    private final /* synthetic */ int d;
    public static final /* synthetic */ cge c = new cge(2);
    public static final /* synthetic */ cge b = new cge(1);
    public static final /* synthetic */ cge a = new cge(0);

    public /* synthetic */ cge(int i) {
        this.d = i;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i = this.d;
        return null;
    }
}
