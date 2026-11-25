package defpackage;

import android.util.Log;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class FlagStoreAccountPersistTask implements Runnable {
    public final /* synthetic */ ListenableFuture a;
    public final /* synthetic */ ProtoDataStoreFlagStore b;
    private final /* synthetic */ int c;

    public /* synthetic */ cgr(ProtoDataStoreFlagStore cfmVar, ListenableFuture dagVar, int i) {
        this.c = i;
        this.b = cfmVar;
        this.a = dagVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.c) {
            case 0:
                ProtoDataStoreFlagStore cfmVar = this.b;
                try {
                    ProjectionIntentHelper.o(this.a);
                    break;
                } catch (Exception e) {
                    String str = cfmVar.c;
                    StringBuilder sb = new StringBuilder(str.length() + 73);
                    StaggeredGridLayoutParams.append("Failed to store account on flag read for: ");
                    StaggeredGridLayoutParams.append(str);
                    StaggeredGridLayoutParams.append(" which may lead to stale flags.");
                    Log.w("ProtoDataStoreFlagStore", StaggeredGridLayoutParams.toString(), e);
                    return;
                }
            default:
                this.b.e(this.a);
                break;
        }
    }
}
