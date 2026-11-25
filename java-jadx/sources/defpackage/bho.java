package defpackage;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bho implements bhp {
    final /* synthetic */ String a;
    final /* synthetic */ Bundle b;

    public bho(String str, Bundle bundle) {
        this.a = str;
        this.b = bundle;
    }

    @Override // defpackage.bhp
    public final /* bridge */ /* synthetic */ Object a(IBinder iBinder) {
        bhj bhjVar;
        if (iBinder == null) {
            bhjVar = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.auth.IAuthManagerService");
            bhjVar = queryLocalInterface instanceof bhj ? (bhj) queryLocalInterface : new bhj(iBinder);
        }
        String str = this.a;
        Bundle bundle = this.b;
        Parcel a = bhjVar.a();
        a.writeString(str);
        asr.b(a, bundle);
        Parcel b = bhjVar.b(2, a);
        Bundle bundle2 = (Bundle) asr.a(b, Bundle.CREATOR);
        b.recycle();
        bhq.h(bundle2);
        String string = bundle2.getString("Error");
        if (bundle2.getBoolean("booleanResult")) {
            return null;
        }
        throw new bhm(string);
    }
}
