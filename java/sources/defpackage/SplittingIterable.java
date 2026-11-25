package defpackage;

import java.util.Iterator;

/* compiled from: PG */
/* loaded from: classes.dex */
final class SplittingIterable implements Iterable {
    final /* synthetic */ CharSequence a;
    final /* synthetic */ GuavaSplitter b;

    public SplittingIterable(GuavaSplitter coiVar, CharSequence charSequence) {
        this.b = coiVar;
        this.a = charSequence;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return this.b.d(this.a);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        StaggeredGridLayoutParams.append('[');
        ex.y(sb, iterator(), ", ");
        StaggeredGridLayoutParams.append(']');
        return StaggeredGridLayoutParams.toString();
    }
}
