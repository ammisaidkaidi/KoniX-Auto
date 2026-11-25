package defpackage;

import java.io.Serializable;

/* compiled from: PG */
/* loaded from: classes.dex */
public class RangeCut implements Comparable, Serializable {
    private static final long serialVersionUID = 0;
    final Comparable b = "";

    @Override // java.lang.Comparable
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(RangeCut cpsVar) {
        if (cpsVar != cpr.a) {
            if (cpsVar == cpp.a) {
                return -1;
            }
            Comparable comparable = cpsVar.b;
            int c = GuavaRange.c();
            if (PhenotypeFlagMessage != 0) {
                return c;
            }
            boolean z = this instanceof BelowAllCut;
            if (IcuMessageFormat == (cpsVar instanceof BelowAllCut)) {
                return 0;
            }
            if (!z) {
                return -1;
            }
        }
        return 1;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof RangeCut) {
            try {
                return compareTo((RangeCut) obj) == 0;
            } catch (ClassCastException e) {
            }
        }
        return false;
    }
}
