package defpackage;

import android.os.Binder;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class act {
    public static Object a(cdq cdqVar) {
        try {
            return cdqVar.a();
        } catch (SecurityException e) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                return cdqVar.a();
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
    }
}
