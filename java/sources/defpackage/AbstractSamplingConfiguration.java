package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class AbstractSamplingConfiguration {
    private final PrimesMetricConfigProto a;

    public AbstractSamplingConfiguration(PrimesMetricConfigProto dpyVar) {
        this.a = dpyVar;
    }

    public abstract long a(String str);

    public abstract PrimesMetricConfigProto b(Long l);

    public abstract boolean c();

    public final PrimesMetricConfigProto d() {
        PrimesMetricConfigProto e = e(null);
        ProtoMsgHoldingMessageAndBool ddfVar = (ProtoMsgHoldingMessageAndBool) e.E(5);
        ddfVar.n(ProtoFlagValueMessage);
        if (ddfVar.c) {
            ddfVar.k();
            ddfVar.c = false;
        }
        PrimesMetricConfigProto dpyVar = (PrimesMetricConfigProto) ddfVar.b;
        PrimesMetricConfigProto dpyVar2 = dpy.d;
        dpyVar.a |= 2;
        dpyVar.b = -1L;
        return (PrimesMetricConfigProto) ddfVar.h();
    }

    public final PrimesMetricConfigProto e(Long l) {
        int a = CommonObjectsAndPreconditionsUtil.a(this.a.c);
        if (SingleStringProtoMessage == 0 || a != 5 || l == null || l.longValue() == this.a.b) {
            return this.a;
        }
        ProtoMsgHoldingMessageAndBool n = PrimesMetricConfigProto.d.n();
        int a2 = CommonObjectsAndPreconditionsUtil.a(this.a.c);
        if (a2 == 0) {
            a2 = 1;
        }
        if (n.c) {
            n.k();
            n.c = false;
        }
        PrimesMetricConfigProto dpyVar = (PrimesMetricConfigProto) n.b;
        dpyVar.c = a2 - 1;
        dpyVar.a |= 4;
        long longValue = l.longValue();
        if (n.c) {
            n.k();
            n.c = false;
        }
        PrimesMetricConfigProto dpyVar2 = (PrimesMetricConfigProto) n.b;
        dpyVar2.a |= 2;
        dpyVar2.b = longValue;
        return (PrimesMetricConfigProto) n.h();
    }
}
