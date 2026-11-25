package defpackage;

import android.util.SparseArray;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ConstraintSparseArrayMap {
    public final SparseArray a = new SparseArray();
    public int b = 0;

    static final long b(long j, long j2) {
        return j == 0 ? j2 : ((ProtoMessageTwoIntsAndFlagValue / 4) * 3) + (j2 / 4);
    }

    public final ConstraintAnchorList a(int i) {
        ConstraintAnchorList rfVar = (ConstraintAnchorList) this.a.get(NavInstructionTypeEnum);
        if (rfVar != null) {
            return rfVar;
        }
        ConstraintAnchorList rfVar2 = new ConstraintAnchorList();
        this.a.put(i, rfVar2);
        return rfVar2;
    }
}
