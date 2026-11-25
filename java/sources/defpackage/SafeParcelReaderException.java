package defpackage;

import android.os.Parcel;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class SafeParcelReaderException extends RuntimeException {
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public SafeParcelReaderException(String str, Parcel parcel) {
        super(r2.toString());
        int dataPosition = parcel.dataPosition();
        int dataSize = parcel.dataSize();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 41);
        StaggeredGridLayoutParams.append(str);
        StaggeredGridLayoutParams.append(" Parcel: pos=");
        StaggeredGridLayoutParams.append(dataPosition);
        StaggeredGridLayoutParams.append(" size=");
        StaggeredGridLayoutParams.append(dataSize);
    }
}
