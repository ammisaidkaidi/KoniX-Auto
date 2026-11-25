package defpackage;

import java.util.ArrayList;

/* compiled from: PG */
/* loaded from: classes.dex */
public class wb extends vx {
    public vx[] aq = new vx[4];
    public int ar = 0;

    public final void T(ArrayList arrayList, int i, ws wsVar) {
        for (int i2 = 0; i2 < this.ar; i2++) {
            wsVar.d(this.aq[i2]);
        }
        for (int i3 = 0; i3 < this.ar; i3++) {
            io.d(this.aq[i3], i, arrayList, wsVar);
        }
    }
}
