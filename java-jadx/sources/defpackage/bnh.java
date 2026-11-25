package defpackage;

import android.os.Parcel;
import android.os.RemoteException;
import android.util.Log;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class bnh extends asq implements bni {
    private int a;

    protected bnh(byte[] bArr) {
        super("com.google.android.gms.common.internal.ICertData");
        hr.e(bArr.length == 25);
        this.a = Arrays.hashCode(bArr);
    }

    public static byte[] d(String str) {
        try {
            return str.getBytes("ISO-8859-1");
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError(e);
        }
    }

    @Override // defpackage.bni
    public final int c() {
        return this.a;
    }

    @Override // defpackage.bni
    public final asq e() {
        return new bod(v());
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof bni)) {
            return false;
        }
        try {
            bni bniVar = (bni) obj;
            if (bniVar.c() != this.a) {
                return false;
            }
            return Arrays.equals(v(), (byte[]) ((bod) bniVar.e()).a);
        } catch (RemoteException e) {
            Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e);
            return false;
        }
    }

    public final int hashCode() {
        return this.a;
    }

    public abstract byte[] v();

    @Override // defpackage.asq
    protected final boolean w(int i, Parcel parcel, Parcel parcel2) {
        switch (i) {
            case 1:
                asq e = e();
                parcel2.writeNoException();
                asr.c(parcel2, e);
                return true;
            case 2:
                int i2 = this.a;
                parcel2.writeNoException();
                parcel2.writeInt(i2);
                return true;
            default:
                return false;
        }
    }

    public bnh() {
        super("com.google.android.gms.common.internal.ICertData");
    }
}
