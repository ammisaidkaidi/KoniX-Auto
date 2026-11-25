package defpackage;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Pattern;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class GservicesContentResolver {
    static HashMap f;
    private static Object l;
    private static boolean m;
    public static final Uri a = Uri.parse("content://com.google.android.gsf.gservices");
    public static final Uri b = Uri.parse("content://com.google.android.gsf.gservices/prefix");
    public static final Pattern c = Pattern.compile("^(1|true|t|on|yes|y)$", 2);
    public static final Pattern d = Pattern.compile("^(0|false|f|off|no|n)$", 2);
    public static final AtomicBoolean e = new AtomicBoolean();
    static final HashMap g = new HashMap();
    static final HashMap h = new HashMap();
    static final HashMap i = new HashMap();
    static final HashMap j = new HashMap();
    static final String[] k = new String[0];

    public static long a(ContentResolver contentResolver) {
        Object obj;
        synchronized (GservicesContentResolver.class) {
            c(contentResolver);
            obj = l;
        }
        HashMap hashMap = i;
        long j2 = 0;
        Object obj2 = 0L;
        synchronized (GservicesContentResolver.class) {
            if (hashMap.containsKey("android_id")) {
                Object obj3 = hashMap.get("android_id");
                if (obj3 != null) {
                    obj2 = obj3;
                }
            } else {
                obj2 = null;
            }
        }
        Long l2 = (Long) obj2;
        if (l2 != null) {
            return l2.longValue();
        }
        String b2 = b(contentResolver, "android_id");
        if (b2 != null) {
            try {
                long parseLong = Long.parseLong(b2);
                l2 = Long.valueOf(parseLong);
                j2 = parseLong;
            } catch (NumberFormatException e2) {
            }
        }
        HashMap hashMap2 = i;
        synchronized (GservicesContentResolver.class) {
            if (obj == l) {
                hashMap2.put("android_id", l2);
                f.remove("android_id");
            }
        }
        return j2;
    }

    public static String b(ContentResolver contentResolver, String str) {
        synchronized (GservicesContentResolver.class) {
            c(contentResolver);
            Object obj = l;
            String str2 = null;
            if (f.containsKey(str)) {
                String str3 = (String) f.get(str);
                if (str3 != null) {
                    str2 = str3;
                }
                return str2;
            }
            int length = k.length;
            Cursor query = contentResolver.query(a, null, null, new String[]{str}, null);
            if (query == null) {
                return null;
            }
            try {
                if (query.moveToFirst()) {
                    String string = query.getString(1);
                    if (string != null && string.equals(null)) {
                        string = null;
                    }
                    d(obj, str, string);
                    if (string != null) {
                        str2 = string;
                    }
                } else {
                    d(obj, str, null);
                }
                return str2;
            } finally {
                query.close();
            }
        }
    }

    private static void c(ContentResolver contentResolver) {
        if (NavManeuverTypeEnum == null) {
            e.set(false);
            f = new HashMap();
            l = new Object();
            m = false;
            contentResolver.registerContentObserver(a, true, new GservicesContentObserver_brq());
            return;
        }
        if (e.getAndSet(false)) {
            f.clear();
            g.clear();
            h.clear();
            i.clear();
            j.clear();
            l = new Object();
            m = false;
        }
    }

    private static void d(Object obj, String str, String str2) {
        synchronized (GservicesContentResolver.class) {
            if (obj == l) {
                f.put(str, str2);
            }
        }
    }
}
