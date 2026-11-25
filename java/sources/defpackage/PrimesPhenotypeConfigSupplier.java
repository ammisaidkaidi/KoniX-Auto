package defpackage;

import android.content.Context;
import java.util.List;
import java.util.concurrent.Callable;

/* compiled from: PG */
/* loaded from: classes.dex */
final class PrimesPhenotypeConfigSupplier implements PrimesConfigSupplier {
    public final String a;
    public final String b;
    public final boolean c;
    private final MetricSnapshotTransmitter d;
    private final ClearcutSnapshotTransmitter e;
    private final PhenotypeFlagsSupplier f;

    public PrimesPhenotypeConfigSupplier(Context context, GuavaOptional cocVar, GuavaOptional cocVar2, GuavaOptional cocVar3, GuavaOptional cocVar4) {
        String packageName = context.getPackageName();
        MetricSnapshotTransmitter cclVar = (MetricSnapshotTransmitter) cocVar.b(ccl.b);
        ClearcutSnapshotTransmitter ccoVar = (ClearcutSnapshotTransmitter) cocVar2.b(cco.b);
        PhenotypeFlagsSupplier cczVar = (PhenotypeFlagsSupplier) cocVar3.b(ccz.b);
        boolean booleanValue = ((Boolean) cocVar4.b(false)).booleanValue();
        this.b = "AARECEIVER_ANDROID_PRIMES";
        this.d = cclVar;
        this.e = ccoVar;
        this.f = cczVar;
        this.c = booleanValue;
        String valueOf = String.valueOf(packageName);
        this.a = valueOf.length() != 0 ? "com.google.android.libraries.performance.primes#".concat(valueOf) : new String("com.google.android.libraries.performance.primes#");
    }

    @Override // defpackage.PrimesConfigSupplier
    public final ListenableFuture a() {
        final ListenableFuture a = this.d.a();
        final ListenableFuture a2 = this.e.a();
        final ListenableFuture a3 = this.f.a();
        return ProjectionIntentHelper.f(a, a2, a3).a(new Callable() { // from class: cdb
            @Override // java.util.concurrent.Callable
            public final Object call() {
                PrimesPhenotypeConfigSupplier cdcVar = PrimesPhenotypeConfigSupplier.this;
                ListenableFuture dagVar = a;
                ListenableFuture dagVar2 = a2;
                ListenableFuture dagVar3 = a3;
                ProtoMsgHoldingMessageAndBool n = PhenotypeConfigMessage.h.n();
                String str = cdcVar.b;
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                PhenotypeConfigMessage cdaVar = (PhenotypeConfigMessage) n.b;
                int i = cdaVar.a | 1;
                cdaVar.a = i;
                cdaVar.b = str;
                String str2 = cdcVar.a;
                str2.getClass();
                int i2 = i | 2;
                cdaVar.a = i2;
                cdaVar.c = str2;
                boolean z = cdcVar.c;
                cdaVar.a = i2 | 4;
                cdaVar.d = z;
                try {
                    GuavaOptional cocVar = (GuavaOptional) ProjectionIntentHelper.o(dagVar);
                    if (cocVar.d()) {
                        String str3 = (String) cocVar.a();
                        if (n.c) {
                            n.k();
                            n.c = false;
                        }
                        PhenotypeConfigMessage cdaVar2 = (PhenotypeConfigMessage) n.b;
                        cdaVar2.a |= 16;
                        cdaVar2.f = str3;
                    }
                } catch (Exception e) {
                }
                try {
                    List list = (List) ProjectionIntentHelper.o(dagVar2);
                    if (n.c) {
                        n.k();
                        n.c = false;
                    }
                    PhenotypeConfigMessage cdaVar3 = (PhenotypeConfigMessage) n.b;
                    LazyStringList ddpVar = cdaVar3.g;
                    if (!ddpVar.c()) {
                        cdaVar3.g = GeneratedMessageLite.v(ddpVar);
                    }
                    ProtoMessageBuilderBase.d(list, cdaVar3.g);
                } catch (Exception e2) {
                }
                try {
                    GuavaOptional cocVar2 = (GuavaOptional) ProjectionIntentHelper.o(dagVar3);
                    if (cocVar2.d()) {
                        String str4 = (String) cocVar2.a();
                        if (n.c) {
                            n.k();
                            n.c = false;
                        }
                        PhenotypeConfigMessage cdaVar4 = (PhenotypeConfigMessage) n.b;
                        cdaVar4.a |= 8;
                        cdaVar4.e = str4;
                    }
                } catch (Exception e3) {
                }
                ProtoMsgSubclassOfDdf ddhVar = (ProtoMsgSubclassOfDdf) PrimesLogMessage.c.n();
                ProtoParserFactory dcxVar = cda.i;
                Object obj = (PhenotypeConfigMessage) n.h();
                if (dcxVar.a != ddhVar.a) {
                    throw new IllegalArgumentException("This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings.");
                }
                if (ddhVar.c) {
                    ddhVar.k();
                    ddhVar.c = false;
                }
                MessageFieldReflectionUtil ddbVar = ((ProtoMsgWithAndroidBuildData) ddhVar.b).d;
                if (ddbVar.c) {
                    ddbVar = ddbVar.clone();
                    ((ProtoMsgWithAndroidBuildData) ddhVar.b).d = ddbVar;
                }
                ProtoFieldNumber ddjVar = dcxVar.d;
                if (ddjVar.a() == ProtoJavaType.ENUM) {
                    obj = Integer.valueOf(((EnumLite) obj).a());
                }
                ddbVar.l(ddjVar, obj);
                return (PrimesLogMessage) ddhVar.h();
            }
        }, czj.a);
    }
}
