package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class cdi implements cdj {
    private final /* synthetic */ int a;

    public cdi(int i) {
        this.a = i;
    }

    @Override // defpackage.cdj
    public final /* synthetic */ String a(deq deqVar) {
        switch (this.a) {
            case 0:
                return ((doj) ((ddf) deqVar).b).e;
            case 1:
                return ((dpz) ((ddf) deqVar).b).o;
            default:
                return ((dpc) ((ddf) deqVar).b).b;
        }
    }

    @Override // defpackage.cdj
    public final /* synthetic */ String b(deq deqVar) {
        switch (this.a) {
            case 0:
                return ((doj) ((ddf) deqVar).b).d;
            case 1:
                return ((dpz) ((ddf) deqVar).b).d;
            default:
                return ((dpc) ((ddf) deqVar).b).d;
        }
    }

    @Override // defpackage.cdj
    public final /* synthetic */ void d(deq deqVar) {
        switch (this.a) {
            case 0:
                ddf ddfVar = (ddf) deqVar;
                if (ddfVar.c) {
                    ddfVar.k();
                    ddfVar.c = false;
                }
                doj dojVar = (doj) ddfVar.b;
                doj dojVar2 = doj.k;
                dojVar.a &= -5;
                dojVar.d = doj.k.d;
                break;
            case 1:
                ddf ddfVar2 = (ddf) deqVar;
                if (ddfVar2.c) {
                    ddfVar2.k();
                    ddfVar2.c = false;
                }
                dpz dpzVar = (dpz) ddfVar2.b;
                dpz dpzVar2 = dpz.y;
                dpzVar.a &= -5;
                dpzVar.d = dpz.y.d;
                break;
            default:
                ddf ddfVar3 = (ddf) deqVar;
                if (ddfVar3.c) {
                    ddfVar3.k();
                    ddfVar3.c = false;
                }
                dpc dpcVar = (dpc) ddfVar3.b;
                dpc dpcVar2 = dpc.k;
                dpcVar.a &= -5;
                dpcVar.d = dpc.k.d;
                break;
        }
    }

    @Override // defpackage.cdj
    public final /* synthetic */ void c(deq deqVar, Long l) {
        switch (this.a) {
            case 0:
                if (l == null) {
                    ddf ddfVar = (ddf) deqVar;
                    if (ddfVar.c) {
                        ddfVar.k();
                        ddfVar.c = false;
                    }
                    doj dojVar = (doj) ddfVar.b;
                    doj dojVar2 = doj.k;
                    dojVar.a &= -3;
                    dojVar.c = 0L;
                    break;
                } else {
                    long longValue = l.longValue();
                    ddf ddfVar2 = (ddf) deqVar;
                    if (ddfVar2.c) {
                        ddfVar2.k();
                        ddfVar2.c = false;
                    }
                    doj dojVar3 = (doj) ddfVar2.b;
                    doj dojVar4 = doj.k;
                    dojVar3.a |= 2;
                    dojVar3.c = longValue;
                    break;
                }
            case 1:
                if (l == null) {
                    ddf ddfVar3 = (ddf) deqVar;
                    if (ddfVar3.c) {
                        ddfVar3.k();
                        ddfVar3.c = false;
                    }
                    dpz dpzVar = (dpz) ddfVar3.b;
                    dpz dpzVar2 = dpz.y;
                    dpzVar.a &= -3;
                    dpzVar.c = 0L;
                    break;
                } else {
                    long longValue2 = l.longValue();
                    ddf ddfVar4 = (ddf) deqVar;
                    if (ddfVar4.c) {
                        ddfVar4.k();
                        ddfVar4.c = false;
                    }
                    dpz dpzVar3 = (dpz) ddfVar4.b;
                    dpz dpzVar4 = dpz.y;
                    dpzVar3.a |= 2;
                    dpzVar3.c = longValue2;
                    break;
                }
            default:
                if (l != null) {
                    long longValue3 = l.longValue();
                    ddf ddfVar5 = (ddf) deqVar;
                    if (ddfVar5.c) {
                        ddfVar5.k();
                        ddfVar5.c = false;
                    }
                    dpc dpcVar = (dpc) ddfVar5.b;
                    dpc dpcVar2 = dpc.k;
                    dpcVar.a |= 2;
                    dpcVar.c = longValue3;
                    break;
                } else {
                    ddf ddfVar6 = (ddf) deqVar;
                    if (ddfVar6.c) {
                        ddfVar6.k();
                        ddfVar6.c = false;
                    }
                    dpc dpcVar3 = (dpc) ddfVar6.b;
                    dpc dpcVar4 = dpc.k;
                    dpcVar3.a &= -3;
                    dpcVar3.c = 0L;
                    break;
                }
        }
    }
}
