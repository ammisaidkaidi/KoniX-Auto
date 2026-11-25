package defpackage;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Process;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bvk {
    static volatile boolean a;
    public static final /* synthetic */ int b = 0;
    private static volatile ActivityManager c = null;

    private bvk() {
    }

    public static ActivityManager a(Context context) {
        if (c == null) {
            synchronized (bvk.class) {
                if (c == null) {
                    Object systemService = context.getSystemService("activity");
                    systemService.getClass();
                    c = (ActivityManager) systemService;
                }
            }
        }
        return c;
    }

    public static String b() {
        BufferedReader bufferedReader;
        int myPid = Process.myPid();
        String str = null;
        str = null;
        str = null;
        BufferedReader bufferedReader2 = null;
        str = null;
        try {
            if (myPid > 0) {
                try {
                    StringBuilder sb = new StringBuilder(25);
                    sb.append("/proc/");
                    sb.append(myPid);
                    sb.append("/cmdline");
                    bufferedReader = new BufferedReader(new FileReader(sb.toString()));
                } catch (IOException e) {
                    bufferedReader = null;
                } catch (Throwable th) {
                    th = th;
                }
                try {
                    String readLine = bufferedReader.readLine();
                    readLine.getClass();
                    str = readLine.trim();
                    bufferedReader.close();
                } catch (IOException e2) {
                    if (bufferedReader != null) {
                        bufferedReader.close();
                    }
                    return str;
                } catch (Throwable th2) {
                    th = th2;
                    bufferedReader2 = bufferedReader;
                    if (bufferedReader2 != null) {
                        try {
                            bufferedReader2.close();
                        } catch (IOException e3) {
                        }
                    }
                    throw th;
                }
            }
        } catch (IOException e4) {
        }
        return str;
    }

    public static boolean c(Context context) {
        Object systemService = context.getSystemService("activity");
        systemService.getClass();
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) systemService).getRunningAppProcesses();
        if (runningAppProcesses != null) {
            String packageName = context.getPackageName();
            String concat = String.valueOf(packageName).concat(":");
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (runningAppProcessInfo.importance == 100 && (runningAppProcessInfo.processName.equals(packageName) || runningAppProcessInfo.processName.startsWith(concat))) {
                    return true;
                }
            }
        }
        return false;
    }
}
