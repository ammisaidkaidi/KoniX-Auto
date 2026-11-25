package defpackage;

import android.os.LocaleList;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class LocaleListPlatformWrapper {
    public final LocaleList a;

    public LocaleListPlatformWrapper(LocaleList localeList) {
        this.a = localeList;
    }

    public final boolean equals(Object obj) {
        return this.a.equals(((LocaleListPlatformWrapper) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return this.a.toString();
    }
}
