package defpackage;

import android.os.Process;
import android.util.Log;
import java.util.ArrayDeque;
import java.util.Date;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProjectionLog {
    private static final ProjectionLog a = new ProjectionLog();
    private final Object b = new Object();
    private final ArrayDeque c = new ArrayDeque();
    private final ArrayDeque d = new ArrayDeque();

    private ProjectionLog() {
    }

    public static void a(int i, String str, String str2) {
        ProjectionLog cjzVar = a;
        Process.myTid();
        Process.myPid();
        new Date().getTime();
        DataStoreError cjyVar = new DataStoreError(i, str, str2);
        switch (cjyVar.a) {
            case 3:
            case 4:
                break;
            case 5:
                Log.w(cjyVar.b, cjyVar.c);
                break;
            default:
                Log.e(cjyVar.b, cjyVar.c);
                break;
        }
        synchronized (cjzVar.b) {
            e(cjyVar, cjzVar.c, 100);
            if (cjyVar.a >= 5) {
                e(cjyVar, cjzVar.d, 10);
            }
        }
    }

    public static void b(String str, String str2) {
        a(3, str, str2);
    }

    public static void c(String str, String str2) {
        a(4, str, str2);
    }

    public static void d(String str, String str2) {
        a(5, str, str2);
    }

    private static void e(DataStoreError cjyVar, ArrayDeque arrayDeque, int i) {
        while (arrayDeque.size() >= i) {
            arrayDeque.removeFirst();
        }
        arrayDeque.addLast(cjyVar);
    }
}
