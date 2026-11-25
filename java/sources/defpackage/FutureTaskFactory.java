package defpackage;

import java.util.Locale;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class FutureTaskFactory {
    public String a = null;
    public Boolean b = null;

    public static String a(String str, Object... objArr) {
        return String.format(Locale.ROOT, str, objArr);
    }
}
