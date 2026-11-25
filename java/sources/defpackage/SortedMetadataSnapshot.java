package defpackage;

import java.util.Collections;
import java.util.Comparator;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class SortedMetadataSnapshot {
    public static final Comparator a = new MetricNameComparator(4);
    public static final SortedMetadataSnapshot b = new SortedMetadataSnapshot(new SmallMapImpl(Collections.emptyList()));
    public final SmallMapImpl c;

    public SortedMetadataSnapshot(SmallMapImpl cvyVar) {
        this.c = cvyVar;
    }

    public final boolean a() {
        return this.c.isEmpty();
    }

    public final boolean equals(Object obj) {
        return (obj instanceof SortedMetadataSnapshot) && ((SortedMetadataSnapshot) obj).c.equals(this.c);
    }

    public final int hashCode() {
        return this.c.hashCode() ^ (-1);
    }

    public final String toString() {
        return this.c.toString();
    }
}
