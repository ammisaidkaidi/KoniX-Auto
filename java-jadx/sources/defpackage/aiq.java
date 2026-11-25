package defpackage;

import android.content.ComponentName;
import android.content.Context;
import androidx.work.impl.background.systemjob.SystemJobService;

/* compiled from: PG */
/* loaded from: classes.dex */
final class aiq {
    public final ComponentName a;

    static {
        agr.b("SystemJobInfoConverter");
    }

    public aiq(Context context) {
        this.a = new ComponentName(context.getApplicationContext(), (Class<?>) SystemJobService.class);
    }
}
