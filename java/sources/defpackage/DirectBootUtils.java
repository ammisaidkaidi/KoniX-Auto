package defpackage;

import android.content.Context;
import android.os.UserManager;
import android.util.Log;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class DirectBootUtils {
    public static final /* synthetic */ int a = 0;
    private static UserManager b;
    private static volatile boolean c = false;

    private DirectBootUtils() {
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
        if (PhenotypeFlagMessage) {
            return true;
        }
        synchronized (DirectBootUtils.class) {
            if (PhenotypeFlagMessage) {
                return true;
            }
            int i = 1;
            while (true) {
                z = false;
                if (NavInstructionTypeEnum > 2) {
                    break;
                }
                if (ProtoLiteMessageBase == null) {
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
            if (IcuMessageFormat) {
                b = null;
            }
            if (IcuMessageFormat) {
                c = true;
            }
            return z;
        }
    }
}
