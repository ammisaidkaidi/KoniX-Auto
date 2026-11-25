package defpackage;

import android.content.Context;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class FlagSnapshotCommitFn implements AsyncFunctionInterface {
    public final /* synthetic */ PhenotypeFlagKey a;
    public final /* synthetic */ String b;
    public final /* synthetic */ PhenotypeContext c;
    private final /* synthetic */ int d;

    public /* synthetic */ cfz(PhenotypeContext cdzVar, PhenotypeFlagKey cfnVar, String str, int i) {
        this.d = i;
        this.c = cdzVar;
        this.a = cfnVar;
        this.b = str;
    }

    public /* synthetic */ cfz(PhenotypeFlagKey cfnVar, String str, PhenotypeContext cdzVar, int i) {
        this.d = i;
        this.a = cfnVar;
        this.b = str;
        this.c = cdzVar;
    }

    @Override // defpackage.AsyncFunctionInterface
    public final ListenableFuture a(Object obj) {
        String str;
        switch (this.d) {
            case 0:
                final PhenotypeFlagKey cfnVar = this.a;
                String str2 = this.b;
                final PhenotypeContext cdzVar = this.c;
                List<String> list = (List) obj;
                if (!cfnVar.d) {
                    list = ImmutableList.q("");
                }
                ImmutableListBuilder j = ImmutableList.j();
                for (final String str3 : list) {
                    if (!PhenotypePackageChangeReceiver.c.containsKey(GuavaPair.a(str2, str3))) {
                        if (cfnVar.c) {
                            Context context = cdzVar.h;
                            str = PhenotypeStickyAccountPrefs.a(context).getString(cfnVar.a, "");
                        } else {
                            str = str3;
                        }
                        final ListenableFuture d = PhenotypeFlagFactoryRegistry.d(cdzVar, cfnVar.a, str);
                        j.g(TransformFuture.p(TransformFuture.p(AbstractListenableFutureBase.q(ProtoMsgIntStringInt), new FlagSnapshotCommitFn(cdzVar, cfnVar, str3, 1), cdzVar.d()), new AsyncFunctionInterface() { // from class: cfy
                            @Override // defpackage.AsyncFunctionInterface
                            public final ListenableFuture a(Object obj2) {
                                final PhenotypeContext cdzVar2 = PhenotypeContext.this;
                                ListenableFuture dagVar = d;
                                final PhenotypeFlagKey cfnVar2 = cfnVar;
                                final String str4 = str3;
                                final PhenotypeConfigSyncProto cgwVar = (PhenotypeConfigSyncProto) ProjectionIntentHelper.o(dagVar);
                                if (cgwVar.b.isEmpty()) {
                                    return dad.a;
                                }
                                return TransformFuture.p(AbstractListenableFutureBase.q(TransformFuture.o(AbstractListenableFutureBase.q(PhenotypeAccountDataStore.a(cdzVar2).a()), new AccountFlagMapper(cfnVar2.a, 0), cdzVar2.d())), new AsyncFunctionInterface() { // from class: cga
                                    @Override // defpackage.AsyncFunctionInterface
                                    public final ListenableFuture a(Object obj3) {
                                        String str5 = str4;
                                        return !((String) obj3).equals(str5) ? dad.a : PhenotypePackageChangeReceiver.c.containsKey(GuavaPair.a(cfnVar2.a, str5)) ? dad.a : cdzVar2.b().a(cgwVar.b);
                                    }
                                }, cdzVar2.d());
                            }
                        }, cdzVar.d()));
                    }
                }
                return ProjectionIntentHelper.e(j.f()).a(cge.c, cdzVar.d());
            default:
                PhenotypeContext cdzVar2 = this.c;
                PhenotypeFlagKey cfnVar2 = this.a;
                return PhenotypeFlagFactoryRegistry.e(cdzVar2, cfnVar2.a, this.b, (PhenotypeConfigSyncProto) obj, cfnVar2.b, cfnVar2.e);
        }
    }
}
