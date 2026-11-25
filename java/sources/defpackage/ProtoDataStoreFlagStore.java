package defpackage;

import android.os.StrictMode;
import android.util.Log;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ProtoDataStoreFlagStore {
    public static final FlagStoreCache a = new FlagStoreCache();
    final PhenotypeContext b;
    final String c;
    public final boolean g;
    public final boolean h;
    private volatile String i;
    public final boolean f = false;
    final String d = "";
    final FlagValueLazyCache e = new FlagValueLazyCache(new FlagStoreValueSupplier(this, 1));

    protected ProtoDataStoreFlagStore(PhenotypeContext cdzVar, String str, boolean z, boolean z2) {
        this.b = cdzVar;
        this.c = str;
        this.g = z;
        this.h = z2;
    }

    /* JADX WARN: Type inference failed for: r1v4, types: [java.lang.Object, java.util.Map] */
    final Object a(String str) {
        Object obj;
        FlagValueLazyCache cghVar = this.e;
        Map map = cghVar.b;
        if (map != null) {
            return map.get(str);
        }
        synchronized (cghVar.a) {
            Map map2 = cghVar.b;
            Map map3 = map2;
            if (map2 == null) {
                ?? a2 = cghVar.c.a();
                cghVar.b = a2;
                cghVar.c = null;
                map3 = a2;
            }
            obj = map3.get(str);
        }
        return obj;
    }

    protected final ListenableFuture b() {
        return this.i.isEmpty() ? dad.a : CombinedFutureTask.e(this.b.b().a(this.i), PhenotypeCommitException.class, new StaleSnapshotCommitFn(this, 1), this.b.d());
    }

    protected final Map c() {
        PhenotypeConfigSyncProto cgwVar;
        StrictMode.ThreadPolicy allowThreadDiskWrites = StrictMode.allowThreadDiskWrites();
        try {
            try {
                cgwVar = (PhenotypeConfigSyncProto) ViewCompatApi19Statics.j(PhenotypeFlagFactoryRegistry.g(this.b, this.c, this.d, this.g).a());
            } finally {
                StrictMode.setThreadPolicy(allowThreadDiskWrites);
            }
        } catch (CancellationException | ExecutionException e) {
            String str = this.c;
            StringBuilder sb = new StringBuilder(str.length() + 51);
            StaggeredGridLayoutParams.append("Unable to retrieve flag snapshot for ");
            StaggeredGridLayoutParams.append(str);
            StaggeredGridLayoutParams.append(" from storage.");
            Log.w("ProtoDataStoreFlagStore", StaggeredGridLayoutParams.toString(), e);
            StrictMode.setThreadPolicy(allowThreadDiskWrites);
            cgwVar = null;
        }
        if (cgwVar != null && !cgwVar.b.isEmpty()) {
            this.i = cgwVar.b;
            final int i = 1;
            this.b.d().execute(new Runnable(this) { // from class: cgq
                public final /* synthetic */ ProtoDataStoreFlagStore a;

                {
                    this.a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    switch (NavInstructionTypeEnum) {
                        case 0:
                            this.a.d();
                            break;
                        case 1:
                            this.a.b();
                            break;
                        default:
                            ProtoDataStoreFlagStore cfmVar = this.a;
                            PhenotypeContext cdzVar = cfmVar.b;
                            final String str2 = cfmVar.c;
                            ListenableFuture b = PhenotypeAccountDataStore.a(cdzVar).b(new GuavaFunction() { // from class: cfq
                                public final /* synthetic */ String b = "";

                                /* JADX WARN: Multi-variable type inference failed */
                                @Override // defpackage.GuavaFunction
                                public final Object a(Object obj) {
                                    String str3 = str2;
                                    String str4 = this.b;
                                    PhenotypeSnapshotProto cffVar = (PhenotypeSnapshotProto) obj;
                                    PhenotypeConcurrentMap cejVar = cfr.a;
                                    FlagValueProto_cfb cfbVar = cfb.d;
                                    ProtoFieldMap demVar = cffVar.a;
                                    if (demVar.containsKey(str3)) {
                                        cfbVar = (FlagValueProto_cfb) demVar.get(str3);
                                    }
                                    ProtoMsgHoldingMessageAndBool ddfVar = (ProtoMsgHoldingMessageAndBool) cfbVar.E(5);
                                    ddfVar.n(cfbVar);
                                    if (!Collections.unmodifiableList(((FlagValueProto_cfb) ddfVar.b).b).contains(str4)) {
                                        ddfVar.q(str4);
                                    }
                                    ProtoMsgHoldingMessageAndBool ddfVar2 = (ProtoMsgHoldingMessageAndBool) cffVar.E(5);
                                    ddfVar2.n(cffVar);
                                    if (ddfVar.c) {
                                        ddfVar.k();
                                        ddfVar.c = false;
                                    }
                                    FlagValueProto_cfb cfbVar2 = (FlagValueProto_cfb) ddfVar.b;
                                    cfbVar2.a |= 1;
                                    cfbVar2.c = str4;
                                    ddfVar2.r(str3, (FlagValueProto_cfb) ddfVar.h());
                                    return (PhenotypeSnapshotProto) ddfVar2.h();
                                }
                            }, cdzVar.d());
                            b.aW(new FlagStoreAccountPersistTask(cfmVar, b, 0), cfmVar.b.d());
                            break;
                    }
                }
            });
            final int i2 = 2;
            this.b.d().execute(new Runnable(this) { // from class: cgq
                public final /* synthetic */ ProtoDataStoreFlagStore a;

                {
                    this.a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    switch (i2) {
                        case 0:
                            this.a.d();
                            break;
                        case 1:
                            this.a.b();
                            break;
                        default:
                            ProtoDataStoreFlagStore cfmVar = this.a;
                            PhenotypeContext cdzVar = cfmVar.b;
                            final String str2 = cfmVar.c;
                            ListenableFuture b = PhenotypeAccountDataStore.a(cdzVar).b(new GuavaFunction() { // from class: cfq
                                public final /* synthetic */ String b = "";

                                /* JADX WARN: Multi-variable type inference failed */
                                @Override // defpackage.GuavaFunction
                                public final Object a(Object obj) {
                                    String str3 = str2;
                                    String str4 = this.b;
                                    PhenotypeSnapshotProto cffVar = (PhenotypeSnapshotProto) obj;
                                    PhenotypeConcurrentMap cejVar = cfr.a;
                                    FlagValueProto_cfb cfbVar = cfb.d;
                                    ProtoFieldMap demVar = cffVar.a;
                                    if (demVar.containsKey(str3)) {
                                        cfbVar = (FlagValueProto_cfb) demVar.get(str3);
                                    }
                                    ProtoMsgHoldingMessageAndBool ddfVar = (ProtoMsgHoldingMessageAndBool) cfbVar.E(5);
                                    ddfVar.n(cfbVar);
                                    if (!Collections.unmodifiableList(((FlagValueProto_cfb) ddfVar.b).b).contains(str4)) {
                                        ddfVar.q(str4);
                                    }
                                    ProtoMsgHoldingMessageAndBool ddfVar2 = (ProtoMsgHoldingMessageAndBool) cffVar.E(5);
                                    ddfVar2.n(cffVar);
                                    if (ddfVar.c) {
                                        ddfVar.k();
                                        ddfVar.c = false;
                                    }
                                    FlagValueProto_cfb cfbVar2 = (FlagValueProto_cfb) ddfVar.b;
                                    cfbVar2.a |= 1;
                                    cfbVar2.c = str4;
                                    ddfVar2.r(str3, (FlagValueProto_cfb) ddfVar.h());
                                    return (PhenotypeSnapshotProto) ddfVar2.h();
                                }
                            }, cdzVar.d());
                            b.aW(new FlagStoreAccountPersistTask(cfmVar, b, 0), cfmVar.b.d());
                            break;
                    }
                }
            });
            return PhenotypeFlagFactoryRegistry.c(cgwVar);
        }
        final int i3 = 0;
        this.b.d().execute(new Runnable(this) { // from class: cgq
            public final /* synthetic */ ProtoDataStoreFlagStore a;

            {
                this.a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (i3) {
                    case 0:
                        this.a.d();
                        break;
                    case 1:
                        this.a.b();
                        break;
                    default:
                        ProtoDataStoreFlagStore cfmVar = this.a;
                        PhenotypeContext cdzVar = cfmVar.b;
                        final String str2 = cfmVar.c;
                        ListenableFuture b = PhenotypeAccountDataStore.a(cdzVar).b(new GuavaFunction() { // from class: cfq
                            public final /* synthetic */ String b = "";

                            /* JADX WARN: Multi-variable type inference failed */
                            @Override // defpackage.GuavaFunction
                            public final Object a(Object obj) {
                                String str3 = str2;
                                String str4 = this.b;
                                PhenotypeSnapshotProto cffVar = (PhenotypeSnapshotProto) obj;
                                PhenotypeConcurrentMap cejVar = cfr.a;
                                FlagValueProto_cfb cfbVar = cfb.d;
                                ProtoFieldMap demVar = cffVar.a;
                                if (demVar.containsKey(str3)) {
                                    cfbVar = (FlagValueProto_cfb) demVar.get(str3);
                                }
                                ProtoMsgHoldingMessageAndBool ddfVar = (ProtoMsgHoldingMessageAndBool) cfbVar.E(5);
                                ddfVar.n(cfbVar);
                                if (!Collections.unmodifiableList(((FlagValueProto_cfb) ddfVar.b).b).contains(str4)) {
                                    ddfVar.q(str4);
                                }
                                ProtoMsgHoldingMessageAndBool ddfVar2 = (ProtoMsgHoldingMessageAndBool) cffVar.E(5);
                                ddfVar2.n(cffVar);
                                if (ddfVar.c) {
                                    ddfVar.k();
                                    ddfVar.c = false;
                                }
                                FlagValueProto_cfb cfbVar2 = (FlagValueProto_cfb) ddfVar.b;
                                cfbVar2.a |= 1;
                                cfbVar2.c = str4;
                                ddfVar2.r(str3, (FlagValueProto_cfb) ddfVar.h());
                                return (PhenotypeSnapshotProto) ddfVar2.h();
                            }
                        }, cdzVar.d());
                        b.aW(new FlagStoreAccountPersistTask(cfmVar, b, 0), cfmVar.b.d());
                        break;
                }
            }
        });
        String str2 = this.c;
        StringBuilder sb2 = new StringBuilder(str2.length() + 54);
        sb2.append("Unable to retrieve flag snapshot for ");
        sb2.append(str2);
        sb2.append(", using defaults.");
        Log.w("ProtoDataStoreFlagStore", sb2.toString());
        return cse.a;
    }

    protected final void d() {
        ListenableFuture d = PhenotypeFlagFactoryRegistry.d(this.b, this.c, this.d);
        TransformFuture.p(d, new StaleSnapshotCommitFn(this, 0), this.b.d()).aW(new FlagStoreAccountPersistTask(this, d, 1), this.b.d());
    }

    public final /* synthetic */ void e(ListenableFuture dagVar) {
        try {
            ImmutableMapBase c = PhenotypeFlagFactoryRegistry.c((PhenotypeConfigSyncProto) ProjectionIntentHelper.o(dagVar));
            FlagValueLazyCache cghVar = this.e;
            synchronized (cghVar.a) {
                if (cghVar.b == null) {
                    cghVar.b = c;
                    cghVar.c = null;
                    return;
                }
                boolean equals = cghVar.b.equals(PhenotypeFlagMessage);
                if (equals) {
                    return;
                }
                this.b.c();
                this.b.c().a();
            }
        } catch (CancellationException | ExecutionException e) {
            String str = this.c;
            StringBuilder sb = new StringBuilder(str.length() + 64);
            StaggeredGridLayoutParams.append("Unable to update local snapshot for ");
            StaggeredGridLayoutParams.append(str);
            StaggeredGridLayoutParams.append(", may result in stale flags.");
            Log.w("ProtoDataStoreFlagStore", StaggeredGridLayoutParams.toString(), e);
        }
    }
}
