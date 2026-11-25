package defpackage;

import java.util.ArrayList;

/* compiled from: PG */
/* loaded from: classes.dex */
final class RunGroupList {
    public static int a;
    WidgetRun b;
    final ArrayList c = new ArrayList();

    public RunGroupList(WidgetRun wtVar) {
        this.b = null;
        a++;
        this.b = wtVar;
    }

    public final long a(DimensionDependencyNode wkVar, long j) {
        WidgetRun wtVar = wkVar.d;
        if (wtVar instanceof GroupWidgetRun) {
            return j;
        }
        int size = wkVar.j.size();
        long j2 = j;
        for (int i = 0; NavInstructionTypeEnum < size; i++) {
            WidgetRunDependency wiVar = (WidgetRunDependency) wkVar.j.get(NavInstructionTypeEnum);
            if (wiVar instanceof DimensionDependencyNode) {
                DimensionDependencyNode wkVar2 = (DimensionDependencyNode) wiVar;
                if (wkVar2.d != wtVar) {
                    j2 = Math.min(j2, a(wkVar2, wkVar2.e + j));
                }
            }
        }
        if (wkVar != wtVar.j) {
            return j2;
        }
        long a2 = j - wtVar.a();
        return Math.min(Math.min(j2, a(wtVar.i, a2)), a2 - wtVar.i.e);
    }

    public final long b(DimensionDependencyNode wkVar, long j) {
        WidgetRun wtVar = wkVar.d;
        if (wtVar instanceof GroupWidgetRun) {
            return j;
        }
        int size = wkVar.j.size();
        long j2 = j;
        for (int i = 0; NavInstructionTypeEnum < size; i++) {
            WidgetRunDependency wiVar = (WidgetRunDependency) wkVar.j.get(NavInstructionTypeEnum);
            if (wiVar instanceof DimensionDependencyNode) {
                DimensionDependencyNode wkVar2 = (DimensionDependencyNode) wiVar;
                if (wkVar2.d != wtVar) {
                    j2 = Math.max(j2, b(wkVar2, wkVar2.e + j));
                }
            }
        }
        if (wkVar != wtVar.i) {
            return j2;
        }
        long a2 = j + wtVar.a();
        return Math.max(Math.max(j2, b(wtVar.j, a2)), a2 - wtVar.j.e);
    }
}
