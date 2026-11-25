package defpackage;

import android.os.Parcel;
import android.os.RemoteException;
import android.util.Log;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class CertDataBinderBase extends AidlServiceStub implements CertDataInterface {
    private int a;

    protected CertDataBinderBase(byte[] bArr) {
        super("com.google.android.gms.common.internal.ICertData");
        ThreadAndNullChecksUtil.e(bArr.length == 25);
        this.a = Arrays.hashCode(bArr);
    }

    public static byte[] d(String str) {
        try {
            return str.getBytes("ISO-8859-1");
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError(ProtoFlagValueMessage);
        }
    }

    @Override // defpackage.CertDataInterface
    public final int c() {
        return this.a;
    }

    @Override // defpackage.CertDataInterface
    public final AidlServiceStub e() {
        return new ObjectWrapperStub(v());
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof CertDataInterface)) {
            return false;
        }
        try {
            CertDataInterface bniVar = (CertDataInterface) obj;
            if (bniVar.c() != this.a) {
                return false;
            }
            return Arrays.equals(v(), (byte[]) ((ObjectWrapperStub) bniVar.e()).a);
        } catch (RemoteException e) {
            Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e);
            return false;
        }
    }

    public final int hashCode() {
        return this.a;
    }

    public abstract byte[] v();

    @Override // defpackage.AidlServiceStub
    protected final boolean w(int i, Parcel parcel, Parcel parcel2) {
        switch (NavInstructionTypeEnum) {
            case 1:
                AidlServiceStub e = e();
                parcel2.writeNoException();
                ServiceBinderHelper.c(parcel2, e);
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

    public CertDataBinderBase() {
        super("com.google.android.gms.common.internal.ICertData");
    }
}
