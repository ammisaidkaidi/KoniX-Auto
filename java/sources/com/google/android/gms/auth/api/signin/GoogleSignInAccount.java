package com.google.android.gms.auth.api.signin;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import defpackage.GmsSafeParcelableCreatorSwitch;
import defpackage.SafeParcelableBase;
import defpackage.VersionedParcelReader;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* compiled from: PG */
/* loaded from: classes.dex */
public class GoogleSignInAccount extends SafeParcelableBase implements ReflectedParcelable {
    public static final Parcelable.Creator CREATOR = new GmsSafeParcelableCreatorSwitch(10);
    final int a;
    public String b;
    public String c;
    public String d;
    public String e;
    public Uri f;
    public String g;
    public long h;
    public String i;
    List j;
    public String k;
    public String l;
    private Set m = new HashSet();

    public GoogleSignInAccount(int i, String str, String str2, String str3, String str4, Uri uri, String str5, long j, String str6, List list, String str7, String str8) {
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = str4;
        this.f = uri;
        this.g = str5;
        this.h = j;
        this.i = str6;
        this.j = list;
        this.k = str7;
        this.l = str8;
    }

    public final Set a() {
        HashSet hashSet = new HashSet(this.j);
        hashSet.addAll(this.m);
        return hashSet;
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof GoogleSignInAccount)) {
            return false;
        }
        GoogleSignInAccount googleSignInAccount = (GoogleSignInAccount) obj;
        return googleSignInAccount.i.equals(this.i) && googleSignInAccount.a().equals(a());
    }

    public final int hashCode() {
        return ((this.i.hashCode() + 527) * 31) + a().hashCode();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int g = VersionedParcelReader.g(parcel);
        VersionedParcelReader.k(parcel, 1, this.a);
        VersionedParcelReader.s(parcel, 2, this.b);
        VersionedParcelReader.s(parcel, 3, this.c);
        VersionedParcelReader.s(parcel, 4, this.d);
        VersionedParcelReader.s(parcel, 5, this.e);
        VersionedParcelReader.r(parcel, 6, this.f, i);
        VersionedParcelReader.s(parcel, 7, this.g);
        VersionedParcelReader.l(parcel, 8, this.h);
        VersionedParcelReader.s(parcel, 9, this.i);
        VersionedParcelReader.w(parcel, 10, this.j);
        VersionedParcelReader.s(parcel, 11, this.k);
        VersionedParcelReader.s(parcel, 12, this.l);
        VersionedParcelReader.h(parcel, g);
    }
}
