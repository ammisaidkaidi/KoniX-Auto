package defpackage;

import android.util.SparseIntArray;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class SpanSizeLookupBase {
    final SparseIntArray a = new SparseIntArray();
    final SparseIntArray b = new SparseIntArray();

    public static final int e(int i, int i2) {
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < i; i5++) {
            i3++;
            if (i3 == i2) {
                i4++;
                i3 = 0;
            } else if (i3 > i2) {
                i4++;
                i3 = 1;
            }
        }
        return i3 + 1 > i2 ? i4 + 1 : i4;
    }

    public int a(int i, int i2) {
        throw null;
    }

    public abstract void b();

    public final void c() {
        this.b.clear();
    }

    public final void d() {
        this.a.clear();
    }
}
