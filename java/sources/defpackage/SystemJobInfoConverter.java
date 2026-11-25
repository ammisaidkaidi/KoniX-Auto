package defpackage;

import android.content.ComponentName;
import android.content.Context;
import androidx.work.impl.background.systemjob.SystemJobService;

/* compiled from: PG */
/* loaded from: classes.dex */
final class SystemJobInfoConverter {
    public final ComponentName a;

    static {
        WorkLogger.b("SystemJobInfoConverter");
    }

    public SystemJobInfoConverter(Context context) {
        this.a = new ComponentName(context.getApplicationContext(), (Class<?>) SystemJobService.class);
    }
}
