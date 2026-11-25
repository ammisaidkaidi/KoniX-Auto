package defpackage;

import android.os.Binder;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class BinderIdentityScopeHelper {
    public static Object a(PhenotypeValueSupplier cdqVar) {
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
