package defpackage;

import android.util.Log;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class StaleSnapshotCommitFn implements AsyncFunctionInterface {
    public final /* synthetic */ ProtoDataStoreFlagStore a;
    private final /* synthetic */ int b;

    public /* synthetic */ cgp(ProtoDataStoreFlagStore cfmVar, int i) {
        this.b = i;
        this.a = cfmVar;
    }

    @Override // defpackage.AsyncFunctionInterface
    public final ListenableFuture a(Object obj) {
        switch (this.b) {
            case 0:
                ProtoDataStoreFlagStore cfmVar = this.a;
                return PhenotypeFlagFactoryRegistry.e(cfmVar.b, cfmVar.c, cfmVar.d, (PhenotypeConfigSyncProto) obj, cfmVar.g, cfmVar.h);
            default:
                ProtoDataStoreFlagStore cfmVar2 = this.a;
                PhenotypeCommitException cepVar = (PhenotypeCommitException) obj;
                if (cepVar.a == 29501) {
                    String str = cfmVar2.c;
                    StringBuilder sb = new StringBuilder(str.length() + 68);
                    StaggeredGridLayoutParams.append("Failed to commit due to stale snapshot for ");
                    StaggeredGridLayoutParams.append(str);
                    StaggeredGridLayoutParams.append(", triggering flag update.");
                    Log.w("ProtoDataStoreFlagStore", StaggeredGridLayoutParams.toString(), cepVar);
                    cfmVar2.d();
                }
                return ProjectionIntentHelper.i(cepVar);
        }
    }
}
