package defpackage;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ConstraintGraphOptimizer {
    public final ConstraintWidgetContainer a;
    public final ConstraintWidgetContainer d;
    final ArrayList f;
    public ConstraintLayoutMeasurer g;
    private final WidgetRunIndexHolder h;
    public boolean b = true;
    public boolean c = true;
    public final ArrayList e = new ArrayList();

    public ConstraintGraphOptimizer(ConstraintWidgetContainer vyVar) {
        new ArrayList();
        this.g = null;
        this.h = new WidgetRunIndexHolder();
        this.f = new ArrayList();
        this.a = vyVar;
        this.d = vyVar;
    }

    private final void e(WidgetRun wtVar, int i, ArrayList arrayList) {
        for (WidgetRunDependency wiVar : wtVar.i.j) {
            if (wiVar instanceof DimensionDependencyNode) {
                g((DimensionDependencyNode) wiVar, i, wtVar.j, arrayList, null);
            } else if (wiVar instanceof WidgetRun) {
                g(((WidgetRun) wiVar).i, i, wtVar.j, arrayList, null);
            }
        }
        for (WidgetRunDependency wiVar2 : wtVar.j.j) {
            if (wiVar2 instanceof DimensionDependencyNode) {
                g((DimensionDependencyNode) wiVar2, i, wtVar.i, arrayList, null);
            } else if (wiVar2 instanceof WidgetRun) {
                g(((WidgetRun) wiVar2).j, i, wtVar.i, arrayList, null);
            }
        }
        if (NavInstructionTypeEnum == 1) {
            for (WidgetRunDependency wiVar3 : ((VerticalWidgetRun) wtVar).a.j) {
                if (wiVar3 instanceof DimensionDependencyNode) {
                    g((DimensionDependencyNode) wiVar3, 1, null, arrayList, null);
                }
            }
        }
    }

    private final void f(ConstraintWidget vxVar, int i, int i2, int i3, int i4) {
        WidgetRunIndexHolder wfVar = this.h;
        wfVar.i = i;
        wfVar.j = i3;
        wfVar.a = i2;
        wfVar.b = i4;
        this.g.a(vxVar, wfVar);
        vxVar.D(this.h.c);
        vxVar.y(this.h.d);
        WidgetRunIndexHolder wfVar2 = this.h;
        vxVar.F = wfVar2.f;
        vxVar.v(wfVar2.e);
    }

    private final void g(DimensionDependencyNode wkVar, int i, DimensionDependencyNode wkVar2, ArrayList arrayList, RunGroupList wqVar) {
        WidgetRun wtVar = wkVar.d;
        if (wtVar.e == null) {
            ConstraintWidgetContainer vyVar = this.a;
            if (wtVar == vyVar.h || wtVar == vyVar.i) {
                return;
            }
            if (wqVar == null) {
                wqVar = new RunGroupList(wtVar);
                arrayList.add(wqVar);
            }
            wtVar.e = wqVar;
            wqVar.c.add(wtVar);
            for (WidgetRunDependency wiVar : wtVar.i.j) {
                if (wiVar instanceof DimensionDependencyNode) {
                    g((DimensionDependencyNode) wiVar, i, wkVar2, arrayList, wqVar);
                }
            }
            for (WidgetRunDependency wiVar2 : wtVar.j.j) {
                if (wiVar2 instanceof DimensionDependencyNode) {
                    g((DimensionDependencyNode) wiVar2, i, wkVar2, arrayList, wqVar);
                }
            }
            if (NavInstructionTypeEnum == 1 && (wtVar instanceof VerticalWidgetRun)) {
                for (WidgetRunDependency wiVar3 : ((VerticalWidgetRun) wtVar).a.j) {
                    if (wiVar3 instanceof DimensionDependencyNode) {
                        g((DimensionDependencyNode) wiVar3, 1, wkVar2, arrayList, wqVar);
                    }
                }
            }
            Iterator it = wtVar.i.k.iterator();
            while (it.hasNext()) {
                g((DimensionDependencyNode) it.next(), i, wkVar2, arrayList, wqVar);
            }
            Iterator it2 = wtVar.j.k.iterator();
            while (it2.hasNext()) {
                g((DimensionDependencyNode) it2.next(), i, wkVar2, arrayList, wqVar);
            }
            if (NavInstructionTypeEnum == 1 && (wtVar instanceof VerticalWidgetRun)) {
                Iterator it3 = ((VerticalWidgetRun) wtVar).a.k.iterator();
                while (it3.hasNext()) {
                    g((DimensionDependencyNode) it3.next(), 1, wkVar2, arrayList, wqVar);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x006a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0041  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int a(ConstraintWidgetContainer vyVar, int i) {
        long j;
        boolean contains;
        ConstraintGraphOptimizer wjVar = this;
        ConstraintWidgetContainer vyVar2 = vyVar;
        int size = wjVar.f.size();
        long j2 = 0;
        int i2 = 0;
        long j3 = 0;
        while (i2 < size) {
            RunGroupList wqVar = (RunGroupList) wjVar.f.get(i2);
            WidgetRun wtVar = wqVar.b;
            if (wtVar instanceof ChainRun) {
                if (((ChainRun) wtVar).g != i) {
                    j = j2;
                }
                DimensionDependencyNode wkVar = i == 0 ? vyVar2.h.i : vyVar2.i.i;
                DimensionDependencyNode wkVar2 = i == 0 ? vyVar2.h.j : vyVar2.i.j;
                contains = wtVar.i.k.contains(wkVar);
                boolean contains2 = wqVar.b.j.k.contains(wkVar2);
                long a = wqVar.b.a();
                if (!contains && contains2) {
                    long b = wqVar.b(wqVar.b.i, j2);
                    long a2 = wqVar.a(wqVar.b.j, j2);
                    long j4 = b - a;
                    WidgetRun wtVar2 = wqVar.b;
                    int i3 = wtVar2.j.e;
                    if (j4 >= (-i3)) {
                        j4 += i3;
                    }
                    long j5 = wtVar2.i.e;
                    long j6 = ((-a2) - a) - j5;
                    if (j6 >= j5) {
                        j6 -= j5;
                    }
                    ConstraintWidget vxVar = wtVar2.d;
                    float f = i == 0 ? vxVar.ad : vxVar.ae;
                    float f2 = f > 0.0f ? (long) ((j6 / f) + (j4 / (1.0f - f))) : 0L;
                    j = (j5 + ((((long) ((f2 * f) + 0.5f)) + a) + ((long) ((f2 * (1.0f - f)) + 0.5f)))) - i3;
                } else if (contains) {
                    j = Math.max(wqVar.b(wqVar.b.i, r0.e), wqVar.b.i.e + a);
                } else if (contains2) {
                    j = Math.max(-wqVar.a(wqVar.b.j, r0.e), (-wqVar.b.j.e) + a);
                } else {
                    j = (r0.i.e + wqVar.b.a()) - wqVar.b.j.e;
                }
            } else if (NavInstructionTypeEnum == 0) {
                if (!(wtVar instanceof HorizontalWidgetRun)) {
                    j = j2;
                }
                if (NavInstructionTypeEnum == 0) {
                }
                if (NavInstructionTypeEnum == 0) {
                }
                contains = wtVar.i.k.contains(wkVar);
                boolean contains22 = wqVar.b.j.k.contains(wkVar2);
                long a3 = wqVar.b.a();
                if (!contains) {
                }
                if (contains) {
                }
            } else {
                if (!(wtVar instanceof VerticalWidgetRun)) {
                    j = j2;
                }
                if (NavInstructionTypeEnum == 0) {
                }
                if (NavInstructionTypeEnum == 0) {
                }
                contains = wtVar.i.k.contains(wkVar);
                boolean contains222 = wqVar.b.j.k.contains(wkVar2);
                long a32 = wqVar.b.a();
                if (!contains) {
                }
                if (contains) {
                }
            }
            j3 = Math.max(j3, j);
            i2++;
            wjVar = this;
            vyVar2 = vyVar;
            j2 = 0;
        }
        return (int) j3;
    }

    public final void b() {
        ArrayList arrayList = this.e;
        arrayList.clear();
        this.d.h.d();
        this.d.i.d();
        arrayList.add(this.d.h);
        arrayList.add(this.d.i);
        ArrayList arrayList2 = this.d.aH;
        int size = arrayList2.size();
        HashSet hashSet = null;
        for (int i = 0; NavInstructionTypeEnum < size; i++) {
            ConstraintWidget vxVar = (ConstraintWidget) arrayList2.get(NavInstructionTypeEnum);
            if (vxVar instanceof ContainerWidget) {
                arrayList.add(new HelperWidgetRun(vxVar));
            } else {
                if (vxVar.I()) {
                    if (vxVar.f == null) {
                        vxVar.f = new ChainRun(vxVar, 0);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(vxVar.f);
                } else {
                    arrayList.add(vxVar.h);
                }
                if (vxVar.J()) {
                    if (vxVar.g == null) {
                        vxVar.g = new ChainRun(vxVar, 1);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(vxVar.g);
                } else {
                    arrayList.add(vxVar.i);
                }
                if (vxVar instanceof HelperWidget) {
                    arrayList.add(new GroupWidgetRun(vxVar));
                }
            }
        }
        if (hashSet != null) {
            arrayList.addAll(hashSet);
        }
        int size2 = arrayList.size();
        for (int i2 = 0; i2 < size2; i2++) {
            ((WidgetRun) arrayList.get(i2)).d();
        }
        int size3 = arrayList.size();
        for (int i3 = 0; i3 < size3; i3++) {
            WidgetRun wtVar = (WidgetRun) arrayList.get(i3);
            if (wtVar.d != this.d) {
                wtVar.b();
            }
        }
        this.f.clear();
        wq.a = 0;
        e(this.a.h, 0, this.f);
        e(this.a.i, 1, this.f);
        this.b = false;
    }

    public final void c() {
        int i;
        boolean z;
        int i2;
        boolean z2;
        DimensionDependencyNodeSub wlVar;
        ArrayList arrayList = this.a.aH;
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            ConstraintWidget vxVar = (ConstraintWidget) arrayList.get(i3);
            if (!vxVar.e) {
                int[] iArr = vxVar.ap;
                int i4 = iArr[0];
                int i5 = iArr[1];
                int i6 = vxVar.s;
                int i7 = vxVar.t;
                if (i4 == 2) {
                    i = i4;
                    z = true;
                } else if (i4 != 3) {
                    i = i4;
                    z = false;
                } else if (i6 == 1) {
                    z = true;
                    i = 3;
                } else {
                    z = false;
                    i = 3;
                }
                if (i5 == 2) {
                    i2 = i5;
                    z2 = true;
                } else if (i5 != 3) {
                    i2 = i5;
                    z2 = false;
                } else if (i7 == 1) {
                    z2 = true;
                    i2 = 3;
                } else {
                    z2 = false;
                    i2 = 3;
                }
                DimensionDependencyNodeSub wlVar2 = vxVar.h.f;
                boolean z3 = wlVar2.i;
                DimensionDependencyNodeSub wlVar3 = vxVar.i.f;
                boolean z4 = wlVar3.i;
                if (z3 && z4) {
                    f(vxVar, 1, wlVar2.f, 1, wlVar3.f);
                    vxVar.e = true;
                } else if (z3 && z2) {
                    f(vxVar, 1, wlVar2.f, 2, wlVar3.f);
                    if (i2 == 3) {
                        vxVar.i.f.m = vxVar.h();
                    } else {
                        vxVar.i.f.c(vxVar.h());
                        vxVar.e = true;
                    }
                } else if (z4 && z) {
                    f(vxVar, 2, wlVar2.f, 1, wlVar3.f);
                    if (NavInstructionTypeEnum == 3) {
                        vxVar.h.f.m = vxVar.j();
                    } else {
                        vxVar.h.f.c(vxVar.j());
                        vxVar.e = true;
                    }
                }
                if (vxVar.e && (wlVar = vxVar.i.b) != null) {
                    wlVar.c(vxVar.aa);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:134:0x0265  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x02e5  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x02fd  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x030e  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x02f5  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00bc A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0188  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0268 A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void d(ConstraintWidgetContainer vyVar) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        ArrayList arrayList = vyVar.aH;
        int size = arrayList.size();
        char c = 0;
        int i6 = 0;
        while (i6 < size) {
            ConstraintWidget vxVar = (ConstraintWidget) arrayList.get(i6);
            int[] iArr = vxVar.ap;
            int i7 = iArr[c];
            int i8 = iArr[1];
            if (vxVar.ag == 8) {
                vxVar.e = true;
            } else {
                float f = vxVar.x;
                int i9 = 2;
                if (NavManeuverTypeEnum < 1.0f && i7 == 3) {
                    vxVar.s = 2;
                    i7 = 3;
                }
                float f2 = vxVar.A;
                if (f2 < 1.0f && i8 == 3) {
                    vxVar.t = 2;
                    i8 = 3;
                }
                if (vxVar.W > 0.0f) {
                    if (i7 == 3 && (i8 == 2 || i8 == 1)) {
                        vxVar.s = 3;
                    } else if (i8 == 3 && (i7 == 2 || i7 == 1)) {
                        vxVar.t = 3;
                    } else if (i7 == 3 && i8 == 3) {
                        if (vxVar.s == 0) {
                            vxVar.s = 3;
                        }
                        if (vxVar.t == 0) {
                            vxVar.t = 3;
                        }
                    }
                }
                if (i7 == 3 && vxVar.s == 1) {
                    if (vxVar.J.e == null) {
                        i7 = 2;
                    } else if (vxVar.L.e == null) {
                        i7 = 2;
                    }
                }
                if (i8 == 3 && vxVar.t == 1) {
                    if (vxVar.K.e == null) {
                        i = 2;
                    } else if (vxVar.M.e == null) {
                        i = 2;
                    }
                    HorizontalWidgetRun wpVar = vxVar.h;
                    wpVar.k = i7;
                    int i10 = vxVar.s;
                    wpVar.c = i10;
                    VerticalWidgetRun wrVar = vxVar.i;
                    wrVar.k = i;
                    int i11 = vxVar.t;
                    wrVar.c = i11;
                    if (i7 != 4 && i7 != 1) {
                        if (i7 == 2) {
                            i7 = 2;
                        }
                        if (i7 == 3 && (NavInstructionTypeEnum == 2 || i == 1)) {
                            if (i10 != 3) {
                                if (NavInstructionTypeEnum == 2) {
                                    f(vxVar, 2, 0, 2, 0);
                                }
                                int h = vxVar.h();
                                f(vxVar, 1, (int) ((ProtoMessageSingleEnumFieldH * vxVar.W) + 0.5f), 1, h);
                                vxVar.h.f.c(vxVar.j());
                                vxVar.i.f.c(vxVar.h());
                                vxVar.e = true;
                            } else if (i10 == 1) {
                                f(vxVar, 2, 0, i, 0);
                                vxVar.h.f.m = vxVar.j();
                            } else if (i10 == 2) {
                                int i12 = vyVar.ap[c];
                                if (i12 == 1 || i12 == 4) {
                                    f(vxVar, 1, (int) ((NavManeuverTypeEnum * vyVar.j()) + 0.5f), i, vxVar.h());
                                    vxVar.h.f.c(vxVar.j());
                                    vxVar.i.f.c(vxVar.h());
                                    vxVar.e = true;
                                }
                            } else {
                                ConstraintAnchor[] vwVarArr = vxVar.R;
                                if (vwVarArr[c].e == null || vwVarArr[1].e == null) {
                                    f(vxVar, 2, 0, i, 0);
                                    vxVar.h.f.c(vxVar.j());
                                    vxVar.i.f.c(vxVar.h());
                                    vxVar.e = true;
                                }
                            }
                        }
                        if (NavInstructionTypeEnum != 3) {
                            i5 = i7;
                        } else if (i7 != 2 && i7 != 1) {
                            i5 = i7;
                        } else if (i11 == 3) {
                            if (i7 == 2) {
                                f(vxVar, 2, 0, 2, 0);
                            }
                            int j = vxVar.j();
                            float f3 = vxVar.W;
                            if (vxVar.X == -1) {
                                f3 = 1.0f / f3;
                            }
                            f(vxVar, 1, j, 1, (int) ((ProtoMessageTwoIntsAndFlagValue * f3) + 0.5f));
                            vxVar.h.f.c(vxVar.j());
                            vxVar.i.f.c(vxVar.h());
                            vxVar.e = true;
                        } else if (i11 == 1) {
                            f(vxVar, i7, 0, 2, 0);
                            vxVar.i.f.m = vxVar.h();
                        } else {
                            i5 = i7;
                            if (i11 == 2) {
                                int i13 = vyVar.ap[1];
                                if (i13 == 1 || i13 == 4) {
                                    f(vxVar, i5, vxVar.j(), 1, (int) ((f2 * vyVar.h()) + 0.5f));
                                    vxVar.h.f.c(vxVar.j());
                                    vxVar.i.f.c(vxVar.h());
                                    vxVar.e = true;
                                }
                            } else {
                                ConstraintAnchor[] vwVarArr2 = vxVar.R;
                                if (vwVarArr2[2].e == null || vwVarArr2[3].e == null) {
                                    f(vxVar, 2, 0, 3, 0);
                                    vxVar.h.f.c(vxVar.j());
                                    vxVar.i.f.c(vxVar.h());
                                    vxVar.e = true;
                                }
                            }
                        }
                        if (i5 != 3 && i == 3) {
                            if (i10 != 1 && i11 != 1) {
                                if (i11 == 2 && i10 == 2) {
                                    int[] iArr2 = vyVar.ap;
                                    if (iArr2[0] == 1 && iArr2[1] == 1) {
                                        f(vxVar, 1, (int) ((NavManeuverTypeEnum * vyVar.j()) + 0.5f), 1, (int) ((f2 * vyVar.h()) + 0.5f));
                                        vxVar.h.f.c(vxVar.j());
                                        vxVar.i.f.c(vxVar.h());
                                        vxVar.e = true;
                                    }
                                }
                            }
                            f(vxVar, 2, 0, 2, 0);
                            vxVar.h.f.m = vxVar.j();
                            vxVar.i.f.m = vxVar.h();
                        }
                    }
                    if (NavInstructionTypeEnum != 4 || i == 1) {
                        i9 = i;
                    } else {
                        if (NavInstructionTypeEnum == 2) {
                        }
                        if (i7 == 3) {
                            if (i10 != 3) {
                            }
                        }
                        if (NavInstructionTypeEnum != 3) {
                        }
                        if (i5 != 3) {
                        }
                    }
                    int j2 = vxVar.j();
                    if (i7 != 4) {
                        j2 = (vyVar.j() - vxVar.J.f) - vxVar.L.f;
                        i2 = 1;
                    } else {
                        i2 = i7;
                    }
                    int h2 = vxVar.h();
                    if (i9 != 4) {
                        i3 = (vyVar.h() - vxVar.K.f) - vxVar.M.f;
                        i4 = 1;
                    } else {
                        i3 = h2;
                        i4 = i9;
                    }
                    f(vxVar, i2, j2, i4, i3);
                    vxVar.h.f.c(vxVar.j());
                    vxVar.i.f.c(vxVar.h());
                    vxVar.e = true;
                }
                i = i8;
                HorizontalWidgetRun wpVar2 = vxVar.h;
                wpVar2.k = i7;
                int i102 = vxVar.s;
                wpVar2.c = i102;
                VerticalWidgetRun wrVar2 = vxVar.i;
                wrVar2.k = i;
                int i112 = vxVar.t;
                wrVar2.c = i112;
                if (i7 != 4) {
                    if (i7 == 2) {
                    }
                    if (i7 == 3) {
                    }
                    if (NavInstructionTypeEnum != 3) {
                    }
                    if (i5 != 3) {
                    }
                }
                if (NavInstructionTypeEnum != 4) {
                }
                i9 = i;
                int j22 = vxVar.j();
                if (i7 != 4) {
                }
                int h22 = vxVar.h();
                if (i9 != 4) {
                }
                f(vxVar, i2, j22, i4, i3);
                vxVar.h.f.c(vxVar.j());
                vxVar.i.f.c(vxVar.h());
                vxVar.e = true;
            }
            i6++;
            c = 0;
        }
    }
}
