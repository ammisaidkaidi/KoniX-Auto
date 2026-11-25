package defpackage;

import android.content.Context;
import com.google.android.libraries.performance.primes.transmitter.clearcut.ClearcutMetricSnapshotTransmitter;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ClearcutSnapshotTransmitterImpl implements MetricSnapshotTransmitterApi {
    public final Context a;
    public final ClearcutMetricSnapshotTransmitter b;
    private final StopwatchTicker c;
    private final boolean d;
    private final PrimesPhenotypeConfigSupplier e;

    public ClearcutSnapshotTransmitterImpl(Context context, GuavaOptional cocVar, PrimesPhenotypeConfigSupplier cdcVar, ClearcutMetricSnapshotTransmitter clearcutMetricSnapshotTransmitter) {
        this.a = context;
        this.c = ex.i(new PrimesTagSupplier(context, 2));
        this.d = c(cocVar);
        this.e = cdcVar;
        this.b = clearcutMetricSnapshotTransmitter;
    }

    public static boolean c(GuavaOptional cocVar) {
        return ((Boolean) cocVar.b(false)).booleanValue();
    }

    @Override // defpackage.MetricSnapshotTransmitterApi
    public final PrimesMetricSnapshot a() {
        return new PrimesMetricSnapshot(9);
    }

    @Override // defpackage.MetricSnapshotTransmitterApi
    public final void b(final ProtoRootAggregateMessage dpzVar) {
        int i;
        if (this.d) {
            ProtoMessageDphStringsAndCxu dpmVar = dpzVar.h;
            if (dpmVar == null) {
                dpmVar = dpm.i;
            }
            if ((dpmVar.a & 1) != 0) {
                return;
            }
        }
        if ((dpzVar.a & 2048) != 0 && ((Boolean) this.c.a()).booleanValue()) {
            ProtoMsgHoldingMessageAndBool ddfVar = (ProtoMsgHoldingMessageAndBool) dpzVar.E(5);
            ddfVar.n(dpzVar);
            ProtoMessageManyIntsAndDpt dpqVar = dpzVar.l;
            if (dpqVar == null) {
                dpqVar = dpq.o;
            }
            ProtobufList<ProtoMessageFourInts> ddrVar = dpqVar.j;
            if (!ddrVar.isEmpty()) {
                ProtoMsgHoldingMessageAndBool n = ProtoMessageTwoBytesFields.c.n();
                ProtoMessageFourInts dppVar = null;
                for (ProtoMessageFourInts dppVar2 : ddrVar) {
                    if (dppVar != null && (NavInstructionTypeEnum = dppVar.d + 1) != dppVar2.c) {
                        n.ag(0);
                        n.af(NavInstructionTypeEnum);
                    }
                    n.ag(dppVar2.b);
                    n.af(dppVar2.c);
                    dppVar = dppVar2;
                }
                if (dppVar != null && (dppVar.a & 4) != 0) {
                    int i2 = dppVar.d;
                    n.ag(0);
                    n.af(i2 + 1);
                }
                ProtoMsgHoldingMessageAndBool ddfVar2 = (ProtoMsgHoldingMessageAndBool) dpqVar.E(5);
                ddfVar2.n(dpqVar);
                if (ddfVar2.c) {
                    ddfVar2.k();
                    ddfVar2.c = false;
                }
                ((ProtoMessageManyIntsAndDpt) ddfVar2.b).j = ProtoMessageManyIntsAndDpt.y();
                if (ddfVar2.c) {
                    ddfVar2.k();
                    ddfVar2.c = false;
                }
                ProtoMessageManyIntsAndDpt dpqVar2 = (ProtoMessageManyIntsAndDpt) ddfVar2.b;
                ProtoMessageTwoBytesFields dptVar = (ProtoMessageTwoBytesFields) n.h();
                dptVar.getClass();
                dpqVar2.i = dptVar;
                dpqVar2.a |= 128;
                dpqVar = (ProtoMessageManyIntsAndDpt) ddfVar2.h();
            }
            if (ddfVar.c) {
                ddfVar.k();
                ddfVar.c = false;
            }
            ProtoRootAggregateMessage dpzVar2 = (ProtoRootAggregateMessage) ddfVar.b;
            dpqVar.getClass();
            dpzVar2.l = dpqVar;
            dpzVar2.a |= 2048;
            dpzVar = (ProtoRootAggregateMessage) ddfVar.h();
        }
        ProjectionIntentHelper.p(TransformFuture.p(this.e.a(), new AsyncFunctionInterface() { // from class: cdf
            @Override // defpackage.AsyncFunctionInterface
            public final ListenableFuture a(Object obj) {
                ClearcutSnapshotTransmitterImpl cdhVar = ClearcutSnapshotTransmitterImpl.this;
                ProtoRootAggregateMessage dpzVar3 = dpzVar;
                ClearcutMetricSnapshotTransmitter clearcutMetricSnapshotTransmitter = cdhVar.b;
                Context context = cdhVar.a;
                ProtoMsgSubclassOfDdf ddhVar = (ProtoMsgSubclassOfDdf) PrimesLogMessage.c.n();
                ddhVar.n((PrimesLogMessage) obj);
                if (ddhVar.c) {
                    ddhVar.k();
                    ddhVar.c = false;
                }
                PrimesLogMessage ccsVar = (PrimesLogMessage) ddhVar.b;
                dpzVar3.getClass();
                ccsVar.b = dpzVar3;
                ccsVar.a |= 1;
                return clearcutMetricSnapshotTransmitter.a(context, (PrimesLogMessage) ddhVar.h());
            }
        }, czj.a), new ClearcutTransmitterCallback(), czj.a);
    }
}
