package defpackage;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class BaseSavedStateCreator implements Parcelable.ClassLoaderCreator {
    private final /* synthetic */ int a;

    public BaseSavedStateCreator(int i) {
        this.a = i;
    }

    public static final ViewBaseSavedState a(Parcel parcel, ClassLoader classLoader) {
        if (parcel.readParcelable(classLoader) == null) {
            return yv.c;
        }
        throw new IllegalStateException("superState must be null");
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        switch (this.a) {
            case 0:
                return new ViewSavedStateWithFlags(parcel, null);
            case 1:
                return new SavedStateWithParcelable(parcel, null);
            default:
                return a(parcel, null);
        }
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        switch (this.a) {
            case 0:
                return new ViewSavedStateWithFlags[i];
            case 1:
                return new SavedStateWithParcelable[i];
            default:
                return new ViewBaseSavedState[i];
        }
    }

    @Override // android.os.Parcelable.ClassLoaderCreator
    public final /* synthetic */ Object createFromParcel(Parcel parcel, ClassLoader classLoader) {
        switch (this.a) {
            case 0:
                return new ViewSavedStateWithFlags(parcel, classLoader);
            case 1:
                return new SavedStateWithParcelable(parcel, classLoader);
            default:
                return a(parcel, classLoader);
        }
    }
}
