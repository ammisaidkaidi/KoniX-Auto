package defpackage;

import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.common.api.Status;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bqi extends asq implements IInterface {
    private final brk a;

    public bqi(brk brkVar) {
        super("com.google.android.gms.phenotype.internal.IPhenotypeCallbacks");
        this.a = brkVar;
    }

    public bqi() {
        super("com.google.android.gms.phenotype.internal.IPhenotypeCallbacks");
    }

    @Override // defpackage.asq
    protected final boolean w(int i, Parcel parcel, Parcel parcel2) {
        switch (i) {
            case 1:
                hq.e((Status) asr.a(parcel, Status.CREATOR), this.a);
                return true;
            case 2:
                hq.e((Status) asr.a(parcel, Status.CREATOR), this.a);
                return true;
            case 3:
                hq.e((Status) asr.a(parcel, Status.CREATOR), this.a);
                return true;
            case 4:
                hq.f((Status) asr.a(parcel, Status.CREATOR), (boj) asr.a(parcel, boj.CREATOR), this.a);
                return true;
            case 5:
                hq.e((Status) asr.a(parcel, Status.CREATOR), this.a);
                return true;
            case 6:
                hq.f((Status) asr.a(parcel, Status.CREATOR), (bol) asr.a(parcel, bol.CREATOR), this.a);
                return true;
            case 7:
                hq.f((Status) asr.a(parcel, Status.CREATOR), (bok) asr.a(parcel, bok.CREATOR), this.a);
                return true;
            case 8:
                hq.e((Status) asr.a(parcel, Status.CREATOR), this.a);
                return true;
            case 9:
                hq.f((Status) asr.a(parcel, Status.CREATOR), (bon) asr.a(parcel, bon.CREATOR), this.a);
                return true;
            case 10:
                hq.f((Status) asr.a(parcel, Status.CREATOR), (boj) asr.a(parcel, boj.CREATOR), this.a);
                return true;
            case 11:
                hq.f((Status) asr.a(parcel, Status.CREATOR), Long.valueOf(parcel.readLong()), this.a);
                return true;
            case 12:
                hq.e((Status) asr.a(parcel, Status.CREATOR), this.a);
                return true;
            case 13:
                hq.f((Status) asr.a(parcel, Status.CREATOR), (bop) asr.a(parcel, bop.CREATOR), this.a);
                return true;
            case 14:
                hq.e((Status) asr.a(parcel, Status.CREATOR), this.a);
                return true;
            case 15:
                hq.e((Status) asr.a(parcel, Status.CREATOR), this.a);
                return true;
            case 16:
                hq.f((Status) asr.a(parcel, Status.CREATOR), Long.valueOf(parcel.readLong()), this.a);
                return true;
            default:
                return false;
        }
    }
}
