package defpackage;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bnn extends bnt {
    public static final Parcelable.Creator CREATOR = new bmt(4);
    final int a;
    public final Account b;
    public final int c;
    public final GoogleSignInAccount d;

    public bnn(int i, Account account, int i2, GoogleSignInAccount googleSignInAccount) {
        this.a = i;
        this.b = account;
        this.c = i2;
        this.d = googleSignInAccount;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int g = io.g(parcel);
        io.k(parcel, 1, this.a);
        io.r(parcel, 2, this.b, i);
        io.k(parcel, 3, this.c);
        io.r(parcel, 4, this.d, i);
        io.h(parcel, g);
    }
}
