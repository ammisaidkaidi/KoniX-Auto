package defpackage;

import java.util.Iterator;

/* compiled from: PG */
/* loaded from: classes.dex */
final class coh implements Iterable {
    final /* synthetic */ CharSequence a;
    final /* synthetic */ coi b;

    public coh(coi coiVar, CharSequence charSequence) {
        this.b = coiVar;
        this.a = charSequence;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return this.b.d(this.a);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append('[');
        ex.y(sb, iterator(), ", ");
        sb.append(']');
        return sb.toString();
    }
}
