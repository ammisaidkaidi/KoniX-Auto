package defpackage;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class AuthManagerServiceProxy implements AuthResultCallback {
    final /* synthetic */ String a;
    final /* synthetic */ Bundle b;

    public AuthManagerServiceProxy(String str, Bundle bundle) {
        this.a = str;
        this.b = bundle;
    }

    @Override // defpackage.AuthResultCallback
    public final /* bridge */ /* synthetic */ Object a(IBinder iBinder) {
        AuthManagerServiceStub bhjVar;
        if (iBinder == null) {
            bhjVar = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.auth.IAuthManagerService");
            bhjVar = queryLocalInterface instanceof AuthManagerServiceStub ? (AuthManagerServiceStub) queryLocalInterface : new AuthManagerServiceStub(iBinder);
        }
        String str = this.a;
        Bundle bundle = this.b;
        Parcel a = bhjVar.a();
        a.writeString(str);
        ServiceBinderHelper.b(a, bundle);
        Parcel b = bhjVar.b(2, a);
        Bundle bundle2 = (Bundle) ServiceBinderHelper.a(b, Bundle.CREATOR);
        b.recycle();
        GooglePackageNameValidator.h(bundle2);
        String string = bundle2.getString("Error");
        if (bundle2.getBoolean("booleanResult")) {
            return null;
        }
        throw new GoogleAuthExceptionBase(string);
    }
}
