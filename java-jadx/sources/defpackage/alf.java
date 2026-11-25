package defpackage;

import android.app.Application;
import android.content.Context;
import android.text.TextUtils;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class alf {
    static {
        agr.b("ProcessUtils");
    }

    public static boolean a(Context context) {
        String processName = Application.getProcessName();
        return !TextUtils.isEmpty(null) ? TextUtils.equals(processName, null) : TextUtils.equals(processName, context.getApplicationInfo().processName);
    }
}
