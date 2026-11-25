package defpackage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class coi {
    public final boolean a;
    public final ew b;
    private final cog c;

    private coi(cog cogVar, boolean z, ew ewVar, byte[] bArr, byte[] bArr2) {
        this.c = cogVar;
        this.a = z;
        this.b = ewVar;
    }

    public static coi b(char c) {
        return new coi(new cog(new cnu(c), null, null), false, cnw.a, null, null);
    }

    public final coi a() {
        return new coi(this.c, true, this.b, null, null);
    }

    public final Iterable c(CharSequence charSequence) {
        charSequence.getClass();
        return new coh(this, charSequence);
    }

    public final Iterator d(CharSequence charSequence) {
        return new cnt(this.c, this, charSequence);
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
