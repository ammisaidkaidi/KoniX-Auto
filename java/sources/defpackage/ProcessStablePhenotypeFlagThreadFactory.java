package defpackage;

import java.util.concurrent.ThreadFactory;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class ProcessStablePhenotypeFlagThreadFactory implements ThreadFactory {
    public static final /* synthetic */ ProcessStablePhenotypeFlagThreadFactory a = new ProcessStablePhenotypeFlagThreadFactory(0);
    private final /* synthetic */ int b;

    public /* synthetic */ cdx(int i) {
        this.b = i;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        switch (this.b) {
            case 0:
                return new Thread(runnable, "ProcessStablePhenotypeFlag");
            default:
                return new FontsContractRequestThread(runnable);
        }
    }
}
