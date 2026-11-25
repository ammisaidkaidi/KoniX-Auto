package defpackage;

import android.accounts.Account;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.Scope;
import java.util.ArrayList;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ConnectionResultCreator implements Parcelable.Creator {
    private final /* synthetic */ int a;

    public ConnectionResultCreator(int i) {
        this.a = i;
    }

    static void a(AccountAccessorBinder bmvVar, Parcel parcel, int i) {
        int g = VersionedParcelReader.g(parcel);
        VersionedParcelReader.k(parcel, 1, bmvVar.a);
        VersionedParcelReader.k(parcel, 2, bmvVar.b);
        VersionedParcelReader.k(parcel, 3, bmvVar.c);
        VersionedParcelReader.s(parcel, 4, bmvVar.d);
        VersionedParcelReader.p(parcel, 5, bmvVar.e);
        VersionedParcelReader.v(parcel, 6, bmvVar.f, i);
        VersionedParcelReader.m(parcel, 7, bmvVar.g);
        VersionedParcelReader.r(parcel, 8, bmvVar.h, i);
        VersionedParcelReader.v(parcel, 10, bmvVar.i, i);
        VersionedParcelReader.v(parcel, 11, bmvVar.j, i);
        VersionedParcelReader.i(parcel, 12, bmvVar.k);
        VersionedParcelReader.k(parcel, 13, bmvVar.l);
        VersionedParcelReader.i(parcel, 14, bmvVar.m);
        VersionedParcelReader.s(parcel, 15, bmvVar.n);
        VersionedParcelReader.h(parcel, g);
    }

    public static boolean b(int i) {
        return i == 0;
    }

    public static boolean c(Object obj) {
        return obj == null;
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        switch (this.a) {
            case 0:
                return new ApiConnectionParcel[i];
            case 1:
                return new ConnectionResultParcel[i];
            case 2:
                return new AccountAccessorBinder[i];
            case 3:
                return new AccountAccessorParcel[i];
            case 4:
                return new SignInConnectionParcel[i];
            case 5:
                return new AccountAccessorResultParcel[i];
            case 6:
                return new CertDataParcel[i];
            case 7:
                return new GmsInternalParcel[i];
            case 8:
                return new PhenotypeRegistrationParcel[i];
            case 9:
                return new PhenotypeCommitParcel[i];
            case 10:
                return new PhenotypeTokenParcel[i];
            case 11:
                return new ExperimentTokensParcel[i];
            case 12:
                return new PhenotypeFlagValueParcel[i];
            case 13:
                return new PhenotypeSyncParcel[i];
            case 14:
                return new PhenotypeConfigParcel[i];
            case 15:
                return new PhenotypeSnapshotParcel[i];
            case 16:
                return new SignInStatusParcel[i];
            case 17:
                return new SignInAccountParcel[i];
            case 18:
                return new SignInResultParcel[i];
            case 19:
                return new SignInResponseParcel[i];
            default:
                return new ConfigPackageVersion[i];
        }
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        boolean z = false;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        Bundle bundle = null;
        ConnectionResultCodes bizVar = null;
        SignInConnectionParcel bnnVar = null;
        ArrayList arrayList = null;
        Intent intent = null;
        ArrayList arrayList2 = null;
        String str = null;
        byte[] bArr = null;
        PhenotypeFlagValueParcel[] bonVarArr = null;
        ArrayList arrayList3 = null;
        Account account = null;
        switch (this.a) {
            case 0:
                int A = VersionedParcelReader.A(parcel);
                CertDataParcel bnqVar = null;
                int[] iArr = null;
                int[] iArr2 = null;
                boolean z2 = false;
                boolean z3 = false;
                int i9 = 0;
                while (parcel.dataPosition() < A) {
                    int readInt = parcel.readInt();
                    switch (VersionedParcelReader.x(readInt)) {
                        case 1:
                            bnqVar = (CertDataParcel) VersionedParcelReader.E(parcel, readInt, CertDataParcel.CREATOR);
                            break;
                        case 2:
                            z2 = VersionedParcelReader.L(parcel, readInt);
                            break;
                        case 3:
                            z3 = VersionedParcelReader.L(parcel, readInt);
                            break;
                        case 4:
                            iArr = VersionedParcelReader.N(parcel, readInt);
                            break;
                        case 5:
                            i9 = VersionedParcelReader.y(parcel, readInt);
                            break;
                        case 6:
                            iArr2 = VersionedParcelReader.N(parcel, readInt);
                            break;
                        default:
                            VersionedParcelReader.K(parcel, readInt);
                            break;
                    }
                }
                VersionedParcelReader.I(parcel, A);
                return new ApiConnectionParcel(bnqVar, z2, z3, iArr, i9, iArr2);
            case 1:
                int A2 = VersionedParcelReader.A(parcel);
                ApiAvailabilityVersionInfo[] bjbVarArr = null;
                ApiConnectionParcel bmsVar = null;
                while (parcel.dataPosition() < A2) {
                    int readInt2 = parcel.readInt();
                    switch (VersionedParcelReader.x(readInt2)) {
                        case 1:
                            bundle = VersionedParcelReader.C(parcel, readInt2);
                            break;
                        case 2:
                            bjbVarArr = (ApiAvailabilityVersionInfo[]) VersionedParcelReader.O(parcel, readInt2, ApiAvailabilityVersionInfo.CREATOR);
                            break;
                        case 3:
                            i = VersionedParcelReader.y(parcel, readInt2);
                            break;
                        case 4:
                            bmsVar = (ApiConnectionParcel) VersionedParcelReader.E(parcel, readInt2, ApiConnectionParcel.CREATOR);
                            break;
                        default:
                            VersionedParcelReader.K(parcel, readInt2);
                            break;
                    }
                }
                VersionedParcelReader.I(parcel, A2);
                return new ConnectionResultParcel(bundle, bjbVarArr, i, bmsVar);
            case 2:
                int A3 = VersionedParcelReader.A(parcel);
                String str2 = null;
                IBinder iBinder = null;
                Scope[] scopeArr = null;
                Bundle bundle2 = null;
                Account account2 = null;
                ApiAvailabilityVersionInfo[] bjbVarArr2 = null;
                ApiAvailabilityVersionInfo[] bjbVarArr3 = null;
                String str3 = null;
                int i10 = 0;
                int i11 = 0;
                int i12 = 0;
                boolean z4 = false;
                int i13 = 0;
                boolean z5 = false;
                while (parcel.dataPosition() < A3) {
                    int readInt3 = parcel.readInt();
                    switch (VersionedParcelReader.x(readInt3)) {
                        case 1:
                            i10 = VersionedParcelReader.y(parcel, readInt3);
                            break;
                        case 2:
                            i11 = VersionedParcelReader.y(parcel, readInt3);
                            break;
                        case 3:
                            i12 = VersionedParcelReader.y(parcel, readInt3);
                            break;
                        case 4:
                            str2 = VersionedParcelReader.F(parcel, readInt3);
                            break;
                        case 5:
                            iBinder = VersionedParcelReader.D(parcel, readInt3);
                            break;
                        case 6:
                            scopeArr = (Scope[]) VersionedParcelReader.O(parcel, readInt3, Scope.CREATOR);
                            break;
                        case 7:
                            bundle2 = VersionedParcelReader.C(parcel, readInt3);
                            break;
                        case 8:
                            account2 = (Account) VersionedParcelReader.E(parcel, readInt3, Account.CREATOR);
                            break;
                        case 9:
                        default:
                            VersionedParcelReader.K(parcel, readInt3);
                            break;
                        case 10:
                            bjbVarArr2 = (ApiAvailabilityVersionInfo[]) VersionedParcelReader.O(parcel, readInt3, ApiAvailabilityVersionInfo.CREATOR);
                            break;
                        case 11:
                            bjbVarArr3 = (ApiAvailabilityVersionInfo[]) VersionedParcelReader.O(parcel, readInt3, ApiAvailabilityVersionInfo.CREATOR);
                            break;
                        case 12:
                            z4 = VersionedParcelReader.L(parcel, readInt3);
                            break;
                        case 13:
                            i13 = VersionedParcelReader.y(parcel, readInt3);
                            break;
                        case 14:
                            z5 = VersionedParcelReader.L(parcel, readInt3);
                            break;
                        case 15:
                            str3 = VersionedParcelReader.F(parcel, readInt3);
                            break;
                    }
                }
                VersionedParcelReader.I(parcel, A3);
                return new AccountAccessorBinder(i10, i11, i12, str2, iBinder, scopeArr, bundle2, account2, bjbVarArr2, bjbVarArr3, z4, i13, z5, str3);
            case 3:
                int A4 = VersionedParcelReader.A(parcel);
                long j = 0;
                long j2 = 0;
                String str4 = null;
                String str5 = null;
                int i14 = 0;
                int i15 = 0;
                int i16 = 0;
                int i17 = 0;
                int i18 = -1;
                while (parcel.dataPosition() < A4) {
                    int readInt4 = parcel.readInt();
                    switch (VersionedParcelReader.x(readInt4)) {
                        case 1:
                            i14 = VersionedParcelReader.y(parcel, readInt4);
                            break;
                        case 2:
                            i15 = VersionedParcelReader.y(parcel, readInt4);
                            break;
                        case 3:
                            i16 = VersionedParcelReader.y(parcel, readInt4);
                            break;
                        case 4:
                            j = VersionedParcelReader.B(parcel, readInt4);
                            break;
                        case 5:
                            j2 = VersionedParcelReader.B(parcel, readInt4);
                            break;
                        case 6:
                            str4 = VersionedParcelReader.F(parcel, readInt4);
                            break;
                        case 7:
                            str5 = VersionedParcelReader.F(parcel, readInt4);
                            break;
                        case 8:
                            i17 = VersionedParcelReader.y(parcel, readInt4);
                            break;
                        case 9:
                            i18 = VersionedParcelReader.y(parcel, readInt4);
                            break;
                        default:
                            VersionedParcelReader.K(parcel, readInt4);
                            break;
                    }
                }
                VersionedParcelReader.I(parcel, A4);
                return new AccountAccessorParcel(i14, i15, i16, j, j2, str4, str5, i17, i18);
            case 4:
                int A5 = VersionedParcelReader.A(parcel);
                GoogleSignInAccount googleSignInAccount = null;
                int i19 = 0;
                while (parcel.dataPosition() < A5) {
                    int readInt5 = parcel.readInt();
                    switch (VersionedParcelReader.x(readInt5)) {
                        case 1:
                            i8 = VersionedParcelReader.y(parcel, readInt5);
                            break;
                        case 2:
                            account = (Account) VersionedParcelReader.E(parcel, readInt5, Account.CREATOR);
                            break;
                        case 3:
                            i19 = VersionedParcelReader.y(parcel, readInt5);
                            break;
                        case 4:
                            googleSignInAccount = (GoogleSignInAccount) VersionedParcelReader.E(parcel, readInt5, GoogleSignInAccount.CREATOR);
                            break;
                        default:
                            VersionedParcelReader.K(parcel, readInt5);
                            break;
                    }
                }
                VersionedParcelReader.I(parcel, A5);
                return new SignInConnectionParcel(i8, account, i19, googleSignInAccount);
            case 5:
                int A6 = VersionedParcelReader.A(parcel);
                IBinder iBinder2 = null;
                ConnectionResultCodes bizVar2 = null;
                int i20 = 0;
                boolean z6 = false;
                boolean z7 = false;
                while (parcel.dataPosition() < A6) {
                    int readInt6 = parcel.readInt();
                    switch (VersionedParcelReader.x(readInt6)) {
                        case 1:
                            i20 = VersionedParcelReader.y(parcel, readInt6);
                            break;
                        case 2:
                            iBinder2 = VersionedParcelReader.D(parcel, readInt6);
                            break;
                        case 3:
                            bizVar2 = (ConnectionResultCodes) VersionedParcelReader.E(parcel, readInt6, ConnectionResultCodes.CREATOR);
                            break;
                        case 4:
                            z6 = VersionedParcelReader.L(parcel, readInt6);
                            break;
                        case 5:
                            z7 = VersionedParcelReader.L(parcel, readInt6);
                            break;
                        default:
                            VersionedParcelReader.K(parcel, readInt6);
                            break;
                    }
                }
                VersionedParcelReader.I(parcel, A6);
                return new AccountAccessorResultParcel(i20, iBinder2, bizVar2, z6, z7);
            case 6:
                int A7 = VersionedParcelReader.A(parcel);
                int i21 = 0;
                boolean z8 = false;
                boolean z9 = false;
                int i22 = 0;
                int i23 = 0;
                while (parcel.dataPosition() < A7) {
                    int readInt7 = parcel.readInt();
                    switch (VersionedParcelReader.x(readInt7)) {
                        case 1:
                            i21 = VersionedParcelReader.y(parcel, readInt7);
                            break;
                        case 2:
                            z8 = VersionedParcelReader.L(parcel, readInt7);
                            break;
                        case 3:
                            z9 = VersionedParcelReader.L(parcel, readInt7);
                            break;
                        case 4:
                            i22 = VersionedParcelReader.y(parcel, readInt7);
                            break;
                        case 5:
                            i23 = VersionedParcelReader.y(parcel, readInt7);
                            break;
                        default:
                            VersionedParcelReader.K(parcel, readInt7);
                            break;
                    }
                }
                VersionedParcelReader.I(parcel, A7);
                return new CertDataParcel(i21, z8, z9, i22, i23);
            case 7:
                int A8 = VersionedParcelReader.A(parcel);
                while (parcel.dataPosition() < A8) {
                    int readInt8 = parcel.readInt();
                    switch (VersionedParcelReader.x(readInt8)) {
                        case 1:
                            i7 = VersionedParcelReader.y(parcel, readInt8);
                            break;
                        case 2:
                            arrayList3 = VersionedParcelReader.H(parcel, readInt8, AccountAccessorParcel.CREATOR);
                            break;
                        default:
                            VersionedParcelReader.K(parcel, readInt8);
                            break;
                    }
                }
                VersionedParcelReader.I(parcel, A8);
                return new GmsInternalParcel(i7, arrayList3);
            case 8:
                int A9 = VersionedParcelReader.A(parcel);
                String[] strArr = null;
                while (parcel.dataPosition() < A9) {
                    int readInt9 = parcel.readInt();
                    switch (VersionedParcelReader.x(readInt9)) {
                        case 2:
                            i6 = VersionedParcelReader.y(parcel, readInt9);
                            break;
                        case 3:
                            bonVarArr = (PhenotypeFlagValueParcel[]) VersionedParcelReader.O(parcel, readInt9, PhenotypeFlagValueParcel.CREATOR);
                            break;
                        case 4:
                            strArr = VersionedParcelReader.P(parcel, readInt9);
                            break;
                        default:
                            VersionedParcelReader.K(parcel, readInt9);
                            break;
                    }
                }
                VersionedParcelReader.I(parcel, A9);
                return new PhenotypeRegistrationParcel(i6, bonVarArr, strArr);
            case 9:
                int A10 = VersionedParcelReader.A(parcel);
                long j3 = 0;
                String str6 = null;
                String str7 = null;
                PhenotypeRegistrationParcel[] boiVarArr = null;
                byte[] bArr2 = null;
                boolean z10 = false;
                while (parcel.dataPosition() < A10) {
                    int readInt10 = parcel.readInt();
                    switch (VersionedParcelReader.x(readInt10)) {
                        case 2:
                            str6 = VersionedParcelReader.F(parcel, readInt10);
                            break;
                        case 3:
                            str7 = VersionedParcelReader.F(parcel, readInt10);
                            break;
                        case 4:
                            boiVarArr = (PhenotypeRegistrationParcel[]) VersionedParcelReader.O(parcel, readInt10, PhenotypeRegistrationParcel.CREATOR);
                            break;
                        case 5:
                            z10 = VersionedParcelReader.L(parcel, readInt10);
                            break;
                        case 6:
                            bArr2 = VersionedParcelReader.M(parcel, readInt10);
                            break;
                        case 7:
                            j3 = VersionedParcelReader.B(parcel, readInt10);
                            break;
                        default:
                            VersionedParcelReader.K(parcel, readInt10);
                            break;
                    }
                }
                VersionedParcelReader.I(parcel, A10);
                return new PhenotypeCommitParcel(str6, str7, boiVarArr, z10, bArr2, j3);
            case 10:
                int A11 = VersionedParcelReader.A(parcel);
                while (parcel.dataPosition() < A11) {
                    int readInt11 = parcel.readInt();
                    switch (VersionedParcelReader.x(readInt11)) {
                        case 2:
                            bArr = VersionedParcelReader.M(parcel, readInt11);
                            break;
                        default:
                            VersionedParcelReader.K(parcel, readInt11);
                            break;
                    }
                }
                VersionedParcelReader.I(parcel, A11);
                return new PhenotypeTokenParcel(bArr);
            case 11:
                int A12 = VersionedParcelReader.A(parcel);
                String str8 = null;
                byte[] bArr3 = null;
                byte[][] bArr4 = null;
                byte[][] bArr5 = null;
                byte[][] bArr6 = null;
                byte[][] bArr7 = null;
                int[] iArr3 = null;
                byte[][] bArr8 = null;
                int[] iArr4 = null;
                while (parcel.dataPosition() < A12) {
                    int readInt12 = parcel.readInt();
                    switch (VersionedParcelReader.x(readInt12)) {
                        case 2:
                            str8 = VersionedParcelReader.F(parcel, readInt12);
                            break;
                        case 3:
                            bArr3 = VersionedParcelReader.M(parcel, readInt12);
                            break;
                        case 4:
                            bArr4 = VersionedParcelReader.Q(parcel, readInt12);
                            break;
                        case 5:
                            bArr5 = VersionedParcelReader.Q(parcel, readInt12);
                            break;
                        case 6:
                            bArr6 = VersionedParcelReader.Q(parcel, readInt12);
                            break;
                        case 7:
                            bArr7 = VersionedParcelReader.Q(parcel, readInt12);
                            break;
                        case 8:
                            iArr3 = VersionedParcelReader.N(parcel, readInt12);
                            break;
                        case 9:
                            bArr8 = VersionedParcelReader.Q(parcel, readInt12);
                            break;
                        case 10:
                            iArr4 = VersionedParcelReader.N(parcel, readInt12);
                            break;
                        default:
                            VersionedParcelReader.K(parcel, readInt12);
                            break;
                    }
                }
                VersionedParcelReader.I(parcel, A12);
                return new ExperimentTokensParcel(str8, bArr3, bArr4, bArr5, bArr6, bArr7, iArr3, bArr8, iArr4);
            case 12:
                int A13 = VersionedParcelReader.A(parcel);
                long j4 = 0;
                String str9 = null;
                String str10 = null;
                byte[] bArr9 = null;
                double d = 0.0d;
                boolean z11 = false;
                int i24 = 0;
                int i25 = 0;
                while (parcel.dataPosition() < A13) {
                    int readInt13 = parcel.readInt();
                    switch (VersionedParcelReader.x(readInt13)) {
                        case 2:
                            str9 = VersionedParcelReader.F(parcel, readInt13);
                            break;
                        case 3:
                            j4 = VersionedParcelReader.B(parcel, readInt13);
                            break;
                        case 4:
                            z11 = VersionedParcelReader.L(parcel, readInt13);
                            break;
                        case 5:
                            VersionedParcelReader.J(parcel, readInt13, 8);
                            d = parcel.readDouble();
                            break;
                        case 6:
                            str10 = VersionedParcelReader.F(parcel, readInt13);
                            break;
                        case 7:
                            bArr9 = VersionedParcelReader.M(parcel, readInt13);
                            break;
                        case 8:
                            i24 = VersionedParcelReader.y(parcel, readInt13);
                            break;
                        case 9:
                            i25 = VersionedParcelReader.y(parcel, readInt13);
                            break;
                        default:
                            VersionedParcelReader.K(parcel, readInt13);
                            break;
                    }
                }
                VersionedParcelReader.I(parcel, A13);
                return new PhenotypeFlagValueParcel(str9, j4, z11, d, str10, bArr9, i24, i25);
            case 13:
                int A14 = VersionedParcelReader.A(parcel);
                String str11 = null;
                PhenotypeFlagValueParcel bonVar = null;
                while (parcel.dataPosition() < A14) {
                    int readInt14 = parcel.readInt();
                    switch (VersionedParcelReader.x(readInt14)) {
                        case 2:
                            str = VersionedParcelReader.F(parcel, readInt14);
                            break;
                        case 3:
                            str11 = VersionedParcelReader.F(parcel, readInt14);
                            break;
                        case 4:
                            bonVar = (PhenotypeFlagValueParcel) VersionedParcelReader.E(parcel, readInt14, PhenotypeFlagValueParcel.CREATOR);
                            break;
                        case 5:
                            z = VersionedParcelReader.L(parcel, readInt14);
                            break;
                        default:
                            VersionedParcelReader.K(parcel, readInt14);
                            break;
                    }
                }
                VersionedParcelReader.I(parcel, A14);
                return new PhenotypeSyncParcel(str, str11, bonVar, z);
            case 14:
                int A15 = VersionedParcelReader.A(parcel);
                while (parcel.dataPosition() < A15) {
                    int readInt15 = parcel.readInt();
                    switch (VersionedParcelReader.x(readInt15)) {
                        case 2:
                            arrayList2 = VersionedParcelReader.H(parcel, readInt15, PhenotypeSyncParcel.CREATOR);
                            break;
                        default:
                            VersionedParcelReader.K(parcel, readInt15);
                            break;
                    }
                }
                VersionedParcelReader.I(parcel, A15);
                return new PhenotypeConfigParcel(arrayList2);
            case 15:
                int A16 = VersionedParcelReader.A(parcel);
                int i26 = 0;
                while (parcel.dataPosition() < A16) {
                    int readInt16 = parcel.readInt();
                    switch (VersionedParcelReader.x(readInt16)) {
                        case 1:
                            i5 = VersionedParcelReader.y(parcel, readInt16);
                            break;
                        case 2:
                            i26 = VersionedParcelReader.y(parcel, readInt16);
                            break;
                        default:
                            VersionedParcelReader.K(parcel, readInt16);
                            break;
                    }
                }
                VersionedParcelReader.I(parcel, A16);
                return new PhenotypeSnapshotParcel(i5, i26);
            case 16:
                int A17 = VersionedParcelReader.A(parcel);
                int i27 = 0;
                while (parcel.dataPosition() < A17) {
                    int readInt17 = parcel.readInt();
                    switch (VersionedParcelReader.x(readInt17)) {
                        case 1:
                            i4 = VersionedParcelReader.y(parcel, readInt17);
                            break;
                        case 2:
                            i27 = VersionedParcelReader.y(parcel, readInt17);
                            break;
                        case 3:
                            intent = (Intent) VersionedParcelReader.E(parcel, readInt17, Intent.CREATOR);
                            break;
                        default:
                            VersionedParcelReader.K(parcel, readInt17);
                            break;
                    }
                }
                VersionedParcelReader.I(parcel, A17);
                return new SignInStatusParcel(i4, i27, intent);
            case 17:
                int A18 = VersionedParcelReader.A(parcel);
                String str12 = null;
                while (parcel.dataPosition() < A18) {
                    int readInt18 = parcel.readInt();
                    switch (VersionedParcelReader.x(readInt18)) {
                        case 1:
                            arrayList = VersionedParcelReader.G(parcel, readInt18);
                            break;
                        case 2:
                            str12 = VersionedParcelReader.F(parcel, readInt18);
                            break;
                        default:
                            VersionedParcelReader.K(parcel, readInt18);
                            break;
                    }
                }
                VersionedParcelReader.I(parcel, A18);
                return new SignInAccountParcel(arrayList, str12);
            case 18:
                int A19 = VersionedParcelReader.A(parcel);
                while (parcel.dataPosition() < A19) {
                    int readInt19 = parcel.readInt();
                    switch (VersionedParcelReader.x(readInt19)) {
                        case 1:
                            i3 = VersionedParcelReader.y(parcel, readInt19);
                            break;
                        case 2:
                            bnnVar = (SignInConnectionParcel) VersionedParcelReader.E(parcel, readInt19, SignInConnectionParcel.CREATOR);
                            break;
                        default:
                            VersionedParcelReader.K(parcel, readInt19);
                            break;
                    }
                }
                VersionedParcelReader.I(parcel, A19);
                return new SignInResultParcel(i3, bnnVar);
            case 19:
                int A20 = VersionedParcelReader.A(parcel);
                AccountAccessorResultParcel bnoVar = null;
                while (parcel.dataPosition() < A20) {
                    int readInt20 = parcel.readInt();
                    switch (VersionedParcelReader.x(readInt20)) {
                        case 1:
                            i2 = VersionedParcelReader.y(parcel, readInt20);
                            break;
                        case 2:
                            bizVar = (ConnectionResultCodes) VersionedParcelReader.E(parcel, readInt20, ConnectionResultCodes.CREATOR);
                            break;
                        case 3:
                            bnoVar = (AccountAccessorResultParcel) VersionedParcelReader.E(parcel, readInt20, AccountAccessorResultParcel.CREATOR);
                            break;
                        default:
                            VersionedParcelReader.K(parcel, readInt20);
                            break;
                    }
                }
                VersionedParcelReader.I(parcel, A20);
                return new SignInResponseParcel(i2, bizVar, bnoVar);
            default:
                return new ConfigPackageVersion(parcel);
        }
    }
}
