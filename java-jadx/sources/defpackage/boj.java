package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class boj extends bnt {
    public static final Parcelable.Creator CREATOR = new bmt(9);
    public final String a;
    public final byte[] b;
    public final String c;
    public final boi[] d;
    public final Map e = new TreeMap();
    public final boolean f;
    public final long g;

    public boj(String str, String str2, boi[] boiVarArr, boolean z, byte[] bArr, long j) {
        this.a = str;
        this.c = str2;
        this.d = boiVarArr;
        this.f = z;
        this.b = bArr;
        this.g = j;
        for (boi boiVar : boiVarArr) {
            this.e.put(Integer.valueOf(boiVar.a), boiVar);
        }
    }

    public final boolean equals(Object obj) {
        if (obj instanceof boj) {
            boj bojVar = (boj) obj;
            if (qs.b(this.a, bojVar.a) && qs.b(this.c, bojVar.c) && this.e.equals(bojVar.e) && this.f == bojVar.f && Arrays.equals(this.b, bojVar.b) && this.g == bojVar.g) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.a, this.c, this.e, Boolean.valueOf(this.f), this.b, Long.valueOf(this.g)});
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Configurations('");
        sb.append(this.a);
        sb.append("', '");
        sb.append(this.c);
        sb.append("', (");
        Iterator it = this.e.values().iterator();
        while (it.hasNext()) {
            sb.append((boi) it.next());
            sb.append(", ");
        }
        sb.append("), ");
        sb.append(this.f);
        sb.append(", ");
        byte[] bArr = this.b;
        sb.append(bArr == null ? "null" : Base64.encodeToString(bArr, 3));
        sb.append(", ");
        sb.append(this.g);
        sb.append(')');
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int g = io.g(parcel);
        io.s(parcel, 2, this.a);
        io.s(parcel, 3, this.c);
        io.v(parcel, 4, this.d, i);
        io.i(parcel, 5, this.f);
        io.n(parcel, 6, this.b);
        io.l(parcel, 7, this.g);
        io.h(parcel, g);
    }
}
