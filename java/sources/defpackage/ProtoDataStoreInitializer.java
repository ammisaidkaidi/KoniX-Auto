package defpackage;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Future;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class ProtoDataStoreInitializer implements AsyncFunctionInterface {
    public final /* synthetic */ ProtoDataStoreReader a;
    public final /* synthetic */ List b;
    public final /* synthetic */ int c;
    private final /* synthetic */ int d;

    public /* synthetic */ ciq(ProtoDataStoreReader cirVar, int i, List list, int i2) {
        this.d = i2;
        this.a = cirVar;
        this.c = i;
        this.b = list;
    }

    public /* synthetic */ ciq(ProtoDataStoreReader cirVar, List list, int i, int i2) {
        this.d = i2;
        this.a = cirVar;
        this.b = list;
        this.c = i;
    }

    @Override // defpackage.AsyncFunctionInterface
    public final ListenableFuture a(Object obj) {
        switch (this.d) {
            case 0:
                final ProtoDataStoreReader cirVar = this.a;
                final List list = this.b;
                final int i = this.c;
                final MessageLite derVar = (MessageLite) obj;
                return ProjectionIntentHelper.e(list).b(FutureFunctionWrappers.a(new FutureSupplier() { // from class: cio
                    @Override // defpackage.FutureSupplier
                    public final ListenableFuture a() {
                        ProtoDataStoreReader cirVar2 = ProtoDataStoreReader.this;
                        MessageLite derVar2 = derVar;
                        int i2 = i;
                        List list2 = list;
                        ListenableFuture j = ProjectionIntentHelper.j(derVar2);
                        for (int i3 = 0; i3 < i2; i3++) {
                            if (((Boolean) ProjectionIntentHelper.o((Future) list2.get(i3))).booleanValue()) {
                                final DataStoreMigrations cinVar = (DataStoreMigrations) cirVar2.a.get(i3);
                                j = TransformFuture.p(j, FutureFunctionWrappers.b(new AsyncFunctionInterface() { // from class: cip
                                    @Override // defpackage.AsyncFunctionInterface
                                    public final ListenableFuture a(Object obj2) {
                                        return DataStoreMigrations.this.c();
                                    }
                                }), czj.a);
                            }
                        }
                        return j;
                    }
                }), cirVar.b);
            default:
                ProtoDataStoreReader cirVar2 = this.a;
                int i2 = this.c;
                List list2 = this.b;
                ArrayList arrayList = new ArrayList(i2);
                for (int i3 = 0; i3 < i2; i3++) {
                    if (((Boolean) ProjectionIntentHelper.o((Future) list2.get(i3))).booleanValue()) {
                        arrayList.add(((DataStoreMigrations) cirVar2.a.get(i3)).a());
                    }
                }
                return ProjectionIntentHelper.g(arrayList).a(ProjectionIntentHelper.r(), czj.a);
        }
    }
}
