package defpackage;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import androidx.preference.Preference;
import com.google.android.embedded.projection.R;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;

/* compiled from: PG */
/* loaded from: classes.dex */
public class bjq {
    public static bjq a;
    private static Thread b;
    private static volatile Handler c;

    public bjq() {
    }

    public bjq(Context context) {
        context.getApplicationContext();
    }

    public static boolean c(PackageInfo packageInfo) {
        if (packageInfo != null && packageInfo.signatures != null) {
            bnh[] bnhVarArr = bjl.a;
            bnh bnhVar = null;
            if (packageInfo.signatures != null) {
                if (packageInfo.signatures.length != 1) {
                    Log.w("GoogleSignatureVerifier", "Package has more than one signature.");
                } else {
                    bjj bjjVar = new bjj(packageInfo.signatures[0].toByteArray());
                    int i = 0;
                    while (true) {
                        int length = bnhVarArr.length;
                        if (i >= 2) {
                            break;
                        }
                        if (bnhVarArr[i].equals(bjjVar)) {
                            bnhVar = bnhVarArr[i];
                            break;
                        }
                        i++;
                    }
                }
            }
            if (bnhVar != null) {
                return true;
            }
        }
        return false;
    }

    public static Handler d() {
        if (c == null) {
            c = new Handler(Looper.getMainLooper());
        }
        return c;
    }

    public static void e() {
        if (h()) {
            throw new RuntimeException("Must be called on a background thread");
        }
    }

    public static void f() {
        if (!h()) {
            throw new RuntimeException("Must be called on the main thread");
        }
    }

    public static void g(Runnable runnable) {
        d().post(runnable);
    }

    public static boolean h() {
        if (b == null) {
            b = Looper.getMainLooper().getThread();
        }
        return Thread.currentThread() == b;
    }

    public static String i(InputStream inputStream, long j, int i) {
        byte[] bArr = new byte[1024];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            inputStream.skip(j);
            if (i <= 0) {
                i = Preference.DEFAULT_ORDER;
            }
            while (i > 0) {
                int read = inputStream.read(bArr, 0, Math.min(i, 1024));
                if (read == -1) {
                    break;
                }
                byteArrayOutputStream.write(bArr, 0, read);
                i -= read;
            }
            inputStream.close();
            try {
                return byteArrayOutputStream.toString("UTF-8");
            } catch (UnsupportedEncodingException e) {
                throw new RuntimeException("Unsupported encoding UTF8. This should always be supported.", e);
            }
        } catch (IOException e2) {
            throw new RuntimeException("Failed to read license or metadata text.", e2);
        }
    }

    public static String j(Context context, String str, long j, int i) {
        Resources resources = context.getApplicationContext().getResources();
        return i(resources.openRawResource(resources.getIdentifier(str, "raw", resources.getResourcePackageName(R.id.dummy_placeholder))), j, i);
    }

    public bjx a(Context context, Looper looper, bmp bmpVar, Object obj, bky bkyVar, blu bluVar) {
        throw new UnsupportedOperationException("buildClient must be implemented");
    }

    @Deprecated
    public bjx b(Context context, Looper looper, bmp bmpVar, Object obj, bkd bkdVar, bke bkeVar) {
        return a(context, looper, bmpVar, obj, bkdVar, bkeVar);
    }
}
