package defpackage;

import java.util.concurrent.Callable;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class bts implements Callable {
    public final /* synthetic */ btt a;
    private final /* synthetic */ int b;

    public /* synthetic */ bts(btt bttVar, int i) {
        this.b = i;
        this.a = bttVar;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        switch (this.b) {
            case 0:
                this.a.a();
                break;
            default:
                this.a.a();
                break;
        }
        return null;
    }
}
