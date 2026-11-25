package defpackage;

import android.content.Context;
import android.net.Uri;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cdw {
    private static final vb a = new vb();

    public static synchronized Uri a(String str) {
        Uri uri;
        synchronized (cdw.class) {
            vb vbVar = a;
            uri = (Uri) vbVar.get(str);
            if (uri == null) {
                String valueOf = String.valueOf(Uri.encode(str));
                uri = Uri.parse(valueOf.length() != 0 ? "content://com.google.android.gms.phenotype/".concat(valueOf) : new String("content://com.google.android.gms.phenotype/"));
                vbVar.put(str, uri);
            }
        }
        return uri;
    }

    public static String b(Context context, String str) {
        if (str.contains("#")) {
            String valueOf = String.valueOf(str);
            throw new IllegalArgumentException(valueOf.length() != 0 ? "The passed in package cannot already have a subpackage: ".concat(valueOf) : new String("The passed in package cannot already have a subpackage: "));
        }
        String packageName = context.getPackageName();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(packageName).length());
        sb.append(str);
        sb.append("#");
        sb.append(packageName);
        return sb.toString();
    }

    public static boolean c(String str) {
        int i;
        int indexOf = str.indexOf("#");
        return indexOf >= 0 && (i = indexOf + 1) < str.length() && str.charAt(i) == '@';
    }
}
