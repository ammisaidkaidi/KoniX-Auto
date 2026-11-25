package defpackage;

import android.graphics.Matrix;
import java.util.ArrayList;

/* compiled from: PG */
/* loaded from: classes.dex */
final class aft extends aga {
    final Matrix a;
    final ArrayList b;
    float c;
    public float d;
    public float e;
    public float f;
    public float g;
    public float h;
    public float i;
    final Matrix j;
    int k;
    public int[] l;
    public String m;

    public aft() {
        this.a = new Matrix();
        this.b = new ArrayList();
        this.c = 0.0f;
        this.d = 0.0f;
        this.e = 0.0f;
        this.f = 1.0f;
        this.g = 1.0f;
        this.h = 0.0f;
        this.i = 0.0f;
        this.j = new Matrix();
        this.m = null;
    }

    public final void a() {
        this.j.reset();
        this.j.postTranslate(-this.d, -this.e);
        this.j.postScale(this.f, this.g);
        this.j.postRotate(this.c, 0.0f, 0.0f);
        this.j.postTranslate(this.h + this.d, this.i + this.e);
    }

    @Override // defpackage.aga
    public final boolean b() {
        for (int i = 0; i < this.b.size(); i++) {
            if (((aga) this.b.get(i)).b()) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.aga
    public final boolean c(int[] iArr) {
        boolean z = false;
        for (int i = 0; i < this.b.size(); i++) {
            z |= ((aga) this.b.get(i)).c(iArr);
        }
        return z;
    }

    public String getGroupName() {
        return this.m;
    }

    public Matrix getLocalMatrix() {
        return this.j;
    }

    public float getPivotX() {
        return this.d;
    }

    public float getPivotY() {
        return this.e;
    }

    public float getRotation() {
        return this.c;
    }

    public float getScaleX() {
        return this.f;
    }

    public float getScaleY() {
        return this.g;
    }

    public float getTranslateX() {
        return this.h;
    }

    public float getTranslateY() {
        return this.i;
    }

    public void setPivotX(float f) {
        if (f != this.d) {
            this.d = f;
            a();
        }
    }

    public void setPivotY(float f) {
        if (f != this.e) {
            this.e = f;
            a();
        }
    }

    public void setRotation(float f) {
        if (f != this.c) {
            this.c = f;
            a();
        }
    }

    public void setScaleX(float f) {
        if (f != this.f) {
            this.f = f;
            a();
        }
    }

    public void setScaleY(float f) {
        if (f != this.g) {
            this.g = f;
            a();
        }
    }

    public void setTranslateX(float f) {
        if (f != this.h) {
            this.h = f;
            a();
        }
    }

    public void setTranslateY(float f) {
        if (f != this.i) {
            this.i = f;
            a();
        }
    }

    public aft(aft aftVar, vb vbVar) {
        afu afrVar;
        this.a = new Matrix();
        this.b = new ArrayList();
        this.c = 0.0f;
        this.d = 0.0f;
        this.e = 0.0f;
        this.f = 1.0f;
        this.g = 1.0f;
        this.h = 0.0f;
        this.i = 0.0f;
        Matrix matrix = new Matrix();
        this.j = matrix;
        this.m = null;
        this.c = aftVar.c;
        this.d = aftVar.d;
        this.e = aftVar.e;
        this.f = aftVar.f;
        this.g = aftVar.g;
        this.h = aftVar.h;
        this.i = aftVar.i;
        int[] iArr = aftVar.l;
        this.l = null;
        String str = aftVar.m;
        this.m = str;
        int i = aftVar.k;
        this.k = 0;
        if (str != null) {
            vbVar.put(str, this);
        }
        matrix.set(aftVar.j);
        ArrayList arrayList = aftVar.b;
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            Object obj = arrayList.get(i2);
            if (obj instanceof aft) {
                this.b.add(new aft((aft) obj, vbVar));
            } else {
                if (obj instanceof afs) {
                    afrVar = new afs((afs) obj);
                } else if (obj instanceof afr) {
                    afrVar = new afr((afr) obj);
                } else {
                    throw new IllegalStateException("Unknown object in the tree!");
                }
                this.b.add(afrVar);
                Object obj2 = afrVar.n;
                if (obj2 != null) {
                    vbVar.put(obj2, afrVar);
                }
            }
        }
    }
}
