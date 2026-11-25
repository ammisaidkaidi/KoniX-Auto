package defpackage;

import android.app.PendingIntent;
import android.bluetooth.BluetoothDevice;
import android.database.CursorWindow;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.TokenData;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import java.util.ArrayList;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class acg implements Parcelable.Creator {
    private final /* synthetic */ int a;

    public acg(int i) {
        this.a = i;
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        switch (this.a) {
            case 0:
                return new ach[i];
            case 1:
                return new ua[i];
            case 2:
                return new acj[i];
            case 3:
                return new acl[i];
            case 4:
                return new acn[i];
            case 5:
                return new adc[i];
            case 6:
                return new ads[i];
            case 7:
                return new adv[i];
            case 8:
                return new bcn[i];
            case 9:
                return new TokenData[i];
            case 10:
                return new GoogleSignInAccount[i];
            case 11:
                return new bia[i];
            case 12:
                return new bid[i];
            case 13:
                return new bim[i];
            case 14:
                return new bin[i];
            case 15:
                return new biw[i];
            case 16:
                return new biz[i];
            case 17:
                return new bjb[i];
            case 18:
                return new Scope[i];
            case 19:
                return new Status[i];
            default:
                return new DataHolder[i];
        }
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int i = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        PendingIntent pendingIntent = null;
        String str4 = null;
        ArrayList arrayList = null;
        switch (this.a) {
            case 0:
                return new ach(parcel);
            case 1:
                return new ua(parcel);
            case 2:
                return new acj(parcel);
            case 3:
                return new acl(parcel);
            case 4:
                return new acn(parcel);
            case 5:
                return new adc(parcel);
            case 6:
                return new ads(parcel);
            case 7:
                return new adv(parcel);
            case 8:
                bcn bcnVar = new bcn(parcel.readLong());
                bcnVar.b = (BluetoothDevice) parcel.readParcelable(getClass().getClassLoader());
                bcnVar.c = parcel.readString();
                String readString = parcel.readString();
                readString.getClass();
                bcnVar.d = readString;
                bcnVar.e = bcq.a(parcel.readInt());
                bcnVar.f = parcel.readByte() != 0;
                bcnVar.g = bcn.g(parcel.readString());
                return bcnVar;
            case 9:
                int A = io.A(parcel);
                String str5 = null;
                Long l = null;
                ArrayList arrayList2 = null;
                String str6 = null;
                int i2 = 0;
                boolean z = false;
                boolean z2 = false;
                while (parcel.dataPosition() < A) {
                    int readInt = parcel.readInt();
                    switch (io.x(readInt)) {
                        case 1:
                            i2 = io.y(parcel, readInt);
                            break;
                        case 2:
                            str5 = io.F(parcel, readInt);
                            break;
                        case 3:
                            int z3 = io.z(parcel, readInt);
                            if (z3 != 0) {
                                io.R(parcel, z3, 8);
                                l = Long.valueOf(parcel.readLong());
                                break;
                            } else {
                                l = null;
                                break;
                            }
                        case 4:
                            z = io.L(parcel, readInt);
                            break;
                        case 5:
                            z2 = io.L(parcel, readInt);
                            break;
                        case 6:
                            arrayList2 = io.G(parcel, readInt);
                            break;
                        case 7:
                            str6 = io.F(parcel, readInt);
                            break;
                        default:
                            io.K(parcel, readInt);
                            break;
                    }
                }
                io.I(parcel, A);
                return new TokenData(i2, str5, l, z, z2, arrayList2, str6);
            case 10:
                int A2 = io.A(parcel);
                String str7 = null;
                String str8 = null;
                String str9 = null;
                String str10 = null;
                Uri uri = null;
                String str11 = null;
                String str12 = null;
                ArrayList arrayList3 = null;
                String str13 = null;
                String str14 = null;
                long j = 0;
                int i3 = 0;
                while (parcel.dataPosition() < A2) {
                    int readInt2 = parcel.readInt();
                    switch (io.x(readInt2)) {
                        case 1:
                            i3 = io.y(parcel, readInt2);
                            break;
                        case 2:
                            str7 = io.F(parcel, readInt2);
                            break;
                        case 3:
                            str8 = io.F(parcel, readInt2);
                            break;
                        case 4:
                            str9 = io.F(parcel, readInt2);
                            break;
                        case 5:
                            str10 = io.F(parcel, readInt2);
                            break;
                        case 6:
                            uri = (Uri) io.E(parcel, readInt2, Uri.CREATOR);
                            break;
                        case 7:
                            str11 = io.F(parcel, readInt2);
                            break;
                        case 8:
                            j = io.B(parcel, readInt2);
                            break;
                        case 9:
                            str12 = io.F(parcel, readInt2);
                            break;
                        case 10:
                            arrayList3 = io.H(parcel, readInt2, Scope.CREATOR);
                            break;
                        case 11:
                            str13 = io.F(parcel, readInt2);
                            break;
                        case 12:
                            str14 = io.F(parcel, readInt2);
                            break;
                        default:
                            io.K(parcel, readInt2);
                            break;
                    }
                }
                io.I(parcel, A2);
                return new GoogleSignInAccount(i3, str7, str8, str9, str10, uri, str11, j, str12, arrayList3, str13, str14);
            case 11:
                int A3 = io.A(parcel);
                while (parcel.dataPosition() < A3) {
                    int readInt3 = parcel.readInt();
                    switch (io.x(readInt3)) {
                        case 1:
                            i = io.y(parcel, readInt3);
                            break;
                        case 2:
                            str = io.F(parcel, readInt3);
                            break;
                        default:
                            io.K(parcel, readInt3);
                            break;
                    }
                }
                io.I(parcel, A3);
                return new bia(i, str);
            case 12:
                int A4 = io.A(parcel);
                while (parcel.dataPosition() < A4) {
                    int readInt4 = parcel.readInt();
                    switch (io.x(readInt4)) {
                        case 1:
                            arrayList = io.H(parcel, readInt4, bim.CREATOR);
                            break;
                        default:
                            io.K(parcel, readInt4);
                            break;
                    }
                }
                io.I(parcel, A4);
                return new bid(arrayList);
            case 13:
                int A5 = io.A(parcel);
                int i4 = 0;
                while (parcel.dataPosition() < A5) {
                    int readInt5 = parcel.readInt();
                    switch (io.x(readInt5)) {
                        case 1:
                            str4 = io.F(parcel, readInt5);
                            break;
                        case 2:
                            i = io.y(parcel, readInt5);
                            break;
                        case 3:
                            i4 = io.y(parcel, readInt5);
                            break;
                        default:
                            io.K(parcel, readInt5);
                            break;
                    }
                }
                io.I(parcel, A5);
                return new bim(str4, i, i4);
            case 14:
                int A6 = io.A(parcel);
                biw biwVar = null;
                byte[] bArr = null;
                int[] iArr = null;
                String[] strArr = null;
                int[] iArr2 = null;
                byte[][] bArr2 = null;
                bol[] bolVarArr = null;
                boolean z4 = true;
                while (parcel.dataPosition() < A6) {
                    int readInt6 = parcel.readInt();
                    switch (io.x(readInt6)) {
                        case 2:
                            biwVar = (biw) io.E(parcel, readInt6, biw.CREATOR);
                            break;
                        case 3:
                            bArr = io.M(parcel, readInt6);
                            break;
                        case 4:
                            iArr = io.N(parcel, readInt6);
                            break;
                        case 5:
                            strArr = io.P(parcel, readInt6);
                            break;
                        case 6:
                            iArr2 = io.N(parcel, readInt6);
                            break;
                        case 7:
                            bArr2 = io.Q(parcel, readInt6);
                            break;
                        case 8:
                            z4 = io.L(parcel, readInt6);
                            break;
                        case 9:
                            bolVarArr = (bol[]) io.O(parcel, readInt6, bol.CREATOR);
                            break;
                        default:
                            io.K(parcel, readInt6);
                            break;
                    }
                }
                io.I(parcel, A6);
                return new bin(biwVar, bArr, iArr, strArr, iArr2, bArr2, z4, bolVarArr);
            case 15:
                int A7 = io.A(parcel);
                String str15 = null;
                String str16 = null;
                String str17 = null;
                String str18 = null;
                Integer num = null;
                int i5 = 0;
                int i6 = 0;
                boolean z5 = true;
                boolean z6 = false;
                int i7 = 0;
                boolean z7 = false;
                int i8 = 0;
                while (parcel.dataPosition() < A7) {
                    int readInt7 = parcel.readInt();
                    switch (io.x(readInt7)) {
                        case 2:
                            str15 = io.F(parcel, readInt7);
                            break;
                        case 3:
                            i5 = io.y(parcel, readInt7);
                            break;
                        case 4:
                            i6 = io.y(parcel, readInt7);
                            break;
                        case 5:
                            str16 = io.F(parcel, readInt7);
                            break;
                        case 6:
                            str17 = io.F(parcel, readInt7);
                            break;
                        case 7:
                            z5 = io.L(parcel, readInt7);
                            break;
                        case 8:
                            str18 = io.F(parcel, readInt7);
                            break;
                        case 9:
                            z6 = io.L(parcel, readInt7);
                            break;
                        case 10:
                            i7 = io.y(parcel, readInt7);
                            break;
                        case 11:
                            int z8 = io.z(parcel, readInt7);
                            if (z8 != 0) {
                                io.R(parcel, z8, 4);
                                num = Integer.valueOf(parcel.readInt());
                                break;
                            } else {
                                num = null;
                                break;
                            }
                        case 12:
                            z7 = io.L(parcel, readInt7);
                            break;
                        case 13:
                            i8 = io.y(parcel, readInt7);
                            break;
                        default:
                            io.K(parcel, readInt7);
                            break;
                    }
                }
                io.I(parcel, A7);
                return new biw(str15, i5, i6, str16, str17, z5, str18, z6, i7, num, z7, i8);
            case 16:
                int A8 = io.A(parcel);
                String str19 = null;
                int i9 = 0;
                while (parcel.dataPosition() < A8) {
                    int readInt8 = parcel.readInt();
                    switch (io.x(readInt8)) {
                        case 1:
                            i = io.y(parcel, readInt8);
                            break;
                        case 2:
                            i9 = io.y(parcel, readInt8);
                            break;
                        case 3:
                            pendingIntent = (PendingIntent) io.E(parcel, readInt8, PendingIntent.CREATOR);
                            break;
                        case 4:
                            str19 = io.F(parcel, readInt8);
                            break;
                        default:
                            io.K(parcel, readInt8);
                            break;
                    }
                }
                io.I(parcel, A8);
                return new biz(i, i9, pendingIntent, str19);
            case 17:
                int A9 = io.A(parcel);
                long j2 = -1;
                while (parcel.dataPosition() < A9) {
                    int readInt9 = parcel.readInt();
                    switch (io.x(readInt9)) {
                        case 1:
                            str3 = io.F(parcel, readInt9);
                            break;
                        case 2:
                            i = io.y(parcel, readInt9);
                            break;
                        case 3:
                            j2 = io.B(parcel, readInt9);
                            break;
                        default:
                            io.K(parcel, readInt9);
                            break;
                    }
                }
                io.I(parcel, A9);
                return new bjb(str3, i, j2);
            case 18:
                int A10 = io.A(parcel);
                while (parcel.dataPosition() < A10) {
                    int readInt10 = parcel.readInt();
                    switch (io.x(readInt10)) {
                        case 1:
                            i = io.y(parcel, readInt10);
                            break;
                        case 2:
                            str2 = io.F(parcel, readInt10);
                            break;
                        default:
                            io.K(parcel, readInt10);
                            break;
                    }
                }
                io.I(parcel, A10);
                return new Scope(i, str2);
            case 19:
                int A11 = io.A(parcel);
                String str20 = null;
                PendingIntent pendingIntent2 = null;
                biz bizVar = null;
                int i10 = 0;
                int i11 = 0;
                while (parcel.dataPosition() < A11) {
                    int readInt11 = parcel.readInt();
                    switch (io.x(readInt11)) {
                        case 1:
                            i11 = io.y(parcel, readInt11);
                            break;
                        case 2:
                            str20 = io.F(parcel, readInt11);
                            break;
                        case 3:
                            pendingIntent2 = (PendingIntent) io.E(parcel, readInt11, PendingIntent.CREATOR);
                            break;
                        case 4:
                            bizVar = (biz) io.E(parcel, readInt11, biz.CREATOR);
                            break;
                        case 1000:
                            i10 = io.y(parcel, readInt11);
                            break;
                        default:
                            io.K(parcel, readInt11);
                            break;
                    }
                }
                io.I(parcel, A11);
                return new Status(i10, i11, str20, pendingIntent2, bizVar);
            default:
                int A12 = io.A(parcel);
                String[] strArr2 = null;
                CursorWindow[] cursorWindowArr = null;
                Bundle bundle = null;
                int i12 = 0;
                int i13 = 0;
                while (parcel.dataPosition() < A12) {
                    int readInt12 = parcel.readInt();
                    switch (io.x(readInt12)) {
                        case 1:
                            strArr2 = io.P(parcel, readInt12);
                            break;
                        case 2:
                            cursorWindowArr = (CursorWindow[]) io.O(parcel, readInt12, CursorWindow.CREATOR);
                            break;
                        case 3:
                            i13 = io.y(parcel, readInt12);
                            break;
                        case 4:
                            bundle = io.C(parcel, readInt12);
                            break;
                        case 1000:
                            i12 = io.y(parcel, readInt12);
                            break;
                        default:
                            io.K(parcel, readInt12);
                            break;
                    }
                }
                io.I(parcel, A12);
                DataHolder dataHolder = new DataHolder(i12, strArr2, cursorWindowArr, i13, bundle);
                dataHolder.c = new Bundle();
                int i14 = 0;
                while (true) {
                    String[] strArr3 = dataHolder.b;
                    if (i14 < strArr3.length) {
                        dataHolder.c.putInt(strArr3[i14], i14);
                        i14++;
                    } else {
                        dataHolder.g = new int[dataHolder.d.length];
                        int i15 = 0;
                        while (true) {
                            CursorWindow[] cursorWindowArr2 = dataHolder.d;
                            if (i >= cursorWindowArr2.length) {
                                return dataHolder;
                            }
                            dataHolder.g[i] = i15;
                            i15 += dataHolder.d[i].getNumRows() - (i15 - cursorWindowArr2[i].getStartPosition());
                            i++;
                        }
                    }
                }
        }
    }
}
