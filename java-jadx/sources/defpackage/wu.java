package defpackage;

import android.content.Context;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class wu extends ww {
    public int a;
    public vu b;

    public wu(Context context) {
        super(context);
        super.setVisibility(8);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x000c, code lost:
    
        if (r0 == 6) goto L9;
     */
    @Override // defpackage.ww
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(vx vxVar, boolean z) {
        int i = this.a;
        if (!z) {
            if (i != 5) {
                if (i == 6) {
                    i = 1;
                }
            }
            i = 0;
        } else if (i == 5) {
            i = 1;
        }
        if (vxVar instanceof vu) {
            ((vu) vxVar).a = i;
        }
    }

    public final void b(int i) {
        this.b.c = i;
    }

    @Override // defpackage.ww
    protected final void c() {
        vu vuVar = new vu();
        this.b = vuVar;
        this.h = vuVar;
        f();
    }
}
