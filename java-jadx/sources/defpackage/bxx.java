package defpackage;

import android.content.Context;
import android.os.Build;
import android.view.WindowManager;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bxx {
    public static volatile int a;
    private static volatile int b;

    public static int a(Context context) {
        if (Build.VERSION.SDK_INT >= 31) {
            return 0;
        }
        if (b == 0) {
            synchronized (bxx.class) {
                if (b == 0) {
                    b = Math.round(((WindowManager) context.getApplicationContext().getSystemService("window")).getDefaultDisplay().getRefreshRate());
                }
            }
        }
        return b;
    }

    public static int b(int i) {
        switch (i) {
            case 0:
                return 1;
            case 1:
                return 2;
            case 2:
                return 3;
            case 3:
                return 4;
            case 4:
                return 5;
            case 5:
                return 6;
            case 6:
                return 7;
            case 7:
                return 8;
            default:
                return 0;
        }
    }

    public static int c(int i) {
        switch (i) {
            case 1:
                return 1;
            case 2:
                return 2;
            case 3:
                return 3;
            case 4:
                return 4;
            case 5:
                return 5;
            case 6:
                return 6;
            case 7:
                return 7;
            default:
                return 0;
        }
    }
}
