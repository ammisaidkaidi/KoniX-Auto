package defpackage;

import java.util.Iterator;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class DimensionDependencyNodeSub extends DimensionDependencyNode {
    public int m;

    public DimensionDependencyNodeSub(WidgetRun wtVar) {
        super(wtVar);
        this.l = wtVar instanceof HorizontalWidgetRun ? 2 : 3;
    }

    @Override // defpackage.DimensionDependencyNode
    public final void c(int i) {
        if (this.i) {
            return;
        }
        this.i = true;
        this.f = i;
        Iterator it = this.j.iterator();
        while (it.hasNext()) {
            ((WidgetRunDependency) it.next()).f();
        }
    }
}
