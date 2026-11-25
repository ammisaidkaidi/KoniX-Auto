package defpackage;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class sr implements Parcelable.ClassLoaderCreator {
    private final /* synthetic */ int a;

    public sr(int i) {
        this.a = i;
    }

    public static final yv a(Parcel parcel, ClassLoader classLoader) {
        if (parcel.readParcelable(classLoader) == null) {
            return yv.c;
        }
        throw new IllegalStateException("superState must be null");
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        switch (this.a) {
            case 0:
                return new ss(parcel, null);
            case 1:
                return new rk(parcel, null);
            default:
                return a(parcel, null);
        }
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        switch (this.a) {
            case 0:
                return new ss[i];
            case 1:
                return new rk[i];
            default:
                return new yv[i];
        }
    }

    @Override // android.os.Parcelable.ClassLoaderCreator
    public final /* synthetic */ Object createFromParcel(Parcel parcel, ClassLoader classLoader) {
        switch (this.a) {
            case 0:
                return new ss(parcel, classLoader);
            case 1:
                return new rk(parcel, classLoader);
            default:
                return a(parcel, classLoader);
        }
    }
}
