package defpackage;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.ContentInfo;
import android.view.View;
import java.util.ArrayList;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ThreadAndNullChecksUtil {
    public static ContentInfoCompatWrapper a(View view, ContentInfoCompatWrapper gpVar) {
        ContentInfo d = gpVar.a.d();
        ContentInfo performReceiveContent = view.performReceiveContent(ProtoMsgIntStringInt);
        if (performReceiveContent == null) {
            return null;
        }
        return performReceiveContent == d ? gpVar : new ContentInfoCompatWrapper(new ContentInfoCompatStub(performReceiveContent));
    }

    public static String[] b(View view) {
        return view.getReceiveContentMimeTypes();
    }

    /* JADX WARN: Code restructure failed: missing block: B:147:0x0294, code lost:
    
        if (r4.d == r7) goto L168;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0119, code lost:
    
        if (r6.d == r5) goto L63;
     */
    /* JADX WARN: Removed duplicated region for block: B:302:0x0735  */
    /* JADX WARN: Removed duplicated region for block: B:305:0x0742  */
    /* JADX WARN: Removed duplicated region for block: B:308:0x074b  */
    /* JADX WARN: Removed duplicated region for block: B:310:0x0752  */
    /* JADX WARN: Removed duplicated region for block: B:315:0x0761  */
    /* JADX WARN: Removed duplicated region for block: B:322:0x074e  */
    /* JADX WARN: Removed duplicated region for block: B:323:0x0745  */
    /* JADX WARN: Removed duplicated region for block: B:324:0x0737  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void c(ConstraintWidgetContainer vyVar, LinearSystemSolver vnVar, ArrayList arrayList, int i) {
        int i2;
        ConstraintWidgetListHolder[] vvVarArr;
        int i3;
        float f;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        ConstraintWidget vxVar;
        int i4;
        int i5;
        ConstraintWidgetListHolder[] vvVarArr2;
        ConstraintWidgetListHolder vvVar;
        ConstraintWidget vxVar2;
        ConstraintWidget vxVar3;
        ConstraintWidget vxVar4;
        ConstraintWidget vxVar5;
        int i6;
        ConstraintAnchor vwVar;
        ConstraintWidget vxVar6;
        int i7;
        ConstraintAnchor vwVar2;
        SolverVariable vsVar;
        SolverVariable vsVar2;
        ConstraintWidget vxVar7;
        ConstraintWidget vxVar8;
        boolean z5;
        int i8;
        ConstraintWidget vxVar9;
        ConstraintAnchor vwVar3;
        SolverVariable vsVar3;
        SolverVariable vsVar4;
        ConstraintWidget vxVar10;
        ConstraintAnchor vwVar4;
        SolverVariable vsVar5;
        int i9;
        ConstraintWidget vxVar11;
        boolean z6;
        ConstraintWidget vxVar12;
        ArrayList arrayList2;
        ConstraintWidgetListHolder vvVar2;
        int i10;
        ConstraintWidget vxVar13;
        ConstraintWidget vxVar14;
        ConstraintWidget vxVar15;
        ConstraintWidgetListHolder[] vvVarArr3;
        ConstraintWidget vxVar16;
        ConstraintWidget vxVar17;
        ConstraintWidgetContainer vyVar2 = vyVar;
        ArrayList arrayList3 = arrayList;
        int i11 = 2;
        if (NavInstructionTypeEnum == 0) {
            i2 = vyVar2.at;
            vvVarArr = vyVar2.aw;
            i3 = 0;
        } else {
            i2 = vyVar2.au;
            vvVarArr = vyVar2.av;
            i3 = 2;
        }
        int i12 = 0;
        while (i12 < i2) {
            ConstraintWidgetListHolder vvVar3 = vvVarArr[i12];
            int i13 = 8;
            if (!vvVar3.t) {
                int i14 = vvVar3.o;
                int i15 = i14 + i14;
                ConstraintWidget vxVar18 = vvVar3.a;
                ConstraintWidget vxVar19 = vxVar18;
                boolean z7 = false;
                while (!z7) {
                    vvVar3.i++;
                    ConstraintWidget[] vxVarArr = vxVar18.am;
                    int i16 = vvVar3.o;
                    vxVarArr[i16] = null;
                    vxVar18.al[i16] = null;
                    if (vxVar18.ag != i13) {
                        vvVar3.l++;
                        if (vxVar18.M(i16) != 3) {
                            vvVar3.m += vvVar3.o == 0 ? vxVar18.j() : vxVar18.h();
                        }
                        int b = vvVar3.m + vxVar18.R[i15].b();
                        vvVar3.m = b;
                        int i17 = i15 + 1;
                        vvVar3.m = b + vxVar18.R[i17].b();
                        int b2 = vvVar3.n + vxVar18.R[i15].b();
                        vvVar3.n = b2;
                        vvVar3.n = b2 + vxVar18.R[i17].b();
                        if (vvVar3.b == null) {
                            vvVar3.b = vxVar18;
                        }
                        vvVar3.d = vxVar18;
                        int[] iArr = vxVar18.ap;
                        int i18 = vvVar3.o;
                        if (iArr[i18] == 3) {
                            int i19 = vxVar18.u[i18];
                            if (i19 != 0 && i19 != 3) {
                                if (i19 == i11) {
                                    i19 = 2;
                                }
                                int i20 = vvVar3.o;
                            }
                            vvVar3.j++;
                            float f2 = vxVar18.ak[i18];
                            if (f2 > 0.0f) {
                                vvVar3.k += f2;
                            }
                            if (vxVar18.ag != 8 && (i19 == 0 || i19 == 3)) {
                                if (f2 < 0.0f) {
                                    vvVar3.q = true;
                                } else {
                                    vvVar3.r = true;
                                }
                                if (vvVar3.h == null) {
                                    vvVar3.h = new ArrayList();
                                }
                                vvVar3.h.add(vxVar18);
                            }
                            if (vvVar3.f == null) {
                                vvVar3.f = vxVar18;
                            }
                            ConstraintWidget vxVar20 = vvVar3.g;
                            if (vxVar20 != null) {
                                vxVar20.al[vvVar3.o] = vxVar18;
                            }
                            vvVar3.g = vxVar18;
                            int i202 = vvVar3.o;
                        }
                    }
                    if (vxVar19 != vxVar18) {
                        vxVar19.am[vvVar3.o] = vxVar18;
                    }
                    ConstraintAnchor vwVar5 = vxVar18.R[i15 + 1].e;
                    if (vwVar5 != null) {
                        vxVar17 = vwVar5.d;
                        ConstraintAnchor vwVar6 = vxVar17.R[i15].e;
                        if (vwVar6 != null) {
                        }
                    }
                    vxVar17 = null;
                    boolean z8 = vxVar17 == null;
                    if (vxVar17 == null) {
                        vxVar17 = vxVar18;
                    }
                    z7 = z8;
                    i13 = 8;
                    i11 = 2;
                    vxVar19 = vxVar18;
                    vxVar18 = vxVar17;
                }
                ConstraintWidget vxVar21 = vvVar3.b;
                if (vxVar21 != null) {
                    vvVar3.m -= vxVar21.R[i15].b();
                }
                ConstraintWidget vxVar22 = vvVar3.d;
                if (vxVar22 != null) {
                    vvVar3.m -= vxVar22.R[i15 + 1].b();
                }
                vvVar3.c = vxVar18;
                if (vvVar3.o == 0 && vvVar3.p) {
                    vvVar3.e = vvVar3.c;
                } else {
                    vvVar3.e = vvVar3.a;
                }
                vvVar3.s = vvVar3.r && vvVar3.q;
            }
            vvVar3.t = true;
            if (arrayList3 == null || arrayList3.contains(vvVar3.a)) {
                ConstraintWidget vxVar23 = vvVar3.a;
                ConstraintWidget vxVar24 = vvVar3.c;
                ConstraintWidget vxVar25 = vvVar3.b;
                ConstraintWidget vxVar26 = vvVar3.d;
                ConstraintWidget vxVar27 = vvVar3.e;
                float f3 = vvVar3.k;
                ConstraintWidget vxVar28 = vvVar3.f;
                ConstraintWidget vxVar29 = vvVar3.g;
                int i21 = vyVar2.ap[i];
                if (NavInstructionTypeEnum == 0) {
                    int i22 = vxVar27.ai;
                    boolean z9 = i22 == 0;
                    boolean z10 = i22 == 1;
                    z = i22 == 2;
                    vxVar = vxVar23;
                    z2 = z10;
                    z4 = z9;
                    f = f3;
                    z3 = false;
                } else {
                    int i23 = vxVar27.aj;
                    boolean z11 = i23 == 0;
                    f = f3;
                    boolean z12 = i23 == 1;
                    z = i23 == 2;
                    z2 = z12;
                    z3 = false;
                    z4 = z11;
                    vxVar = vxVar23;
                }
                while (true) {
                    i4 = i12;
                    if (z3) {
                        break;
                    }
                    ConstraintAnchor vwVar7 = vxVar.R[i3];
                    int i24 = true != z ? 4 : 1;
                    int b3 = vwVar7.b();
                    int i25 = i2;
                    boolean z13 = vxVar.ap[i] == 3 && vxVar.u[i] == 0;
                    ConstraintAnchor vwVar8 = vwVar7.e;
                    if (vwVar8 != null && vxVar != vxVar23) {
                        b3 += vwVar8.b();
                    }
                    if (IcuMessageFormat && vxVar != vxVar23 && vxVar != vxVar25) {
                        i24 = 8;
                    }
                    ConstraintAnchor vwVar9 = vwVar7.e;
                    if (vwVar9 != null) {
                        if (vxVar == vxVar25) {
                            vvVarArr3 = vvVarArr;
                            vxVar15 = vxVar27;
                            vnVar.g(vwVar7.h, vwVar9.h, b3, 6);
                        } else {
                            vxVar15 = vxVar27;
                            vvVarArr3 = vvVarArr;
                            vnVar.g(vwVar7.h, vwVar9.h, b3, 8);
                        }
                        vnVar.m(vwVar7.h, vwVar7.e.h, b3, (!z13 || z) ? i24 : 5);
                    } else {
                        vxVar15 = vxVar27;
                        vvVarArr3 = vvVarArr;
                    }
                    if (i21 == 2) {
                        if (vxVar.ag != 8 && vxVar.ap[i] == 3) {
                            ConstraintAnchor[] vwVarArr = vxVar.R;
                            vnVar.g(vwVarArr[i3 + 1].h, vwVarArr[i3].h, 0, 5);
                        }
                        vnVar.g(vxVar.R[i3].h, vyVar2.R[i3].h, 0, 8);
                    }
                    ConstraintAnchor vwVar10 = vxVar.R[i3 + 1].e;
                    if (vwVar10 != null) {
                        vxVar16 = vwVar10.d;
                        ConstraintAnchor vwVar11 = vxVar16.R[i3].e;
                        if (vwVar11 != null) {
                        }
                    }
                    vxVar16 = null;
                    z3 = vxVar16 == null;
                    if (vxVar16 != null) {
                        vxVar = vxVar16;
                    }
                    i12 = i4;
                    i2 = i25;
                    vvVarArr = vvVarArr3;
                    vxVar27 = vxVar15;
                }
                ConstraintWidget vxVar30 = vxVar27;
                i5 = i2;
                vvVarArr2 = vvVarArr;
                if (vxVar26 != null) {
                    int i26 = i3 + 1;
                    if (vxVar24.R[i26].e != null) {
                        ConstraintAnchor vwVar12 = vxVar26.R[i26];
                        if (vxVar26.ap[i] == 3 && vxVar26.u[i] == 0 && !z) {
                            ConstraintAnchor vwVar13 = vwVar12.e;
                            if (vwVar13.d == vyVar2) {
                                vnVar.m(vwVar12.h, vwVar13.h, -vwVar12.b(), 5);
                                vnVar.h(vwVar12.h, vxVar24.R[i26].e.h, -vwVar12.b(), 6);
                            }
                        }
                        if (IcuMessageFormat) {
                            ConstraintAnchor vwVar14 = vwVar12.e;
                            if (vwVar14.d == vyVar2) {
                                vnVar.m(vwVar12.h, vwVar14.h, -vwVar12.b(), 4);
                            }
                        }
                        vnVar.h(vwVar12.h, vxVar24.R[i26].e.h, -vwVar12.b(), 6);
                    }
                }
                if (i21 == 2) {
                    int i27 = i3 + 1;
                    SolverVariable vsVar6 = vyVar2.R[i27].h;
                    ConstraintAnchor vwVar15 = vxVar24.R[i27];
                    vnVar.g(vsVar6, vwVar15.h, vwVar15.b(), 8);
                }
                ArrayList arrayList4 = vvVar3.h;
                if (arrayList4 != null) {
                    int size = arrayList4.size();
                    if (size > 1) {
                        float f4 = (!vvVar3.q || vvVar3.s) ? f : vvVar3.j;
                        ConstraintWidget vxVar31 = null;
                        int i28 = 0;
                        float f5 = 0.0f;
                        while (i28 < size) {
                            ConstraintWidget vxVar32 = (ConstraintWidget) arrayList4.get(i28);
                            float f6 = vxVar32.ak[i];
                            if (f6 >= 0.0f) {
                                arrayList2 = arrayList4;
                            } else if (vvVar3.s) {
                                ConstraintAnchor[] vwVarArr2 = vxVar32.R;
                                arrayList2 = arrayList4;
                                vnVar.m(vwVarArr2[i3 + 1].h, vwVarArr2[i3].h, 0, 4);
                                vvVar2 = vvVar3;
                                i10 = size;
                                vxVar14 = vxVar24;
                                i28++;
                                vxVar24 = vxVar14;
                                arrayList4 = arrayList2;
                                size = i10;
                                vvVar3 = vvVar2;
                            } else {
                                arrayList2 = arrayList4;
                                f6 = 1.0f;
                            }
                            if (f6 == 0.0f) {
                                ConstraintAnchor[] vwVarArr3 = vxVar32.R;
                                vnVar.m(vwVarArr3[i3 + 1].h, vwVarArr3[i3].h, 0, 8);
                                vvVar2 = vvVar3;
                                i10 = size;
                                vxVar14 = vxVar24;
                                i28++;
                                vxVar24 = vxVar14;
                                arrayList4 = arrayList2;
                                size = i10;
                                vvVar3 = vvVar2;
                            } else {
                                if (vxVar31 != null) {
                                    ConstraintAnchor[] vwVarArr4 = vxVar31.R;
                                    SolverVariable vsVar7 = vwVarArr4[i3].h;
                                    int i29 = i3 + 1;
                                    SolverVariable vsVar8 = vwVarArr4[i29].h;
                                    ConstraintAnchor[] vwVarArr5 = vxVar32.R;
                                    i10 = size;
                                    SolverVariable vsVar9 = vwVarArr5[i3].h;
                                    SolverVariable vsVar10 = vwVarArr5[i29].h;
                                    vxVar13 = vxVar32;
                                    SolverArrayRow a = vnVar.a();
                                    vvVar2 = vvVar3;
                                    a.b = 0.0f;
                                    vxVar14 = vxVar24;
                                    if (f4 == 0.0f || f5 == f6) {
                                        a.e.g(vsVar7, 1.0f);
                                        a.e.g(vsVar8, -1.0f);
                                        a.e.g(vsVar10, 1.0f);
                                        a.e.g(vsVar9, -1.0f);
                                    } else if (f5 == 0.0f) {
                                        a.e.g(vsVar7, 1.0f);
                                        a.e.g(vsVar8, -1.0f);
                                    } else if (f6 == 0.0f) {
                                        a.e.g(vsVar9, 1.0f);
                                        a.e.g(vsVar10, -1.0f);
                                    } else {
                                        float f7 = (f5 / f4) / (f6 / f4);
                                        a.e.g(vsVar7, 1.0f);
                                        a.e.g(vsVar8, -1.0f);
                                        a.e.g(vsVar10, f7);
                                        a.e.g(vsVar9, -f7);
                                    }
                                    vnVar.e(SingleStringProtoMessage);
                                } else {
                                    vvVar2 = vvVar3;
                                    i10 = size;
                                    vxVar13 = vxVar32;
                                    vxVar14 = vxVar24;
                                }
                                f5 = f6;
                                vxVar31 = vxVar13;
                                i28++;
                                vxVar24 = vxVar14;
                                arrayList4 = arrayList2;
                                size = i10;
                                vvVar3 = vvVar2;
                            }
                        }
                        vvVar = vvVar3;
                        vxVar2 = vxVar24;
                    } else {
                        vvVar = vvVar3;
                        vxVar2 = vxVar24;
                    }
                } else {
                    vvVar = vvVar3;
                    vxVar2 = vxVar24;
                }
                if (vxVar25 == null) {
                    vxVar3 = vxVar26;
                    vxVar4 = vxVar25;
                    vxVar5 = vxVar2;
                    i6 = i4;
                } else if (vxVar25 == vxVar26 || z) {
                    ConstraintAnchor vwVar16 = vxVar23.R[i3];
                    int i30 = i3 + 1;
                    vxVar5 = vxVar2;
                    ConstraintAnchor vwVar17 = vxVar5.R[i30];
                    ConstraintAnchor vwVar18 = vwVar16.e;
                    SolverVariable vsVar11 = vwVar18 != null ? vwVar18.h : null;
                    ConstraintAnchor vwVar19 = vwVar17.e;
                    SolverVariable vsVar12 = vwVar19 != null ? vwVar19.h : null;
                    ConstraintAnchor vwVar20 = vxVar25.R[i3];
                    if (vxVar26 != null) {
                        vwVar17 = vxVar26.R[i30];
                    }
                    if (vsVar11 == null || vsVar12 == null) {
                        vxVar3 = vxVar26;
                        vxVar4 = vxVar25;
                    } else {
                        vxVar3 = vxVar26;
                        SolverVariable vsVar13 = vsVar12;
                        vxVar4 = vxVar25;
                        vnVar.d(vwVar20.h, vsVar11, vwVar20.b(), i == 0 ? vxVar30.ad : vxVar30.ae, vsVar13, vwVar17.h, vwVar17.b(), 7);
                    }
                    if ((!z4 || z2) && vxVar4 != null && vxVar4 != vxVar3) {
                        ConstraintAnchor[] vwVarArr6 = vxVar4.R;
                        vwVar = vwVarArr6[i3];
                        vxVar6 = vxVar3 != null ? vxVar4 : vxVar3;
                        i7 = i3 + 1;
                        vwVar2 = vxVar6.R[i7];
                        ConstraintAnchor vwVar21 = vwVar.e;
                        vsVar = vwVar21 == null ? vwVar21.h : null;
                        ConstraintAnchor vwVar22 = vwVar2.e;
                        vsVar2 = vwVar22 == null ? vwVar22.h : null;
                        if (vxVar5 != vxVar6) {
                            ConstraintAnchor vwVar23 = vxVar5.R[i7].e;
                            vsVar2 = vwVar23 != null ? vwVar23.h : null;
                        }
                        if (vxVar4 == vxVar6) {
                            vwVar2 = vwVarArr6[i7];
                        }
                        if (vsVar != null && vsVar2 != null) {
                            vnVar.d(vwVar.h, vsVar, vwVar.b(), 0.5f, vsVar2, vwVar2.h, vxVar6.R[i7].b(), 5);
                        }
                    }
                } else {
                    vxVar3 = vxVar26;
                    vxVar4 = vxVar25;
                    vxVar5 = vxVar2;
                    i6 = i4;
                }
                if (!z4 || vxVar4 == null) {
                    i4 = i6;
                    ConstraintWidgetListHolder vvVar4 = vvVar;
                    int i31 = 8;
                    if (z2 && vxVar4 != null) {
                        int i32 = vvVar4.j;
                        boolean z14 = i32 > 0 && vvVar4.i == i32;
                        ConstraintWidget vxVar33 = vxVar4;
                        ConstraintWidget vxVar34 = vxVar33;
                        while (vxVar34 != null) {
                            ConstraintWidget vxVar35 = vxVar34.am[i];
                            while (vxVar35 != null && vxVar35.ag == i31) {
                                vxVar35 = vxVar35.am[i];
                            }
                            if (vxVar34 == vxVar4 || vxVar34 == vxVar3 || vxVar35 == null) {
                                vxVar7 = vxVar33;
                                vxVar8 = vxVar34;
                                z5 = z14;
                                i8 = 8;
                                vxVar34 = vxVar35;
                            } else {
                                ConstraintWidget vxVar36 = vxVar35 == vxVar3 ? null : vxVar35;
                                ConstraintAnchor vwVar24 = vxVar34.R[i3];
                                SolverVariable vsVar14 = vwVar24.h;
                                ConstraintAnchor vwVar25 = vwVar24.e;
                                int i33 = i3 + 1;
                                SolverVariable vsVar15 = vxVar33.R[i33].h;
                                int b4 = vwVar24.b();
                                int b5 = vxVar34.R[i33].b();
                                if (vxVar36 != null) {
                                    vwVar3 = vxVar36.R[i3];
                                    SolverVariable vsVar16 = vwVar3.h;
                                    vxVar9 = vxVar36;
                                    ConstraintAnchor vwVar26 = vwVar3.e;
                                    vsVar4 = vwVar26 != null ? vwVar26.h : null;
                                    vsVar3 = vsVar16;
                                } else {
                                    vxVar9 = vxVar36;
                                    vwVar3 = vxVar3.R[i3];
                                    vsVar3 = vwVar3 != null ? vwVar3.h : null;
                                    vsVar4 = vxVar34.R[i33].h;
                                }
                                int b6 = vwVar3 != null ? b5 + vwVar3.b() : b5;
                                int b7 = b4 + vxVar33.R[i33].b();
                                int i34 = true != z14 ? 4 : 8;
                                if (vsVar14 == null || vsVar15 == null || vsVar3 == null || vsVar4 == null) {
                                    vxVar7 = vxVar33;
                                    vxVar8 = vxVar34;
                                    z5 = z14;
                                    i8 = 8;
                                } else {
                                    vxVar7 = vxVar33;
                                    SolverVariable vsVar17 = vsVar4;
                                    vxVar8 = vxVar34;
                                    z5 = z14;
                                    i8 = 8;
                                    vnVar.d(vsVar14, vsVar15, b7, 0.5f, vsVar3, vsVar17, b6, i34);
                                }
                                vxVar34 = vxVar9;
                            }
                            vxVar33 = vxVar8.ag != i8 ? vxVar8 : vxVar7;
                            z14 = z5;
                            i31 = 8;
                        }
                        ConstraintAnchor vwVar27 = vxVar4.R[i3];
                        ConstraintAnchor vwVar28 = vxVar23.R[i3].e;
                        int i35 = i3 + 1;
                        ConstraintAnchor vwVar29 = vxVar3.R[i35];
                        ConstraintAnchor vwVar30 = vxVar5.R[i35].e;
                        if (vwVar28 != null) {
                            if (vxVar4 != vxVar3) {
                                vnVar.m(vwVar27.h, vwVar28.h, vwVar27.b(), 5);
                            } else if (vwVar30 != null) {
                                vnVar.d(vwVar27.h, vwVar28.h, vwVar27.b(), 0.5f, vwVar29.h, vwVar30.h, vwVar29.b(), 5);
                            }
                        }
                        if (vwVar30 != null && vxVar4 != vxVar3) {
                            vnVar.m(vwVar29.h, vwVar30.h, -vwVar29.b(), 5);
                        }
                    }
                } else {
                    ConstraintWidgetListHolder vvVar5 = vvVar;
                    int i36 = vvVar5.j;
                    boolean z15 = i36 > 0 && vvVar5.i == i36;
                    ConstraintWidget vxVar37 = vxVar4;
                    ConstraintWidget vxVar38 = vxVar37;
                    while (vxVar38 != null) {
                        ConstraintWidget vxVar39 = vxVar38.am[i];
                        while (vxVar39 != null && vxVar39.ag == 8) {
                            vxVar39 = vxVar39.am[i];
                        }
                        if (vxVar39 != null || vxVar38 == vxVar3) {
                            ConstraintAnchor vwVar31 = vxVar38.R[i3];
                            SolverVariable vsVar18 = vwVar31.h;
                            ConstraintAnchor vwVar32 = vwVar31.e;
                            SolverVariable vsVar19 = vwVar32 != null ? vwVar32.h : null;
                            if (vxVar37 != vxVar38) {
                                vsVar19 = vxVar37.R[i3 + 1].h;
                            } else if (vxVar38 == vxVar4) {
                                ConstraintAnchor vwVar33 = vxVar23.R[i3].e;
                                vsVar19 = vwVar33 != null ? vwVar33.h : null;
                            }
                            int b8 = vwVar31.b();
                            int i37 = i3 + 1;
                            int b9 = vxVar38.R[i37].b();
                            if (vxVar39 != null) {
                                vwVar4 = vxVar39.R[i3];
                                vxVar10 = vxVar39;
                                vsVar5 = vwVar4.h;
                            } else {
                                vxVar10 = vxVar39;
                                vwVar4 = vxVar5.R[i37].e;
                                vsVar5 = vwVar4 != null ? vwVar4.h : null;
                            }
                            i9 = i6;
                            SolverVariable vsVar20 = vxVar38.R[i37].h;
                            if (vwVar4 != null) {
                                b9 += vwVar4.b();
                            }
                            int b10 = b8 + vxVar37.R[i37].b();
                            if (vsVar18 == null || vsVar19 == null || vsVar5 == null || vsVar20 == null) {
                                vxVar11 = vxVar37;
                                z6 = z15;
                                vxVar12 = vxVar38;
                            } else {
                                int b11 = vxVar38 == vxVar4 ? vxVar4.R[i3].b() : b10;
                                int b12 = vxVar38 == vxVar3 ? vxVar3.R[i37].b() : b9;
                                int i38 = true != z15 ? 5 : 8;
                                ConstraintWidget vxVar40 = vxVar37;
                                int i39 = b12;
                                z6 = z15;
                                vxVar11 = vxVar40;
                                vxVar12 = vxVar38;
                                vnVar.d(vsVar18, vsVar19, b11, 0.5f, vsVar5, vsVar20, i39, i38);
                            }
                        } else {
                            vxVar10 = vxVar39;
                            vxVar11 = vxVar37;
                            z6 = z15;
                            i9 = i6;
                            vxVar12 = vxVar38;
                        }
                        vxVar37 = vxVar12.ag != 8 ? vxVar12 : vxVar11;
                        vxVar38 = vxVar10;
                        z15 = z6;
                        i6 = i9;
                    }
                    i4 = i6;
                }
                if (!z4) {
                }
                ConstraintAnchor[] vwVarArr62 = vxVar4.R;
                vwVar = vwVarArr62[i3];
                if (vxVar3 != null) {
                }
                i7 = i3 + 1;
                vwVar2 = vxVar6.R[i7];
                ConstraintAnchor vwVar212 = vwVar.e;
                if (vwVar212 == null) {
                }
                ConstraintAnchor vwVar222 = vwVar2.e;
                if (vwVar222 == null) {
                }
                if (vxVar5 != vxVar6) {
                }
                if (vxVar4 == vxVar6) {
                }
                if (vsVar != null) {
                    vnVar.d(vwVar.h, vsVar, vwVar.b(), 0.5f, vsVar2, vwVar2.h, vxVar6.R[i7].b(), 5);
                }
            } else {
                i4 = i12;
                i5 = i2;
                vvVarArr2 = vvVarArr;
            }
            i12 = i4 + 1;
            i11 = 2;
            vyVar2 = vyVar;
            arrayList3 = arrayList;
            i2 = i5;
            vvVarArr = vvVarArr2;
        }
    }

    public static Object d(Object obj) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException("null reference");
    }

    public static void e(boolean z) {
        if (!z) {
            throw new IllegalArgumentException();
        }
    }

    public static void f(boolean z, Object obj) {
        if (!z) {
            throw new IllegalArgumentException((String) obj);
        }
    }

    public static void g(Handler handler) {
        Looper myLooper = Looper.myLooper();
        if (myLooper != handler.getLooper()) {
            String name = myLooper != null ? myLooper.getThread().getName() : "null current looper";
            String name2 = handler.getLooper().getThread().getName();
            StringBuilder sb = new StringBuilder(String.valueOf(name2).length() + 36 + String.valueOf(name).length());
            StaggeredGridLayoutParams.append("Must be called on ");
            StaggeredGridLayoutParams.append(name2);
            StaggeredGridLayoutParams.append(" thread, but got ");
            StaggeredGridLayoutParams.append(name);
            StaggeredGridLayoutParams.append(".");
            throw new IllegalStateException(StaggeredGridLayoutParams.toString());
        }
    }

    public static void h() {
        i("Must not be called on the main application thread");
    }

    public static void i(String str) {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            throw new IllegalStateException(str);
        }
    }

    public static void j(boolean z, Object obj) {
        if (!z) {
            throw new IllegalStateException((String) obj);
        }
    }

    public static void k(String str) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Given String is empty or null");
        }
    }

    public static void l(String str, Object obj) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException((String) obj);
        }
    }

    public static void m(Object obj, Object obj2) {
        if (obj == null) {
            throw new NullPointerException((String) obj2);
        }
    }

    public static boolean n(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }
}
