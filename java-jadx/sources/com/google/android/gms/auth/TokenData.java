package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.ReflectedParcelable;
import defpackage.acg;
import defpackage.bnt;
import defpackage.hr;
import defpackage.io;
import java.util.Arrays;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public class TokenData extends bnt implements ReflectedParcelable {
    public static final Parcelable.Creator CREATOR = new acg(9);
    final int a;
    public final String b;
    public final Long c;
    public final boolean d;
    public final boolean e;
    public final List f;
    public final String g;

    public TokenData(int i, String str, Long l, boolean z, boolean z2, List list, String str2) {
        this.a = i;
        hr.k(str);
        this.b = str;
        this.c = l;
        this.d = z;
        this.e = z2;
        this.f = list;
        this.g = str2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof TokenData)) {
            return false;
        }
        TokenData tokenData = (TokenData) obj;
        return TextUtils.equals(this.b, tokenData.b) && hr.n(this.c, tokenData.c) && this.d == tokenData.d && this.e == tokenData.e && hr.n(this.f, tokenData.f) && hr.n(this.g, tokenData.g);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.b, this.c, Boolean.valueOf(this.d), Boolean.valueOf(this.e), this.f, this.g});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int g = io.g(parcel);
        io.k(parcel, 1, this.a);
        io.s(parcel, 2, this.b);
        Long l = this.c;
        if (l != null) {
            io.j(parcel, 3, 8);
            parcel.writeLong(l.longValue());
        }
        io.i(parcel, 4, this.d);
        io.i(parcel, 5, this.e);
        io.u(parcel, 6, this.f);
        io.s(parcel, 7, this.g);
        io.h(parcel, g);
    }
}
