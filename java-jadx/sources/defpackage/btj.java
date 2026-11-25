package defpackage;

import android.content.Context;
import android.os.UserManager;
import android.util.Log;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class btj {
    public static final /* synthetic */ int a = 0;
    private static UserManager b;
    private static volatile boolean c = false;

    private btj() {
    }

    public static Context a(Context context) {
        return context.isDeviceProtectedStorage() ? context : context.createDeviceProtectedStorageContext();
    }

    public static boolean b(Context context) {
        return !d(context);
    }

    public static boolean c(Context context) {
        return d(context);
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0037, code lost:
    
        if (r3.isUserRunning(android.os.Process.myUserHandle()) == false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0039, code lost:
    
        r5 = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static boolean d(Context context) {
        boolean z;
        if (c) {
            return true;
        }
        synchronized (btj.class) {
            if (c) {
                return true;
            }
            int i = 1;
            while (true) {
                z = false;
                if (i > 2) {
                    break;
                }
                if (b == null) {
                    b = (UserManager) context.getSystemService(UserManager.class);
                }
                UserManager userManager = b;
                if (userManager == null) {
                    z = true;
                    break;
                }
                try {
                    if (userManager.isUserUnlocked()) {
                        break;
                    }
                } catch (NullPointerException e) {
                    Log.w("DirectBootUtils", "Failed to check if user is unlocked.", e);
                    b = null;
                    i++;
                }
            }
            if (z) {
                b = null;
            }
            if (z) {
                c = true;
            }
            return z;
        }
    }
}
