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
public final class GmsSafeParcelableCreatorSwitch implements Parcelable.Creator {
    private final /* synthetic */ int a;

    public GmsSafeParcelableCreatorSwitch(int i) {
        this.a = i;
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        switch (this.a) {
            case 0:
                return new ListPreferenceSavedState[i];
            case 1:
                return new ActivityResultSenderRequest[i];
            case 2:
                return new EditTextPreferenceSavedState[i];
            case 3:
                return new MultiSelectListPreferenceSavedState[i];
            case 4:
                return new PreferenceBaseSavedState[i];
            case 5:
                return new DropDownPreferenceSavedState[i];
            case 6:
                return new SeekBarPreferenceSavedState[i];
            case 7:
                return new TwoStatePreferenceSavedState[i];
            case 8:
                return new ProjectionDeviceImpl[i];
            case 9:
                return new TokenData[i];
            case 10:
                return new GoogleSignInAccount[i];
            case 11:
                return new ClearcutLogEventParcel[i];
            case 12:
                return new ClearcutIdentifierParcel[i];
            case 13:
                return new ClearcutUploadRequestParcel[i];
            case 14:
                return new ClearcutLogRequestParcel[i];
            case 15:
                return new ClearcutSamplingParcel[i];
            case 16:
                return new ConnectionResultCodes[i];
            case 17:
                return new ApiAvailabilityVersionInfo[i];
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
                return new ListPreferenceSavedState(parcel);
            case 1:
                return new ActivityResultSenderRequest(parcel);
            case 2:
                return new EditTextPreferenceSavedState(parcel);
            case 3:
                return new MultiSelectListPreferenceSavedState(parcel);
            case 4:
                return new PreferenceBaseSavedState(parcel);
            case 5:
                return new DropDownPreferenceSavedState(parcel);
            case 6:
                return new SeekBarPreferenceSavedState(parcel);
            case 7:
                return new TwoStatePreferenceSavedState(parcel);
            case 8:
                ProjectionDeviceImpl bcnVar = new ProjectionDeviceImpl(parcel.readLong());
                bcnVar.b = (BluetoothDevice) parcel.readParcelable(getClass().getClassLoader());
                bcnVar.c = parcel.readString();
                String readString = parcel.readString();
                readString.getClass();
                bcnVar.d = readString;
                bcnVar.e = ProjectionVisibilityState.a(parcel.readInt());
                bcnVar.f = parcel.readByte() != 0;
                bcnVar.g = ProjectionDeviceImpl.g(parcel.readString());
                return bcnVar;
            case 9:
                int A = VersionedParcelReader.A(parcel);
                String str5 = null;
                Long l = null;
                ArrayList arrayList2 = null;
                String str6 = null;
                int i2 = 0;
                boolean z = false;
                boolean z2 = false;
                while (parcel.dataPosition() < A) {
                    int readInt = parcel.readInt();
                    switch (VersionedParcelReader.x(readInt)) {
                        case 1:
                            i2 = VersionedParcelReader.y(parcel, readInt);
                            break;
                        case 2:
                            str5 = VersionedParcelReader.F(parcel, readInt);
                            break;
                        case 3:
                            int z3 = VersionedParcelReader.z(parcel, readInt);
                            if (z3 != 0) {
                                VersionedParcelReader.R(parcel, z3, 8);
                                l = Long.valueOf(parcel.readLong());
                                break;
                            } else {
                                l = null;
                                break;
                            }
                        case 4:
                            z = VersionedParcelReader.L(parcel, readInt);
                            break;
                        case 5:
                            z2 = VersionedParcelReader.L(parcel, readInt);
                            break;
                        case 6:
                            arrayList2 = VersionedParcelReader.G(parcel, readInt);
                            break;
                        case 7:
                            str6 = VersionedParcelReader.F(parcel, readInt);
                            break;
                        default:
                            VersionedParcelReader.K(parcel, readInt);
                            break;
                    }
                }
                VersionedParcelReader.I(parcel, A);
                return new TokenData(i2, str5, l, z, z2, arrayList2, str6);
            case 10:
                int A2 = VersionedParcelReader.A(parcel);
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
                    switch (VersionedParcelReader.x(readInt2)) {
                        case 1:
                            i3 = VersionedParcelReader.y(parcel, readInt2);
                            break;
                        case 2:
                            str7 = VersionedParcelReader.F(parcel, readInt2);
                            break;
                        case 3:
                            str8 = VersionedParcelReader.F(parcel, readInt2);
                            break;
                        case 4:
                            str9 = VersionedParcelReader.F(parcel, readInt2);
                            break;
                        case 5:
                            str10 = VersionedParcelReader.F(parcel, readInt2);
                            break;
                        case 6:
                            uri = (Uri) VersionedParcelReader.E(parcel, readInt2, Uri.CREATOR);
                            break;
                        case 7:
                            str11 = VersionedParcelReader.F(parcel, readInt2);
                            break;
                        case 8:
                            j = VersionedParcelReader.B(parcel, readInt2);
                            break;
                        case 9:
                            str12 = VersionedParcelReader.F(parcel, readInt2);
                            break;
                        case 10:
                            arrayList3 = VersionedParcelReader.H(parcel, readInt2, Scope.CREATOR);
                            break;
                        case 11:
                            str13 = VersionedParcelReader.F(parcel, readInt2);
                            break;
                        case 12:
                            str14 = VersionedParcelReader.F(parcel, readInt2);
                            break;
                        default:
                            VersionedParcelReader.K(parcel, readInt2);
                            break;
                    }
                }
                VersionedParcelReader.I(parcel, A2);
                return new GoogleSignInAccount(i3, str7, str8, str9, str10, uri, str11, j, str12, arrayList3, str13, str14);
            case 11:
                int A3 = VersionedParcelReader.A(parcel);
                while (parcel.dataPosition() < A3) {
                    int readInt3 = parcel.readInt();
                    switch (VersionedParcelReader.x(readInt3)) {
                        case 1:
                            i = VersionedParcelReader.y(parcel, readInt3);
                            break;
                        case 2:
                            str = VersionedParcelReader.F(parcel, readInt3);
                            break;
                        default:
                            VersionedParcelReader.K(parcel, readInt3);
                            break;
                    }
                }
                VersionedParcelReader.I(parcel, A3);
                return new ClearcutLogEventParcel(i, str);
            case 12:
                int A4 = VersionedParcelReader.A(parcel);
                while (parcel.dataPosition() < A4) {
                    int readInt4 = parcel.readInt();
                    switch (VersionedParcelReader.x(readInt4)) {
                        case 1:
                            arrayList = VersionedParcelReader.H(parcel, readInt4, ClearcutUploadRequestParcel.CREATOR);
                            break;
                        default:
                            VersionedParcelReader.K(parcel, readInt4);
                            break;
                    }
                }
                VersionedParcelReader.I(parcel, A4);
                return new ClearcutIdentifierParcel(arrayList);
            case 13:
                int A5 = VersionedParcelReader.A(parcel);
                int i4 = 0;
                while (parcel.dataPosition() < A5) {
                    int readInt5 = parcel.readInt();
                    switch (VersionedParcelReader.x(readInt5)) {
                        case 1:
                            str4 = VersionedParcelReader.F(parcel, readInt5);
                            break;
                        case 2:
                            i = VersionedParcelReader.y(parcel, readInt5);
                            break;
                        case 3:
                            i4 = VersionedParcelReader.y(parcel, readInt5);
                            break;
                        default:
                            VersionedParcelReader.K(parcel, readInt5);
                            break;
                    }
                }
                VersionedParcelReader.I(parcel, A5);
                return new ClearcutUploadRequestParcel(str4, i, i4);
            case 14:
                int A6 = VersionedParcelReader.A(parcel);
                ClearcutSamplingParcel biwVar = null;
                byte[] bArr = null;
                int[] iArr = null;
                String[] strArr = null;
                int[] iArr2 = null;
                byte[][] bArr2 = null;
                ExperimentTokensParcel[] bolVarArr = null;
                boolean z4 = true;
                while (parcel.dataPosition() < A6) {
                    int readInt6 = parcel.readInt();
                    switch (VersionedParcelReader.x(readInt6)) {
                        case 2:
                            biwVar = (ClearcutSamplingParcel) VersionedParcelReader.E(parcel, readInt6, ClearcutSamplingParcel.CREATOR);
                            break;
                        case 3:
                            bArr = VersionedParcelReader.M(parcel, readInt6);
                            break;
                        case 4:
                            iArr = VersionedParcelReader.N(parcel, readInt6);
                            break;
                        case 5:
                            strArr = VersionedParcelReader.P(parcel, readInt6);
                            break;
                        case 6:
                            iArr2 = VersionedParcelReader.N(parcel, readInt6);
                            break;
                        case 7:
                            bArr2 = VersionedParcelReader.Q(parcel, readInt6);
                            break;
                        case 8:
                            z4 = VersionedParcelReader.L(parcel, readInt6);
                            break;
                        case 9:
                            bolVarArr = (ExperimentTokensParcel[]) VersionedParcelReader.O(parcel, readInt6, ExperimentTokensParcel.CREATOR);
                            break;
                        default:
                            VersionedParcelReader.K(parcel, readInt6);
                            break;
                    }
                }
                VersionedParcelReader.I(parcel, A6);
                return new ClearcutLogRequestParcel(biwVar, bArr, iArr, strArr, iArr2, bArr2, z4, bolVarArr);
            case 15:
                int A7 = VersionedParcelReader.A(parcel);
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
                    switch (VersionedParcelReader.x(readInt7)) {
                        case 2:
                            str15 = VersionedParcelReader.F(parcel, readInt7);
                            break;
                        case 3:
                            i5 = VersionedParcelReader.y(parcel, readInt7);
                            break;
                        case 4:
                            i6 = VersionedParcelReader.y(parcel, readInt7);
                            break;
                        case 5:
                            str16 = VersionedParcelReader.F(parcel, readInt7);
                            break;
                        case 6:
                            str17 = VersionedParcelReader.F(parcel, readInt7);
                            break;
                        case 7:
                            z5 = VersionedParcelReader.L(parcel, readInt7);
                            break;
                        case 8:
                            str18 = VersionedParcelReader.F(parcel, readInt7);
                            break;
                        case 9:
                            z6 = VersionedParcelReader.L(parcel, readInt7);
                            break;
                        case 10:
                            i7 = VersionedParcelReader.y(parcel, readInt7);
                            break;
                        case 11:
                            int z8 = VersionedParcelReader.z(parcel, readInt7);
                            if (z8 != 0) {
                                VersionedParcelReader.R(parcel, z8, 4);
                                num = Integer.valueOf(parcel.readInt());
                                break;
                            } else {
                                num = null;
                                break;
                            }
                        case 12:
                            z7 = VersionedParcelReader.L(parcel, readInt7);
                            break;
                        case 13:
                            i8 = VersionedParcelReader.y(parcel, readInt7);
                            break;
                        default:
                            VersionedParcelReader.K(parcel, readInt7);
                            break;
                    }
                }
                VersionedParcelReader.I(parcel, A7);
                return new ClearcutSamplingParcel(str15, i5, i6, str16, str17, z5, str18, z6, i7, num, z7, i8);
            case 16:
                int A8 = VersionedParcelReader.A(parcel);
                String str19 = null;
                int i9 = 0;
                while (parcel.dataPosition() < A8) {
                    int readInt8 = parcel.readInt();
                    switch (VersionedParcelReader.x(readInt8)) {
                        case 1:
                            i = VersionedParcelReader.y(parcel, readInt8);
                            break;
                        case 2:
                            i9 = VersionedParcelReader.y(parcel, readInt8);
                            break;
                        case 3:
                            pendingIntent = (PendingIntent) VersionedParcelReader.E(parcel, readInt8, PendingIntent.CREATOR);
                            break;
                        case 4:
                            str19 = VersionedParcelReader.F(parcel, readInt8);
                            break;
                        default:
                            VersionedParcelReader.K(parcel, readInt8);
                            break;
                    }
                }
                VersionedParcelReader.I(parcel, A8);
                return new ConnectionResultCodes(i, i9, pendingIntent, str19);
            case 17:
                int A9 = VersionedParcelReader.A(parcel);
                long j2 = -1;
                while (parcel.dataPosition() < A9) {
                    int readInt9 = parcel.readInt();
                    switch (VersionedParcelReader.x(readInt9)) {
                        case 1:
                            str3 = VersionedParcelReader.F(parcel, readInt9);
                            break;
                        case 2:
                            i = VersionedParcelReader.y(parcel, readInt9);
                            break;
                        case 3:
                            j2 = VersionedParcelReader.B(parcel, readInt9);
                            break;
                        default:
                            VersionedParcelReader.K(parcel, readInt9);
                            break;
                    }
                }
                VersionedParcelReader.I(parcel, A9);
                return new ApiAvailabilityVersionInfo(str3, i, j2);
            case 18:
                int A10 = VersionedParcelReader.A(parcel);
                while (parcel.dataPosition() < A10) {
                    int readInt10 = parcel.readInt();
                    switch (VersionedParcelReader.x(readInt10)) {
                        case 1:
                            i = VersionedParcelReader.y(parcel, readInt10);
                            break;
                        case 2:
                            str2 = VersionedParcelReader.F(parcel, readInt10);
                            break;
                        default:
                            VersionedParcelReader.K(parcel, readInt10);
                            break;
                    }
                }
                VersionedParcelReader.I(parcel, A10);
                return new Scope(i, str2);
            case 19:
                int A11 = VersionedParcelReader.A(parcel);
                String str20 = null;
                PendingIntent pendingIntent2 = null;
                ConnectionResultCodes bizVar = null;
                int i10 = 0;
                int i11 = 0;
                while (parcel.dataPosition() < A11) {
                    int readInt11 = parcel.readInt();
                    switch (VersionedParcelReader.x(readInt11)) {
                        case 1:
                            i11 = VersionedParcelReader.y(parcel, readInt11);
                            break;
                        case 2:
                            str20 = VersionedParcelReader.F(parcel, readInt11);
                            break;
                        case 3:
                            pendingIntent2 = (PendingIntent) VersionedParcelReader.E(parcel, readInt11, PendingIntent.CREATOR);
                            break;
                        case 4:
                            bizVar = (ConnectionResultCodes) VersionedParcelReader.E(parcel, readInt11, ConnectionResultCodes.CREATOR);
                            break;
                        case 1000:
                            i10 = VersionedParcelReader.y(parcel, readInt11);
                            break;
                        default:
                            VersionedParcelReader.K(parcel, readInt11);
                            break;
                    }
                }
                VersionedParcelReader.I(parcel, A11);
                return new Status(i10, i11, str20, pendingIntent2, bizVar);
            default:
                int A12 = VersionedParcelReader.A(parcel);
                String[] strArr2 = null;
                CursorWindow[] cursorWindowArr = null;
                Bundle bundle = null;
                int i12 = 0;
                int i13 = 0;
                while (parcel.dataPosition() < A12) {
                    int readInt12 = parcel.readInt();
                    switch (VersionedParcelReader.x(readInt12)) {
                        case 1:
                            strArr2 = VersionedParcelReader.P(parcel, readInt12);
                            break;
                        case 2:
                            cursorWindowArr = (CursorWindow[]) VersionedParcelReader.O(parcel, readInt12, CursorWindow.CREATOR);
                            break;
                        case 3:
                            i13 = VersionedParcelReader.y(parcel, readInt12);
                            break;
                        case 4:
                            bundle = VersionedParcelReader.C(parcel, readInt12);
                            break;
                        case 1000:
                            i12 = VersionedParcelReader.y(parcel, readInt12);
                            break;
                        default:
                            VersionedParcelReader.K(parcel, readInt12);
                            break;
                    }
                }
                VersionedParcelReader.I(parcel, A12);
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
                            if (NavInstructionTypeEnum >= cursorWindowArr2.length) {
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
