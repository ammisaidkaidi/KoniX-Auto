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
public final class bmv extends bnt {
    public static final Parcelable.Creator CREATOR = new bmt(2);
    final int a;
    final int b;
    final int c;
    String d;
    IBinder e;
    Scope[] f;
    Bundle g;
    Account h;
    bjb[] i;
    bjb[] j;
    boolean k;
    int l;
    boolean m;
    public String n;

    public bmv(int i, int i2, int i3, String str, IBinder iBinder, Scope[] scopeArr, Bundle bundle, Account account, bjb[] bjbVarArr, bjb[] bjbVarArr2, boolean z, int i4, boolean z2, String str2) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        if ("com.google.android.gms".equals(str)) {
            this.d = "com.google.android.gms";
        } else {
            this.d = str;
        }
        if (i < 2) {
            Account account2 = null;
            if (iBinder != null) {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IAccountAccessor");
                bng bngVar = queryLocalInterface instanceof bng ? (bng) queryLocalInterface : new bng(iBinder);
                if (bngVar != null) {
                    long clearCallingIdentity = Binder.clearCallingIdentity();
                    try {
                        try {
                            Parcel b = bngVar.b(2, bngVar.a());
                            Account account3 = (Account) asr.a(b, Account.CREATOR);
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
        bmt.a(this, parcel, i);
    }

    public bmv(int i, String str) {
        this.a = 6;
        this.c = bje.b;
        this.b = i;
        this.k = true;
        this.n = str;
    }
}
