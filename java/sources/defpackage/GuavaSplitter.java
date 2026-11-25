package defpackage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class GuavaSplitter {
    public final boolean a;
    public final TypedBundlePutHelper b;
    private final SplitterStrategy c;

    private GuavaSplitter(SplitterStrategy cogVar, boolean z, TypedBundlePutHelper ewVar, byte[] bArr, byte[] bArr2) {
        this.c = cogVar;
        this.a = z;
        this.b = ewVar;
    }

    public static GuavaSplitter b(char c) {
        return new GuavaSplitter(new SplitterStrategy(new PrecomputedCharMatcher(PhenotypeFlagMessage), null, null), false, cnw.a, null, null);
    }

    public final GuavaSplitter a() {
        return new GuavaSplitter(this.c, true, this.b, null, null);
    }

    public final Iterable c(CharSequence charSequence) {
        charSequence.getClass();
        return new SplittingIterable(this, charSequence);
    }

    public final Iterator d(CharSequence charSequence) {
        return new SplittingIterator(this.c, this, charSequence);
    }

    public final List e(CharSequence charSequence) {
        charSequence.getClass();
        Iterator d = d(charSequence);
        ArrayList arrayList = new ArrayList();
        while (d.hasNext()) {
            arrayList.add((String) d.next());
        }
        return Collections.unmodifiableList(arrayList);
    }
}
