package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
class afu extends aga {
    protected ej[] m;
    String n;
    int o;
    int p;

    public afu() {
        this.m = null;
        this.o = 0;
    }

    public afu(afu afuVar) {
        this.m = null;
        this.o = 0;
        this.n = afuVar.n;
        int i = afuVar.p;
        this.p = 0;
        this.m = ev.h(afuVar.m);
    }

    public boolean a() {
        return false;
    }

    public ej[] getPathData() {
        return this.m;
    }

    public String getPathName() {
        return this.n;
    }

    public void setPathData(ej[] ejVarArr) {
        int i;
        ej[] ejVarArr2 = this.m;
        if (ejVarArr2 != null && ejVarArr != null && ejVarArr2.length == ejVarArr.length) {
            while (i < ejVarArr2.length) {
                ej ejVar = ejVarArr2[i];
                char c = ejVar.a;
                ej ejVar2 = ejVarArr[i];
                i = (c == ejVar2.a && ejVar.b.length == ejVar2.b.length) ? i + 1 : 0;
            }
            ej[] ejVarArr3 = this.m;
            for (int i2 = 0; i2 < ejVarArr.length; i2++) {
                ejVarArr3[i2].a = ejVarArr[i2].a;
                int i3 = 0;
                while (true) {
                    float[] fArr = ejVarArr[i2].b;
                    if (i3 < fArr.length) {
                        ejVarArr3[i2].b[i3] = fArr[i3];
                        i3++;
                    }
                }
            }
            return;
        }
        this.m = ev.h(ejVarArr);
    }
}
