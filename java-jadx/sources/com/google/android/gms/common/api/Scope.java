package com.google.android.gms.common.api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import defpackage.acg;
import defpackage.bnt;
import defpackage.hr;
import defpackage.io;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class Scope extends bnt implements ReflectedParcelable {
    public static final Parcelable.Creator CREATOR = new acg(18);
    final int a;
    public final String b;

    public Scope(int i, String str) {
        hr.l(str, "scopeUri must not be null or empty");
        this.a = i;
        this.b = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Scope) {
            return this.b.equals(((Scope) obj).b);
        }
        return false;
    }

    public final int hashCode() {
        return this.b.hashCode();
    }

    public final String toString() {
        return this.b;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int g = io.g(parcel);
        io.k(parcel, 1, this.a);
        io.s(parcel, 2, this.b);
        io.h(parcel, g);
    }

    public Scope(String str) {
        this(1, str);
    }
}
