package defpackage;

import android.content.Context;
import com.google.android.gms.common.api.Status;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bhy extends bkc implements bhs {
    private static final bjy j;
    private static final boa k;
    private static final bjq l;

    static {
        bhx bhxVar = new bhx();
        l = bhxVar;
        j = new bjy("GoogleAuthService.API", bhxVar, null);
        k = hm.d("GoogleAuthServiceClient");
    }

    public bhy(Context context) {
        super(context, j, bjv.a, bkb.a);
    }

    public static void a(Status status, Object obj, brk brkVar) {
        if (status.b() ? brkVar.c(obj) : brkVar.b(new bjz(status))) {
            return;
        }
        k.a("The task is already complete.", new Object[0]);
    }
}
