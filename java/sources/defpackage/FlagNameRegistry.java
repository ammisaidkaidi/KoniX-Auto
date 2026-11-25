package defpackage;

import android.text.TextUtils;
import java.util.List;
import java.util.RandomAccess;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class FlagNameRegistry {
    private static final GuavaSplitter d = GuavaSplitter.b('/').a();
    public static final UrlSanitizer a = new UrlSanitizerImpl(1);
    public static final UrlSanitizer b = new UrlSanitizerImpl(0);
    public static final UrlSanitizer c = new UrlSanitizerImpl(2);

    public static List a(String str) {
        List e = d.e(str);
        FlagValueMapper cgtVar = cgt.b;
        return e instanceof RandomAccess ? new ArrayBackedList(e, cgtVar) : new SequentialAccessListWrapper(e, cgtVar);
    }

    public static void b(UrlSanitizer cdjVar, MessageLiteBuilder deqVar) {
        String a2 = cdjVar.a(deqVar);
        String b2 = cdjVar.b(deqVar);
        if (!TextUtils.isEmpty(a2) || TextUtils.isEmpty(b2)) {
            cdjVar.c(deqVar, null);
        } else {
            cdjVar.c(deqVar, StringMd5Hasher.a(b2));
        }
        cdjVar.d(deqVar);
    }
}
