package defpackage;

import android.accounts.Account;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.api.Scope;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class AccountAccessorBinder extends SafeParcelableBase {
    public static final Parcelable.Creator CREATOR = new ConnectionResultCreator(2);
    final int a;
    final int b;
    final int c;
    String d;
    IBinder e;
    Scope[] f;
    Bundle g;
    Account h;
    ApiAvailabilityVersionInfo[] i;
    ApiAvailabilityVersionInfo[] j;
    boolean k;
    int l;
    boolean m;
    public String n;

    public AccountAccessorBinder(int i, int i2, int i3, String str, IBinder iBinder, Scope[] scopeArr, Bundle bundle, Account account, ApiAvailabilityVersionInfo[] bjbVarArr, ApiAvailabilityVersionInfo[] bjbVarArr2, boolean z, int i4, boolean z2, String str2) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        if ("com.google.android.gms".equals(str)) {
            this.d = "com.google.android.gms";
        } else {
            this.d = str;
        }
        if (NavInstructionTypeEnum < 2) {
            Account account2 = null;
            if (iBinder != null) {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IAccountAccessor");
                AccountAccessorProxy bngVar = queryLocalInterface instanceof AccountAccessorProxy ? (AccountAccessorProxy) queryLocalInterface : new AccountAccessorProxy(iBinder);
                if (bngVar != null) {
                    long clearCallingIdentity = Binder.clearCallingIdentity();
                    try {
                        try {
                            Parcel b = bngVar.b(2, bngVar.a());
                            Account account3 = (Account) ServiceBinderHelper.a(b, Account.CREATOR);
                            b.recycle();
                            Binder.restoreCallingIdentity(clearCallingIdentity);
                            account2 = account3;
                        } catch (RemoteException e) {
                            Log.w("AccountAccessor", "Remote account accessor probably died");
                            Binder.restoreCallingIdentity(clearCallingIdentity);
                        }
                    } catch (Throwable th) {
                        Binder.restoreCallingIdentity(clearCallingIdentity);
                        throw th;
                    }
                }
            }
            this.h = account2;
        } else {
            this.e = iBinder;
            this.h = account;
        }
        this.f = scopeArr;
        this.g = bundle;
        this.i = bjbVarArr;
        this.j = bjbVarArr2;
        this.k = z;
        this.l = i4;
        this.m = z2;
        this.n = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        ConnectionResultCreator.a(this, parcel, i);
    }

    public AccountAccessorBinder(int i, String str) {
        this.a = 6;
        this.c = bje.b;
        this.b = i;
        this.k = true;
        this.n = str;
    }
}
