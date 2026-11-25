package defpackage;

import android.os.LocaleList;
import java.util.Locale;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class xw {
    public final xx a;

    static {
        new LocaleList(new Locale[0]);
    }

    public xw(xx xxVar) {
        this.a = xxVar;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof xw) && this.a.equals(((xw) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return this.a.toString();
    }
}
