package defpackage;

import android.util.SparseArray;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class rg {
    public final SparseArray a = new SparseArray();
    public int b = 0;

    static final long b(long j, long j2) {
        return j == 0 ? j2 : ((j / 4) * 3) + (j2 / 4);
    }

    public final rf a(int i) {
        rf rfVar = (rf) this.a.get(i);
        if (rfVar != null) {
            return rfVar;
        }
        rf rfVar2 = new rf();
        this.a.put(i, rfVar2);
        return rfVar2;
    }
}
