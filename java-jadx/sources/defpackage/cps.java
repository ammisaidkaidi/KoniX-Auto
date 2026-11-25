package defpackage;

import java.io.Serializable;

/* compiled from: PG */
/* loaded from: classes.dex */
public class cps implements Comparable, Serializable {
    private static final long serialVersionUID = 0;
    final Comparable b = "";

    @Override // java.lang.Comparable
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(cps cpsVar) {
        if (cpsVar != cpr.a) {
            if (cpsVar == cpp.a) {
                return -1;
            }
            Comparable comparable = cpsVar.b;
            int c = crv.c();
            if (c != 0) {
                return c;
            }
            boolean z = this instanceof cpq;
            if (z == (cpsVar instanceof cpq)) {
                return 0;
            }
            if (!z) {
                return -1;
            }
        }
        return 1;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof cps) {
            try {
                return compareTo((cps) obj) == 0;
            } catch (ClassCastException e) {
            }
        }
        return false;
    }
}
