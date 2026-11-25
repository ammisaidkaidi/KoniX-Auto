package defpackage;

import androidx.preference.Preference;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class amo {
    public final List c;
    public final int b = Preference.DEFAULT_ORDER;
    public final int a = Preference.DEFAULT_ORDER;

    public amo(cqr cqrVar, byte[] bArr) {
        this.c = cqrVar.a;
    }

    public final CharSequence a() {
        return (CharSequence) this.c.get(0);
    }
}
