package defpackage;

import java.util.Collections;
import java.util.Comparator;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cwa {
    public static final Comparator a = new bup(4);
    public static final cwa b = new cwa(new cvy(Collections.emptyList()));
    public final cvy c;

    public cwa(cvy cvyVar) {
        this.c = cvyVar;
    }

    public final boolean a() {
        return this.c.isEmpty();
    }

    public final boolean equals(Object obj) {
        return (obj instanceof cwa) && ((cwa) obj).c.equals(this.c);
    }

    public final int hashCode() {
        return this.c.hashCode() ^ (-1);
    }

    public final String toString() {
        return this.c.toString();
    }
}
