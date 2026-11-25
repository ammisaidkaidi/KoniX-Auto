package defpackage;

import android.content.Context;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class BarrierHelperView extends ConstraintHelperView {
    public int a;
    public BarrierWidget b;

    public BarrierHelperView(Context context) {
        super(context);
        super.setVisibility(8);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x000c, code lost:
    
        if (r0 == 6) goto L9;
     */
    @Override // defpackage.ConstraintHelperView
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(ConstraintWidget vxVar, boolean z) {
        int i = this.a;
        if (!z) {
            if (NavInstructionTypeEnum != 5) {
                if (NavInstructionTypeEnum == 6) {
                    i = 1;
                }
            }
            i = 0;
        } else if (NavInstructionTypeEnum == 5) {
            i = 1;
        }
        if (vxVar instanceof BarrierWidget) {
            ((BarrierWidget) vxVar).a = i;
        }
    }

    public final void b(int i) {
        this.b.c = i;
    }

    @Override // defpackage.ConstraintHelperView
    protected final void c() {
        BarrierWidget vuVar = new BarrierWidget();
        this.b = vuVar;
        this.h = vuVar;
        f();
    }
}
