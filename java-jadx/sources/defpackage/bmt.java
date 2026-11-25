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
public final class bmt implements Parcelable.Creator {
    private final /* synthetic */ int a;

    public bmt(int i) {
        this.a = i;
    }

    static void a(bmv bmvVar, Parcel parcel, int i) {
        int g = io.g(parcel);
        io.k(parcel, 1, bmvVar.a);
        io.k(parcel, 2, bmvVar.b);
        io.k(parcel, 3, bmvVar.c);
        io.s(parcel, 4, bmvVar.d);
        io.p(parcel, 5, bmvVar.e);
        io.v(parcel, 6, bmvVar.f, i);
        io.m(parcel, 7, bmvVar.g);
        io.r(parcel, 8, bmvVar.h, i);
        io.v(parcel, 10, bmvVar.i, i);
        io.v(parcel, 11, bmvVar.j, i);
        io.i(parcel, 12, bmvVar.k);
        io.k(parcel, 13, bmvVar.l);
        io.i(parcel, 14, bmvVar.m);
        io.s(parcel, 15, bmvVar.n);
        io.h(parcel, g);
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
                return new bms[i];
            case 1:
                return new bmr[i];
            case 2:
                return new bmv[i];
            case 3:
                return new bnm[i];
            case 4:
                return new bnn[i];
            case 5:
                return new bno[i];
            case 6:
                return new bnq[i];
            case 7:
                return new bnr[i];
            case 8:
                return new boi[i];
            case 9:
                return new boj[i];
            case 10:
                return new bok[i];
            case 11:
                return new bol[i];
            case 12:
                return new bon[i];
            case 13:
                return new boo[i];
            case 14:
                return new bop[i];
            case 15:
                return new boq[i];
            case 16:
                return new bqp[i];
            case 17:
                return new bqs[i];
            case 18:
                return new bqu[i];
            case 19:
                return new bqv[i];
            default:
                return new chc[i];
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
        biz bizVar = null;
        bnn bnnVar = null;
        ArrayList arrayList = null;
        Intent intent = null;
        ArrayList arrayList2 = null;
        String str = null;
        byte[] bArr = null;
        bon[] bonVarArr = null;
        ArrayList arrayList3 = null;
        Account account = null;
        switch (this.a) {
            case 0:
                int A = io.A(parcel);
                bnq bnqVar = null;
                int[] iArr = null;
                int[] iArr2 = null;
                boolean z2 = false;
                boolean z3 = false;
                int i9 = 0;
                while (parcel.dataPosition() < A) {
                    int readInt = parcel.readInt();
                    switch (io.x(readInt)) {
                        case 1:
                            bnqVar = (bnq) io.E(parcel, readInt, bnq.CREATOR);
                            break;
                        case 2:
                            z2 = io.L(parcel, readInt);
                            break;
                        case 3:
                            z3 = io.L(parcel, readInt);
                            break;
                        case 4:
                            iArr = io.N(parcel, readInt);
                            break;
                        case 5:
                            i9 = io.y(parcel, readInt);
                            break;
                        case 6:
                            iArr2 = io.N(parcel, readInt);
                            break;
                        default:
                            io.K(parcel, readInt);
                            break;
                    }
                }
                io.I(parcel, A);
                return new bms(bnqVar, z2, z3, iArr, i9, iArr2);
            case 1:
                int A2 = io.A(parcel);
                bjb[] bjbVarArr = null;
                bms bmsVar = null;
                while (parcel.dataPosition() < A2) {
                    int readInt2 = parcel.readInt();
                    switch (io.x(readInt2)) {
                        case 1:
                            bundle = io.C(parcel, readInt2);
                            break;
                        case 2:
                            bjbVarArr = (bjb[]) io.O(parcel, readInt2, bjb.CREATOR);
                            break;
                        case 3:
                            i = io.y(parcel, readInt2);
                            break;
                        case 4:
                            bmsVar = (bms) io.E(parcel, readInt2, bms.CREATOR);
                            break;
                        default:
                            io.K(parcel, readInt2);
                            break;
                    }
                }
                io.I(parcel, A2);
                return new bmr(bundle, bjbVarArr, i, bmsVar);
            case 2:
                int A3 = io.A(parcel);
                String str2 = null;
                IBinder iBinder = null;
                Scope[] scopeArr = null;
                Bundle bundle2 = null;
                Account account2 = null;
                bjb[] bjbVarArr2 = null;
                bjb[] bjbVarArr3 = null;
                String str3 = null;
                int i10 = 0;
                int i11 = 0;
                int i12 = 0;
                boolean z4 = false;
                int i13 = 0;
                boolean z5 = false;
                while (parcel.dataPosition() < A3) {
                    int readInt3 = parcel.readInt();
                    switch (io.x(readInt3)) {
                        case 1:
                            i10 = io.y(parcel, readInt3);
                            break;
                        case 2:
                            i11 = io.y(parcel, readInt3);
                            break;
                        case 3:
                            i12 = io.y(parcel, readInt3);
                            break;
                        case 4:
                            str2 = io.F(parcel, readInt3);
                            break;
                        case 5:
                            iBinder = io.D(parcel, readInt3);
                            break;
                        case 6:
                            scopeArr = (Scope[]) io.O(parcel, readInt3, Scope.CREATOR);
                            break;
                        case 7:
                            bundle2 = io.C(parcel, readInt3);
                            break;
                        case 8:
                            account2 = (Account) io.E(parcel, readInt3, Account.CREATOR);
                            break;
                        case 9:
                        default:
                            io.K(parcel, readInt3);
                            break;
                        case 10:
                            bjbVarArr2 = (bjb[]) io.O(parcel, readInt3, bjb.CREATOR);
                            break;
                        case 11:
                            bjbVarArr3 = (bjb[]) io.O(parcel, readInt3, bjb.CREATOR);
                            break;
                        case 12:
                            z4 = io.L(parcel, readInt3);
                            break;
                        case 13:
                            i13 = io.y(parcel, readInt3);
                            break;
                        case 14:
                            z5 = io.L(parcel, readInt3);
                            break;
                        case 15:
                            str3 = io.F(parcel, readInt3);
                            break;
                    }
                }
                io.I(parcel, A3);
                return new bmv(i10, i11, i12, str2, iBinder, scopeArr, bundle2, account2, bjbVarArr2, bjbVarArr3, z4, i13, z5, str3);
            case 3:
                int A4 = io.A(parcel);
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
                    switch (io.x(readInt4)) {
                        case 1:
                            i14 = io.y(parcel, readInt4);
                            break;
                        case 2:
                            i15 = io.y(parcel, readInt4);
                            break;
                        case 3:
                            i16 = io.y(parcel, readInt4);
                            break;
                        case 4:
                            j = io.B(parcel, readInt4);
                            break;
                        case 5:
                            j2 = io.B(parcel, readInt4);
                            break;
                        case 6:
                            str4 = io.F(parcel, readInt4);
                            break;
                        case 7:
                            str5 = io.F(parcel, readInt4);
                            break;
                        case 8:
                            i17 = io.y(parcel, readInt4);
                            break;
                        case 9:
                            i18 = io.y(parcel, readInt4);
                            break;
                        default:
                            io.K(parcel, readInt4);
                            break;
                    }
                }
                io.I(parcel, A4);
                return new bnm(i14, i15, i16, j, j2, str4, str5, i17, i18);
            case 4:
                int A5 = io.A(parcel);
                GoogleSignInAccount googleSignInAccount = null;
                int i19 = 0;
                while (parcel.dataPosition() < A5) {
                    int readInt5 = parcel.readInt();
                    switch (io.x(readInt5)) {
                        case 1:
                            i8 = io.y(parcel, readInt5);
                            break;
                        case 2:
                            account = (Account) io.E(parcel, readInt5, Account.CREATOR);
                            break;
                        case 3:
                            i19 = io.y(parcel, readInt5);
                            break;
                        case 4:
                            googleSignInAccount = (GoogleSignInAccount) io.E(parcel, readInt5, GoogleSignInAccount.CREATOR);
                            break;
                        default:
                            io.K(parcel, readInt5);
                            break;
                    }
                }
                io.I(parcel, A5);
                return new bnn(i8, account, i19, googleSignInAccount);
            case 5:
                int A6 = io.A(parcel);
                IBinder iBinder2 = null;
                biz bizVar2 = null;
                int i20 = 0;
                boolean z6 = false;
                boolean z7 = false;
                while (parcel.dataPosition() < A6) {
                    int readInt6 = parcel.readInt();
                    switch (io.x(readInt6)) {
                        case 1:
                            i20 = io.y(parcel, readInt6);
                            break;
                        case 2:
                            iBinder2 = io.D(parcel, readInt6);
                            break;
                        case 3:
                            bizVar2 = (biz) io.E(parcel, readInt6, biz.CREATOR);
                            break;
                        case 4:
                            z6 = io.L(parcel, readInt6);
                            break;
                        case 5:
                            z7 = io.L(parcel, readInt6);
                            break;
                        default:
                            io.K(parcel, readInt6);
                            break;
                    }
                }
                io.I(parcel, A6);
                return new bno(i20, iBinder2, bizVar2, z6, z7);
            case 6:
                int A7 = io.A(parcel);
                int i21 = 0;
                boolean z8 = false;
                boolean z9 = false;
                int i22 = 0;
                int i23 = 0;
                while (parcel.dataPosition() < A7) {
                    int readInt7 = parcel.readInt();
                    switch (io.x(readInt7)) {
                        case 1:
                            i21 = io.y(parcel, readInt7);
                            break;
                        case 2:
                            z8 = io.L(parcel, readInt7);
                            break;
                        case 3:
                            z9 = io.L(parcel, readInt7);
                            break;
                        case 4:
                            i22 = io.y(parcel, readInt7);
                            break;
                        case 5:
                            i23 = io.y(parcel, readInt7);
                            break;
                        default:
                            io.K(parcel, readInt7);
                            break;
                    }
                }
                io.I(parcel, A7);
                return new bnq(i21, z8, z9, i22, i23);
            case 7:
                int A8 = io.A(parcel);
                while (parcel.dataPosition() < A8) {
                    int readInt8 = parcel.readInt();
                    switch (io.x(readInt8)) {
                        case 1:
                            i7 = io.y(parcel, readInt8);
                            break;
                        case 2:
                            arrayList3 = io.H(parcel, readInt8, bnm.CREATOR);
                            break;
                        default:
                            io.K(parcel, readInt8);
                            break;
                    }
                }
                io.I(parcel, A8);
                return new bnr(i7, arrayList3);
            case 8:
                int A9 = io.A(parcel);
                String[] strArr = null;
                while (parcel.dataPosition() < A9) {
                    int readInt9 = parcel.readInt();
                    switch (io.x(readInt9)) {
                        case 2:
                            i6 = io.y(parcel, readInt9);
                            break;
                        case 3:
                            bonVarArr = (bon[]) io.O(parcel, readInt9, bon.CREATOR);
                            break;
                        case 4:
                            strArr = io.P(parcel, readInt9);
                            break;
                        default:
                            io.K(parcel, readInt9);
                            break;
                    }
                }
                io.I(parcel, A9);
                return new boi(i6, bonVarArr, strArr);
            case 9:
                int A10 = io.A(parcel);
                long j3 = 0;
                String str6 = null;
                String str7 = null;
                boi[] boiVarArr = null;
                byte[] bArr2 = null;
                boolean z10 = false;
                while (parcel.dataPosition() < A10) {
                    int readInt10 = parcel.readInt();
                    switch (io.x(readInt10)) {
                        case 2:
                            str6 = io.F(parcel, readInt10);
                            break;
                        case 3:
                            str7 = io.F(parcel, readInt10);
                            break;
                        case 4:
                            boiVarArr = (boi[]) io.O(parcel, readInt10, boi.CREATOR);
                            break;
                        case 5:
                            z10 = io.L(parcel, readInt10);
                            break;
                        case 6:
                            bArr2 = io.M(parcel, readInt10);
                            break;
                        case 7:
                            j3 = io.B(parcel, readInt10);
                            break;
                        default:
                            io.K(parcel, readInt10);
                            break;
                    }
                }
                io.I(parcel, A10);
                return new boj(str6, str7, boiVarArr, z10, bArr2, j3);
            case 10:
                int A11 = io.A(parcel);
                while (parcel.dataPosition() < A11) {
                    int readInt11 = parcel.readInt();
                    switch (io.x(readInt11)) {
                        case 2:
                            bArr = io.M(parcel, readInt11);
                            break;
                        default:
                            io.K(parcel, readInt11);
                            break;
                    }
                }
                io.I(parcel, A11);
                return new bok(bArr);
            case 11:
                int A12 = io.A(parcel);
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
                    switch (io.x(readInt12)) {
                        case 2:
                            str8 = io.F(parcel, readInt12);
                            break;
                        case 3:
                            bArr3 = io.M(parcel, readInt12);
                            break;
                        case 4:
                            bArr4 = io.Q(parcel, readInt12);
                            break;
                        case 5:
                            bArr5 = io.Q(parcel, readInt12);
                            break;
                        case 6:
                            bArr6 = io.Q(parcel, readInt12);
                            break;
                        case 7:
                            bArr7 = io.Q(parcel, readInt12);
                            break;
                        case 8:
                            iArr3 = io.N(parcel, readInt12);
                            break;
                        case 9:
                            bArr8 = io.Q(parcel, readInt12);
                            break;
                        case 10:
                            iArr4 = io.N(parcel, readInt12);
                            break;
                        default:
                            io.K(parcel, readInt12);
                            break;
                    }
                }
                io.I(parcel, A12);
                return new bol(str8, bArr3, bArr4, bArr5, bArr6, bArr7, iArr3, bArr8, iArr4);
            case 12:
                int A13 = io.A(parcel);
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
                    switch (io.x(readInt13)) {
                        case 2:
                            str9 = io.F(parcel, readInt13);
                            break;
                        case 3:
                            j4 = io.B(parcel, readInt13);
                            break;
                        case 4:
                            z11 = io.L(parcel, readInt13);
                            break;
                        case 5:
                            io.J(parcel, readInt13, 8);
                            d = parcel.readDouble();
                            break;
                        case 6:
                            str10 = io.F(parcel, readInt13);
                            break;
                        case 7:
                            bArr9 = io.M(parcel, readInt13);
                            break;
                        case 8:
                            i24 = io.y(parcel, readInt13);
                            break;
                        case 9:
                            i25 = io.y(parcel, readInt13);
                            break;
                        default:
                            io.K(parcel, readInt13);
                            break;
                    }
                }
                io.I(parcel, A13);
                return new bon(str9, j4, z11, d, str10, bArr9, i24, i25);
            case 13:
                int A14 = io.A(parcel);
                String str11 = null;
                bon bonVar = null;
                while (parcel.dataPosition() < A14) {
                    int readInt14 = parcel.readInt();
                    switch (io.x(readInt14)) {
                        case 2:
                            str = io.F(parcel, readInt14);
                            break;
                        case 3:
                            str11 = io.F(parcel, readInt14);
                            break;
                        case 4:
                            bonVar = (bon) io.E(parcel, readInt14, bon.CREATOR);
                            break;
                        case 5:
                            z = io.L(parcel, readInt14);
                            break;
                        default:
                            io.K(parcel, readInt14);
                            break;
                    }
                }
                io.I(parcel, A14);
                return new boo(str, str11, bonVar, z);
            case 14:
                int A15 = io.A(parcel);
                while (parcel.dataPosition() < A15) {
                    int readInt15 = parcel.readInt();
                    switch (io.x(readInt15)) {
                        case 2:
                            arrayList2 = io.H(parcel, readInt15, boo.CREATOR);
                            break;
                        default:
                            io.K(parcel, readInt15);
                            break;
                    }
                }
                io.I(parcel, A15);
                return new bop(arrayList2);
            case 15:
                int A16 = io.A(parcel);
                int i26 = 0;
                while (parcel.dataPosition() < A16) {
                    int readInt16 = parcel.readInt();
                    switch (io.x(readInt16)) {
                        case 1:
                            i5 = io.y(parcel, readInt16);
                            break;
                        case 2:
                            i26 = io.y(parcel, readInt16);
                            break;
                        default:
                            io.K(parcel, readInt16);
                            break;
                    }
                }
                io.I(parcel, A16);
                return new boq(i5, i26);
            case 16:
                int A17 = io.A(parcel);
                int i27 = 0;
                while (parcel.dataPosition() < A17) {
                    int readInt17 = parcel.readInt();
                    switch (io.x(readInt17)) {
                        case 1:
                            i4 = io.y(parcel, readInt17);
                            break;
                        case 2:
                            i27 = io.y(parcel, readInt17);
                            break;
                        case 3:
                            intent = (Intent) io.E(parcel, readInt17, Intent.CREATOR);
                            break;
                        default:
                            io.K(parcel, readInt17);
                            break;
                    }
                }
                io.I(parcel, A17);
                return new bqp(i4, i27, intent);
            case 17:
                int A18 = io.A(parcel);
                String str12 = null;
                while (parcel.dataPosition() < A18) {
                    int readInt18 = parcel.readInt();
                    switch (io.x(readInt18)) {
                        case 1:
                            arrayList = io.G(parcel, readInt18);
                            break;
                        case 2:
                            str12 = io.F(parcel, readInt18);
                            break;
                        default:
                            io.K(parcel, readInt18);
                            break;
                    }
                }
                io.I(parcel, A18);
                return new bqs(arrayList, str12);
            case 18:
                int A19 = io.A(parcel);
                while (parcel.dataPosition() < A19) {
                    int readInt19 = parcel.readInt();
                    switch (io.x(readInt19)) {
                        case 1:
                            i3 = io.y(parcel, readInt19);
                            break;
                        case 2:
                            bnnVar = (bnn) io.E(parcel, readInt19, bnn.CREATOR);
                            break;
                        default:
                            io.K(parcel, readInt19);
                            break;
                    }
                }
                io.I(parcel, A19);
                return new bqu(i3, bnnVar);
            case 19:
                int A20 = io.A(parcel);
                bno bnoVar = null;
                while (parcel.dataPosition() < A20) {
                    int readInt20 = parcel.readInt();
                    switch (io.x(readInt20)) {
                        case 1:
                            i2 = io.y(parcel, readInt20);
                            break;
                        case 2:
                            bizVar = (biz) io.E(parcel, readInt20, biz.CREATOR);
                            break;
                        case 3:
                            bnoVar = (bno) io.E(parcel, readInt20, bno.CREATOR);
                            break;
                        default:
                            io.K(parcel, readInt20);
                            break;
                    }
                }
                io.I(parcel, A20);
                return new bqv(i2, bizVar, bnoVar);
            default:
                return new chc(parcel);
        }
    }
}
