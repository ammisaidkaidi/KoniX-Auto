package defpackage;

import android.os.LocaleList;
import java.util.Locale;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class LocaleListCompatWrapper {
    public final LocaleListPlatformWrapper a;

    static {
        new LocaleList(new Locale[0]);
    }

    public LocaleListCompatWrapper(LocaleListPlatformWrapper xxVar) {
        this.a = xxVar;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof LocaleListCompatWrapper) && this.a.equals(((LocaleListCompatWrapper) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return this.a.toString();
    }
}
