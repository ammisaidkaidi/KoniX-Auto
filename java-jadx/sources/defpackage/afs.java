package defpackage;

import android.graphics.Paint;

/* compiled from: PG */
/* loaded from: classes.dex */
final class afs extends afu {
    public int[] a;
    du b;
    float c;
    du d;
    float e;
    float f;
    float g;
    float h;
    float i;
    Paint.Cap j;
    Paint.Join k;
    float l;

    public afs() {
        this.c = 0.0f;
        this.e = 1.0f;
        this.f = 1.0f;
        this.g = 0.0f;
        this.h = 1.0f;
        this.i = 0.0f;
        this.j = Paint.Cap.BUTT;
        this.k = Paint.Join.MITER;
        this.l = 4.0f;
    }

    @Override // defpackage.aga
    public final boolean b() {
        return this.d.c() || this.b.c();
    }

    @Override // defpackage.aga
    public final boolean c(int[] iArr) {
        return this.b.d(iArr) | this.d.d(iArr);
    }

    float getFillAlpha() {
        return this.f;
    }

    int getFillColor() {
        return this.d.b;
    }

    float getStrokeAlpha() {
        return this.e;
    }

    int getStrokeColor() {
        return this.b.b;
    }

    float getStrokeWidth() {
        return this.c;
    }

    float getTrimPathEnd() {
        return this.h;
    }

    float getTrimPathOffset() {
        return this.i;
    }

    float getTrimPathStart() {
        return this.g;
    }

    void setFillAlpha(float f) {
        this.f = f;
    }

    void setFillColor(int i) {
        this.d.b = i;
    }

    void setStrokeAlpha(float f) {
        this.e = f;
    }

    void setStrokeColor(int i) {
        this.b.b = i;
    }

    void setStrokeWidth(float f) {
        this.c = f;
    }

    void setTrimPathEnd(float f) {
        this.h = f;
    }

    void setTrimPathOffset(float f) {
        this.i = f;
    }

    void setTrimPathStart(float f) {
        this.g = f;
    }

    public afs(afs afsVar) {
        super(afsVar);
        this.c = 0.0f;
        this.e = 1.0f;
        this.f = 1.0f;
        this.g = 0.0f;
        this.h = 1.0f;
        this.i = 0.0f;
        this.j = Paint.Cap.BUTT;
        this.k = Paint.Join.MITER;
        this.l = 4.0f;
        int[] iArr = afsVar.a;
        this.a = null;
        this.b = afsVar.b;
        this.c = afsVar.c;
        this.e = afsVar.e;
        this.d = afsVar.d;
        this.o = afsVar.o;
        this.f = afsVar.f;
        this.g = afsVar.g;
        this.h = afsVar.h;
        this.i = afsVar.i;
        this.j = afsVar.j;
        this.k = afsVar.k;
        this.l = afsVar.l;
    }
}
