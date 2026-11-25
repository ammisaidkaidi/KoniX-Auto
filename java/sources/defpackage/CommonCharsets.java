package defpackage;

import java.nio.charset.Charset;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class CommonCharsets {
    public static final Charset a;

    static {
        Charset.forName("US-ASCII");
        Charset.forName("ISO-8859-1");
        a = Charset.forName("UTF-8");
        Charset.forName("UTF-16BE");
        Charset.forName("UTF-16LE");
        Charset.forName("UTF-16");
    }
}
