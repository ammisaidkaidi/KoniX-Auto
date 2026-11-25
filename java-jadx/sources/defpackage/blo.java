package defpackage;

import android.os.Bundle;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.common.api.Status;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class blo extends asq implements IInterface {
    final /* synthetic */ brk a;
    private final /* synthetic */ int b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public blo(brk brkVar, int i, byte[] bArr) {
        super("com.google.android.gms.auth.account.data.IGetTokenWithDetailsCallback");
        this.b = i;
        this.a = brkVar;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public blo(brk brkVar, int i) {
        super("com.google.android.gms.common.api.internal.IStatusCallback");
        this.b = i;
        this.a = brkVar;
    }

    @Override // defpackage.asq
    protected final boolean w(int i, Parcel parcel, Parcel parcel2) {
        switch (this.b) {
            case 0:
                if (i == 1) {
                    bhy.a((Status) asr.a(parcel, Status.CREATOR), null, this.a);
                    break;
                }
                break;
            default:
                if (i == 2) {
                    bhy.a((Status) asr.a(parcel, Status.CREATOR), (Bundle) asr.a(parcel, Bundle.CREATOR), this.a);
                    break;
                }
                break;
        }
        return true;
    }
}
