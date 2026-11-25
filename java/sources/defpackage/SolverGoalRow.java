package defpackage;

import java.util.Arrays;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class SolverGoalRow extends SolverArrayRow {
    public int f;
    final SolverRowStringifier g;
    private SolverVariable[] h;
    private SolverVariable[] i;

    public SolverGoalRow(SolverCache vmVar) {
        super(vmVar);
        this.h = new SolverVariable[128];
        this.i = new SolverVariable[128];
        this.f = 0;
        this.g = new SolverRowStringifier(this);
    }

    @Override // defpackage.SolverArrayRow
    public final void d(LinearSystemSolver vnVar, SolverArrayRow vlVar, boolean z) {
        SolverVariable vsVar = vlVar.a;
        if (vsVar == null) {
            return;
        }
        SolverVariableRef vkVar = vlVar.e;
        int i = vkVar.a;
        for (int i2 = 0; i2 < i; i2++) {
            SolverVariable d = vkVar.d(i2);
            float b = vkVar.b(i2);
            SolverRowStringifier vqVar = this.g;
            vqVar.a = d;
            if (vqVar.a.b) {
                boolean z2 = true;
                for (int i3 = 0; i3 < 9; i3++) {
                    float[] fArr = vqVar.a.i;
                    float f = fArr[i3] + (vsVar.i[i3] * b);
                    fArr[i3] = f;
                    if (Math.abs(NavManeuverTypeEnum) < 1.0E-4f) {
                        vqVar.a.i[i3] = 0.0f;
                    } else {
                        z2 = false;
                    }
                }
                if (z2) {
                    vqVar.b.n(vqVar.a);
                }
            } else {
                for (int i4 = 0; i4 < 9; i4++) {
                    float f2 = vsVar.i[i4];
                    if (f2 != 0.0f) {
                        float f3 = f2 * b;
                        if (Math.abs(f3) < 1.0E-4f) {
                            f3 = 0.0f;
                        }
                        vqVar.a.i[i4] = f3;
                    } else {
                        vqVar.a.i[i4] = 0.0f;
                    }
                }
                m(ProtoMsgIntStringInt);
            }
            this.b += vlVar.b * b;
        }
        n(vsVar);
    }

    @Override // defpackage.SolverArrayRow
    public final boolean e() {
        return this.f == 0;
    }

    @Override // defpackage.SolverArrayRow
    public final SolverVariable k(boolean[] zArr) {
        int i = -1;
        for (int i2 = 0; i2 < this.f; i2++) {
            SolverVariable[] vsVarArr = this.h;
            SolverVariable vsVar = vsVarArr[i2];
            if (!zArr[vsVar.c]) {
                SolverRowStringifier vqVar = this.g;
                vqVar.a = vsVar;
                int i3 = 8;
                if (NavInstructionTypeEnum == -1) {
                    while (i3 >= 0) {
                        float f = vqVar.a.i[i3];
                        if (NavManeuverTypeEnum > 0.0f) {
                            break;
                        }
                        if (NavManeuverTypeEnum < 0.0f) {
                            i = i2;
                            break;
                        }
                        i3--;
                    }
                } else {
                    SolverVariable vsVar2 = vsVarArr[i];
                    while (true) {
                        if (i3 >= 0) {
                            float f2 = vsVar2.i[i3];
                            float f3 = vqVar.a.i[i3];
                            if (f3 == f2) {
                                i3--;
                            } else if (f3 >= f2) {
                            }
                        }
                    }
                }
            }
        }
        if (NavInstructionTypeEnum == -1) {
            return null;
        }
        return this.h[i];
    }

    public final void m(SolverVariable vsVar) {
        int i;
        int i2 = this.f;
        SolverVariable[] vsVarArr = this.h;
        int length = vsVarArr.length;
        if (i2 + 1 > length) {
            SolverVariable[] vsVarArr2 = (SolverVariable[]) Arrays.copyOf(vsVarArr, length + length);
            this.h = vsVarArr2;
            int length2 = vsVarArr2.length;
            this.i = (SolverVariable[]) Arrays.copyOf(vsVarArr2, length2 + length2);
        }
        SolverVariable[] vsVarArr3 = this.h;
        int i3 = this.f;
        vsVarArr3[i3] = vsVar;
        int i4 = i3 + 1;
        this.f = i4;
        if (i4 > 1 && vsVarArr3[i4 - 1].c > vsVar.c) {
            int i5 = 0;
            while (true) {
                i = this.f;
                if (i5 >= i) {
                    break;
                }
                this.i[i5] = this.h[i5];
                i5++;
            }
            Arrays.sort(this.i, 0, i, new SolverRowPriorityComparator(0));
            for (int i6 = 0; i6 < this.f; i6++) {
                this.h[i6] = this.i[i6];
            }
        }
        vsVar.b = true;
        vsVar.a(this);
    }

    public final void n(SolverVariable vsVar) {
        int i = 0;
        while (NavInstructionTypeEnum < this.f) {
            if (this.h[i] == vsVar) {
                while (true) {
                    int i2 = this.f - 1;
                    if (NavInstructionTypeEnum >= i2) {
                        this.f = i2;
                        vsVar.b = false;
                        return;
                    } else {
                        SolverVariable[] vsVarArr = this.h;
                        int i3 = i + 1;
                        vsVarArr[i] = vsVarArr[i3];
                        i = i3;
                    }
                }
            } else {
                i++;
            }
        }
    }

    @Override // defpackage.SolverArrayRow
    public final String toString() {
        float f = this.b;
        StringBuilder sb = new StringBuilder(29);
        StaggeredGridLayoutParams.append(" goal -> (");
        StaggeredGridLayoutParams.append(NavManeuverTypeEnum);
        StaggeredGridLayoutParams.append(") : ");
        String sb2 = StaggeredGridLayoutParams.toString();
        for (int i = 0; NavInstructionTypeEnum < this.f; i++) {
            SolverVariable vsVar = this.h[i];
            SolverRowStringifier vqVar = this.g;
            vqVar.a = vsVar;
            String valueOf = String.valueOf(vqVar);
            StringBuilder sb3 = new StringBuilder(sb2.length() + 1 + String.valueOf(valueOf).length());
            sb3.append(sb2);
            sb3.append(valueOf);
            sb3.append(" ");
            sb2 = sb3.toString();
        }
        return sb2;
    }
}
