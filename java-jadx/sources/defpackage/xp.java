package defpackage;

import android.app.AppOpsManager;
import android.content.Context;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class xp {
    public static int a(AppOpsManager appOpsManager, String str, int i, String str2) {
        if (appOpsManager == null) {
            return 1;
        }
        return appOpsManager.checkOpNoThrow(str, i, str2);
    }

    public static AppOpsManager b(Context context) {
        return (AppOpsManager) context.getSystemService(AppOpsManager.class);
    }

    public static String c(Context context) {
        return context.getOpPackageName();
    }

    public static Object d(ExecutorService executorService, Callable callable, int i) {
        try {
            return executorService.submit(callable).get(i, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            throw e;
        } catch (ExecutionException e2) {
            throw new RuntimeException(e2);
        } catch (TimeoutException e3) {
            throw new InterruptedException("timeout");
        }
    }

    public static Set e(Collection collection, String str) {
        HashSet hashSet = new HashSet(collection);
        if (!dml.a.a().b()) {
            return hashSet;
        }
        dbs d = re.d(str);
        if ((d.a & 1) == 0) {
            int indexOf = str.indexOf(35);
            String substring = indexOf == -1 ? str : str.substring(0, indexOf);
            if (!str.equals(substring)) {
                d = re.d(substring);
            }
        }
        if ((d.a & 1) == 0) {
            return hashSet;
        }
        dbr dbrVar = d.b;
        if (dbrVar == null) {
            dbrVar = dbr.c;
        }
        if (dbrVar.a) {
            return new HashSet(dbrVar.b);
        }
        hashSet.addAll(dbrVar.b);
        return hashSet;
    }

    public static void f(Map map, Object obj, Object obj2) {
        List list = (List) map.get(obj);
        if (list == null) {
            list = new ArrayList();
            map.put(obj, list);
        }
        list.add(obj2);
    }
}
