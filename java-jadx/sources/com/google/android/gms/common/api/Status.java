package com.google.android.gms.common.api;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import defpackage.acg;
import defpackage.biz;
import defpackage.bki;
import defpackage.bnt;
import defpackage.hq;
import defpackage.hr;
import defpackage.io;
import java.util.ArrayList;
import java.util.Arrays;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class Status extends bnt implements ReflectedParcelable, bki {
    final int d;
    public final int e;
    public final String f;
    public final PendingIntent g;
    public final biz h;
    public static final Status a = new Status(0);
    public static final Status b = new Status(15);
    public static final Status c = new Status(16);
    public static final Parcelable.Creator CREATOR = new acg(19);

    public Status(int i) {
        this(i, null);
    }

    public Status(int i, int i2, String str, PendingIntent pendingIntent, biz bizVar) {
        this.d = i;
        this.e = i2;
        this.f = str;
        this.g = pendingIntent;
        this.h = bizVar;
    }

    @Override // defpackage.bki
    public final Status a() {
        return this;
    }

    public final boolean b() {
        return this.e <= 0;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Status)) {
            return false;
        }
        Status status = (Status) obj;
        return this.d == status.d && this.e == status.e && hr.n(this.f, status.f) && hr.n(this.g, status.g) && hr.n(this.h, status.h);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.d), Integer.valueOf(this.e), this.f, this.g, this.h});
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        String str = this.f;
        if (str == null) {
            int i = this.e;
            switch (i) {
                case -1:
                    str = "SUCCESS_CACHE";
                    break;
                case 0:
                    str = "SUCCESS";
                    break;
                case 1:
                case 9:
                case 11:
                case 12:
                default:
                    StringBuilder sb = new StringBuilder(32);
                    sb.append("unknown status code: ");
                    sb.append(i);
                    str = sb.toString();
                    break;
                case 2:
                    str = "SERVICE_VERSION_UPDATE_REQUIRED";
                    break;
                case 3:
                    str = "SERVICE_DISABLED";
                    break;
                case 4:
                    str = "SIGN_IN_REQUIRED";
                    break;
                case 5:
                    str = "INVALID_ACCOUNT";
                    break;
                case 6:
                    str = "RESOLUTION_REQUIRED";
                    break;
                case 7:
                    str = "NETWORK_ERROR";
                    break;
                case 8:
                    str = "INTERNAL_ERROR";
                    break;
                case 10:
                    str = "DEVELOPER_ERROR";
                    break;
                case 13:
                    str = "ERROR";
                    break;
                case 14:
                    str = "INTERRUPTED";
                    break;
                case 15:
                    str = "TIMEOUT";
                    break;
                case 16:
                    str = "CANCELED";
                    break;
                case 17:
                    str = "API_NOT_CONNECTED";
                    break;
                case 18:
                    str = "DEAD_CLIENT";
                    break;
                case 19:
                    str = "REMOTE_EXCEPTION";
                    break;
                case 20:
                    str = "CONNECTION_SUSPENDED_DURING_CALL";
                    break;
                case 21:
                    str = "RECONNECTION_TIMED_OUT_DURING_UPDATE";
                    break;
                case 22:
                    str = "RECONNECTION_TIMED_OUT";
                    break;
            }
        }
        hq.d("statusCode", str, arrayList);
        hq.d("resolution", this.g, arrayList);
        return hq.c(arrayList, this);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int g = io.g(parcel);
        io.k(parcel, 1, this.e);
        io.s(parcel, 2, this.f);
        io.r(parcel, 3, this.g, i);
        io.r(parcel, 4, this.h, i);
        io.k(parcel, 1000, this.d);
        io.h(parcel, g);
    }

    public Status(int i, String str, byte[] bArr) {
        this(1, i, str, null, null);
    }

    public Status(int i, String str) {
        this(i, str, null);
    }
}
