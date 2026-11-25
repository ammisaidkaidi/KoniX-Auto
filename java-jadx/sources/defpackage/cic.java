package defpackage;

import android.net.Uri;
import android.text.TextUtils;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cic {
    private static final Pattern a = Pattern.compile("(\\w+).*");

    public static cqh a(Uri uri) {
        cqh p;
        cqc j = cqh.j();
        String encodedFragment = uri.getEncodedFragment();
        if (TextUtils.isEmpty(encodedFragment) || !encodedFragment.startsWith("transform=")) {
            p = cqh.p();
        } else {
            String substring = encodedFragment.substring(10);
            ex.m(true, "The separator may not be the empty string.");
            p = cqh.m(coi.b("+".charAt(0)).a().c(substring));
        }
        int size = p.size();
        for (int i = 0; i < size; i++) {
            String str = (String) p.get(i);
            Matcher matcher = a.matcher(str);
            if (!matcher.matches()) {
                String valueOf = String.valueOf(str);
                throw new IllegalArgumentException(valueOf.length() != 0 ? "Invalid fragment spec: ".concat(valueOf) : new String("Invalid fragment spec: "));
            }
            j.g(matcher.group(1));
        }
        return j.f();
    }

    public static String b(List list) {
        if (list.isEmpty()) {
            return null;
        }
        String x = ex.x(list, "+");
        return x.length() != 0 ? "transform=".concat(x) : new String("transform=");
    }
}
