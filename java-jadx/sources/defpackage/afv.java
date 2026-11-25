package defpackage;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.Shader;

/* compiled from: PG */
/* loaded from: classes.dex */
final class afv {
    public static final Matrix a = new Matrix();
    Paint b;
    Paint c;
    final aft d;
    float e;
    float f;
    float g;
    float h;
    int i;
    String j;
    Boolean k;
    final vb l;
    private final Path m;
    private final Path n;
    private final Matrix o;
    private PathMeasure p;
    private int q;

    public afv() {
        this.o = new Matrix();
        this.e = 0.0f;
        this.f = 0.0f;
        this.g = 0.0f;
        this.h = 0.0f;
        this.i = 255;
        this.j = null;
        this.k = null;
        this.l = new vb();
        this.d = new aft();
        this.m = new Path();
        this.n = new Path();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final void a(aft aftVar, Matrix matrix, Canvas canvas, int i, int i2) {
        afv afvVar;
        Canvas canvas2;
        int i3;
        float f;
        int i4;
        float f2;
        afu afuVar;
        char c;
        ej[] ejVarArr;
        float f3;
        float f4;
        float f5;
        float f6;
        float f7;
        float f8;
        afv afvVar2 = this;
        aft aftVar2 = aftVar;
        Canvas canvas3 = canvas;
        aftVar2.a.set(matrix);
        aftVar2.a.preConcat(aftVar2.j);
        canvas.save();
        char c2 = 0;
        int i5 = 0;
        while (i5 < aftVar2.b.size()) {
            aga agaVar = (aga) aftVar2.b.get(i5);
            if (agaVar instanceof aft) {
                a((aft) agaVar, aftVar2.a, canvas, i, i2);
                afvVar = afvVar2;
                canvas2 = canvas3;
                i3 = i5;
            } else if (agaVar instanceof afu) {
                afu afuVar2 = (afu) agaVar;
                float f9 = i / afvVar2.g;
                float f10 = i2 / afvVar2.h;
                float min = Math.min(f9, f10);
                Matrix matrix2 = aftVar2.a;
                afvVar2.o.set(matrix2);
                afvVar2.o.postScale(f9, f10);
                float[] fArr = {0.0f, 1.0f, 1.0f, 0.0f};
                matrix2.mapVectors(fArr);
                double hypot = Math.hypot(fArr[c2], fArr[1]);
                double hypot2 = Math.hypot(fArr[2], fArr[3]);
                float f11 = (fArr[c2] * fArr[3]) - (fArr[1] * fArr[2]);
                float max = Math.max((float) hypot, (float) hypot2);
                float abs = max > 0.0f ? Math.abs(f11) / max : 0.0f;
                if (abs != 0.0f) {
                    Path path = afvVar2.m;
                    path.reset();
                    ej[] ejVarArr2 = afuVar2.m;
                    if (ejVarArr2 != null) {
                        float[] fArr2 = new float[6];
                        char c3 = 'm';
                        int i6 = 0;
                        while (i6 < ejVarArr2.length) {
                            ej ejVar = ejVarArr2[i6];
                            char c4 = ejVar.a;
                            float[] fArr3 = ejVar.b;
                            float f12 = fArr2[c2];
                            float f13 = fArr2[1];
                            float f14 = fArr2[2];
                            float f15 = fArr2[3];
                            float f16 = fArr2[4];
                            float f17 = fArr2[5];
                            switch (c4) {
                                case 'A':
                                case 'a':
                                    i4 = 7;
                                    break;
                                case 'C':
                                case 'c':
                                    i4 = 6;
                                    break;
                                case 'H':
                                case 'V':
                                case 'h':
                                case 'v':
                                    i4 = 1;
                                    break;
                                case 'L':
                                case 'M':
                                case 'T':
                                case 'l':
                                case 'm':
                                case 't':
                                    i4 = 2;
                                    break;
                                case 'Q':
                                case 'S':
                                case 'q':
                                case 's':
                                    i4 = 4;
                                    break;
                                case 'Z':
                                case 'z':
                                    path.close();
                                    path.moveTo(f16, f17);
                                    f13 = f17;
                                    f15 = f13;
                                    f12 = f16;
                                    f14 = f12;
                                    i4 = 2;
                                    break;
                                default:
                                    i4 = 2;
                                    break;
                            }
                            float f18 = abs;
                            int i7 = i5;
                            float f19 = f12;
                            float f20 = f13;
                            int i8 = 0;
                            while (true) {
                                f2 = min;
                                if (i8 < fArr3.length) {
                                    switch (c4) {
                                        case 'A':
                                            afuVar = afuVar2;
                                            c = c4;
                                            ejVarArr = ejVarArr2;
                                            int i9 = i8 + 5;
                                            int i10 = i8 + 6;
                                            ej.a(path, f19, f20, fArr3[i9], fArr3[i10], fArr3[i8], fArr3[i8 + 1], fArr3[i8 + 2], fArr3[i8 + 3] != 0.0f, fArr3[i8 + 4] != 0.0f);
                                            f19 = fArr3[i9];
                                            f20 = fArr3[i10];
                                            f14 = f19;
                                            f15 = f20;
                                            break;
                                        case 'C':
                                            afuVar = afuVar2;
                                            c = c4;
                                            ejVarArr = ejVarArr2;
                                            int i11 = i8 + 2;
                                            int i12 = i8 + 3;
                                            int i13 = i8 + 4;
                                            int i14 = i8 + 5;
                                            path.cubicTo(fArr3[i8], fArr3[i8 + 1], fArr3[i11], fArr3[i12], fArr3[i13], fArr3[i14]);
                                            f19 = fArr3[i13];
                                            f20 = fArr3[i14];
                                            f14 = fArr3[i11];
                                            f15 = fArr3[i12];
                                            break;
                                        case 'H':
                                            afuVar = afuVar2;
                                            c = c4;
                                            ejVarArr = ejVarArr2;
                                            path.lineTo(fArr3[i8], f20);
                                            f19 = fArr3[i8];
                                            break;
                                        case 'L':
                                            afuVar = afuVar2;
                                            c = c4;
                                            ejVarArr = ejVarArr2;
                                            int i15 = i8 + 1;
                                            path.lineTo(fArr3[i8], fArr3[i15]);
                                            f19 = fArr3[i8];
                                            f20 = fArr3[i15];
                                            break;
                                        case 'M':
                                            afuVar = afuVar2;
                                            c = c4;
                                            ejVarArr = ejVarArr2;
                                            f19 = fArr3[i8];
                                            f20 = fArr3[i8 + 1];
                                            if (i8 <= 0) {
                                                path.moveTo(f19, f20);
                                                f16 = f19;
                                                f17 = f20;
                                                break;
                                            } else {
                                                path.lineTo(f19, f20);
                                                break;
                                            }
                                        case 'Q':
                                            afuVar = afuVar2;
                                            c = c4;
                                            ejVarArr = ejVarArr2;
                                            int i16 = i8 + 1;
                                            int i17 = i8 + 2;
                                            int i18 = i8 + 3;
                                            path.quadTo(fArr3[i8], fArr3[i16], fArr3[i17], fArr3[i18]);
                                            float f21 = fArr3[i8];
                                            float f22 = fArr3[i16];
                                            f19 = fArr3[i17];
                                            f20 = fArr3[i18];
                                            f15 = f22;
                                            f14 = f21;
                                            break;
                                        case 'S':
                                            afuVar = afuVar2;
                                            c = c4;
                                            ejVarArr = ejVarArr2;
                                            if (c3 == 'c' || c3 == 's' || c3 == 'C' || c3 == 'S') {
                                                f3 = (f19 + f19) - f14;
                                                f4 = (f20 + f20) - f15;
                                            } else {
                                                f3 = f19;
                                                f4 = f20;
                                            }
                                            int i19 = i8 + 1;
                                            int i20 = i8 + 2;
                                            int i21 = i8 + 3;
                                            path.cubicTo(f3, f4, fArr3[i8], fArr3[i19], fArr3[i20], fArr3[i21]);
                                            float f23 = fArr3[i8];
                                            float f24 = fArr3[i19];
                                            f19 = fArr3[i20];
                                            f20 = fArr3[i21];
                                            f15 = f24;
                                            f14 = f23;
                                            break;
                                        case 'T':
                                            afuVar = afuVar2;
                                            c = c4;
                                            ejVarArr = ejVarArr2;
                                            if (c3 == 'q' || c3 == 't' || c3 == 'Q' || c3 == 'T') {
                                                f19 = (f19 + f19) - f14;
                                                f20 = (f20 + f20) - f15;
                                            }
                                            int i22 = i8 + 1;
                                            path.quadTo(f19, f20, fArr3[i8], fArr3[i22]);
                                            float f25 = fArr3[i8];
                                            f14 = f19;
                                            f15 = f20;
                                            f20 = fArr3[i22];
                                            f19 = f25;
                                            break;
                                        case 'V':
                                            afuVar = afuVar2;
                                            c = c4;
                                            ejVarArr = ejVarArr2;
                                            path.lineTo(f19, fArr3[i8]);
                                            f20 = fArr3[i8];
                                            break;
                                        case 'a':
                                            afuVar = afuVar2;
                                            c = c4;
                                            ejVarArr = ejVarArr2;
                                            int i23 = i8 + 5;
                                            int i24 = i8 + 6;
                                            ej.a(path, f19, f20, fArr3[i23] + f19, fArr3[i24] + f20, fArr3[i8], fArr3[i8 + 1], fArr3[i8 + 2], fArr3[i8 + 3] != 0.0f, fArr3[i8 + 4] != 0.0f);
                                            f19 += fArr3[i23];
                                            f20 += fArr3[i24];
                                            f14 = f19;
                                            f15 = f20;
                                            break;
                                        case 'c':
                                            afuVar = afuVar2;
                                            c = c4;
                                            ejVarArr = ejVarArr2;
                                            int i25 = i8 + 2;
                                            int i26 = i8 + 3;
                                            int i27 = i8 + 4;
                                            int i28 = i8 + 5;
                                            path.rCubicTo(fArr3[i8], fArr3[i8 + 1], fArr3[i25], fArr3[i26], fArr3[i27], fArr3[i28]);
                                            float f26 = fArr3[i25] + f19;
                                            float f27 = fArr3[i26] + f20;
                                            f19 += fArr3[i27];
                                            f20 += fArr3[i28];
                                            f14 = f26;
                                            f15 = f27;
                                            break;
                                        case 'h':
                                            afuVar = afuVar2;
                                            c = c4;
                                            ejVarArr = ejVarArr2;
                                            path.rLineTo(fArr3[i8], 0.0f);
                                            f19 += fArr3[i8];
                                            break;
                                        case 'l':
                                            afuVar = afuVar2;
                                            c = c4;
                                            ejVarArr = ejVarArr2;
                                            int i29 = i8 + 1;
                                            path.rLineTo(fArr3[i8], fArr3[i29]);
                                            f19 += fArr3[i8];
                                            f20 += fArr3[i29];
                                            break;
                                        case 'm':
                                            afuVar = afuVar2;
                                            c = c4;
                                            ejVarArr = ejVarArr2;
                                            float f28 = fArr3[i8];
                                            f19 += f28;
                                            float f29 = fArr3[i8 + 1];
                                            f20 += f29;
                                            if (i8 <= 0) {
                                                path.rMoveTo(f28, f29);
                                                f16 = f19;
                                                f17 = f20;
                                                break;
                                            } else {
                                                path.rLineTo(f28, f29);
                                                break;
                                            }
                                        case 'q':
                                            c = c4;
                                            int i30 = i8 + 1;
                                            int i31 = i8 + 2;
                                            int i32 = i8 + 3;
                                            afuVar = afuVar2;
                                            ejVarArr = ejVarArr2;
                                            path.rQuadTo(fArr3[i8], fArr3[i30], fArr3[i31], fArr3[i32]);
                                            float f30 = fArr3[i8] + f19;
                                            float f31 = fArr3[i30] + f20;
                                            f19 += fArr3[i31];
                                            f20 += fArr3[i32];
                                            f14 = f30;
                                            f15 = f31;
                                            break;
                                        case 's':
                                            c = c4;
                                            if (c3 == 'c' || c3 == 's' || c3 == 'C' || c3 == 'S') {
                                                f5 = f19 - f14;
                                                f6 = f20 - f15;
                                            } else {
                                                f5 = 0.0f;
                                                f6 = 0.0f;
                                            }
                                            int i33 = i8 + 1;
                                            int i34 = i8 + 2;
                                            int i35 = i8 + 3;
                                            path.rCubicTo(f5, f6, fArr3[i8], fArr3[i33], fArr3[i34], fArr3[i35]);
                                            float f32 = fArr3[i8] + f19;
                                            float f33 = fArr3[i33] + f20;
                                            f19 += fArr3[i34];
                                            f20 += fArr3[i35];
                                            afuVar = afuVar2;
                                            f15 = f33;
                                            ejVarArr = ejVarArr2;
                                            f14 = f32;
                                            break;
                                        case 't':
                                            if (c3 == 'q' || c3 == 't' || c3 == 'Q' || c3 == 'T') {
                                                f7 = f19 - f14;
                                                f8 = f20 - f15;
                                            } else {
                                                f7 = 0.0f;
                                                f8 = 0.0f;
                                            }
                                            int i36 = i8 + 1;
                                            c = c4;
                                            path.rQuadTo(f7, f8, fArr3[i8], fArr3[i36]);
                                            float f34 = f7 + f19;
                                            float f35 = f8 + f20;
                                            f19 += fArr3[i8];
                                            f20 += fArr3[i36];
                                            afuVar = afuVar2;
                                            f14 = f34;
                                            ejVarArr = ejVarArr2;
                                            f15 = f35;
                                            break;
                                        case 'v':
                                            path.rLineTo(0.0f, fArr3[i8]);
                                            f20 += fArr3[i8];
                                            afuVar = afuVar2;
                                            c = c4;
                                            ejVarArr = ejVarArr2;
                                            break;
                                        default:
                                            afuVar = afuVar2;
                                            c = c4;
                                            ejVarArr = ejVarArr2;
                                            break;
                                    }
                                    i8 += i4;
                                    min = f2;
                                    c4 = c;
                                    c3 = c4;
                                    afuVar2 = afuVar;
                                    ejVarArr2 = ejVarArr;
                                }
                            }
                            fArr2[0] = f19;
                            fArr2[1] = f20;
                            fArr2[2] = f14;
                            fArr2[3] = f15;
                            fArr2[4] = f16;
                            fArr2[5] = f17;
                            c3 = ejVarArr2[i6].a;
                            i6++;
                            i5 = i7;
                            abs = f18;
                            min = f2;
                            afuVar2 = afuVar2;
                            c2 = 0;
                        }
                    }
                    afu afuVar3 = afuVar2;
                    float f36 = abs;
                    float f37 = min;
                    i3 = i5;
                    afvVar = this;
                    Path path2 = afvVar.m;
                    afvVar.n.reset();
                    if (afuVar3.a()) {
                        afvVar.n.setFillType(afuVar3.o == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                        afvVar.n.addPath(path2, afvVar.o);
                        canvas2 = canvas;
                        canvas2.clipPath(afvVar.n);
                    } else {
                        canvas2 = canvas;
                        afs afsVar = (afs) afuVar3;
                        float f38 = afsVar.g;
                        if (f38 != 0.0f || afsVar.h != 1.0f) {
                            float f39 = afsVar.i;
                            float f40 = (f38 + f39) % 1.0f;
                            float f41 = (afsVar.h + f39) % 1.0f;
                            if (afvVar.p == null) {
                                afvVar.p = new PathMeasure();
                            }
                            afvVar.p.setPath(afvVar.m, false);
                            float length = afvVar.p.getLength();
                            float f42 = f40 * length;
                            float f43 = f41 * length;
                            path2.reset();
                            if (f42 > f43) {
                                afvVar.p.getSegment(f42, length, path2, true);
                                f = 0.0f;
                                afvVar.p.getSegment(0.0f, f43, path2, true);
                            } else {
                                f = 0.0f;
                                afvVar.p.getSegment(f42, f43, path2, true);
                            }
                            path2.rLineTo(f, f);
                        }
                        afvVar.n.addPath(path2, afvVar.o);
                        if (afsVar.d.e()) {
                            du duVar = afsVar.d;
                            if (afvVar.c == null) {
                                Paint paint = new Paint(1);
                                afvVar.c = paint;
                                paint.setStyle(Paint.Style.FILL);
                            }
                            Paint paint2 = afvVar.c;
                            if (duVar.b()) {
                                Shader shader = duVar.a;
                                shader.setLocalMatrix(afvVar.o);
                                paint2.setShader(shader);
                                paint2.setAlpha(Math.round(afsVar.f * 255.0f));
                            } else {
                                paint2.setShader(null);
                                paint2.setAlpha(255);
                                paint2.setColor(afy.a(duVar.b, afsVar.f));
                            }
                            paint2.setColorFilter(null);
                            afvVar.n.setFillType(afsVar.o == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                            canvas2.drawPath(afvVar.n, paint2);
                        }
                        if (afsVar.b.e()) {
                            du duVar2 = afsVar.b;
                            if (afvVar.b == null) {
                                Paint paint3 = new Paint(1);
                                afvVar.b = paint3;
                                paint3.setStyle(Paint.Style.STROKE);
                            }
                            Paint paint4 = afvVar.b;
                            Paint.Join join = afsVar.k;
                            if (join != null) {
                                paint4.setStrokeJoin(join);
                            }
                            Paint.Cap cap = afsVar.j;
                            if (cap != null) {
                                paint4.setStrokeCap(cap);
                            }
                            paint4.setStrokeMiter(afsVar.l);
                            if (duVar2.b()) {
                                Shader shader2 = duVar2.a;
                                shader2.setLocalMatrix(afvVar.o);
                                paint4.setShader(shader2);
                                paint4.setAlpha(Math.round(afsVar.e * 255.0f));
                            } else {
                                paint4.setShader(null);
                                paint4.setAlpha(255);
                                paint4.setColor(afy.a(duVar2.b, afsVar.e));
                            }
                            paint4.setColorFilter(null);
                            paint4.setStrokeWidth(afsVar.c * f37 * f36);
                            canvas2.drawPath(afvVar.n, paint4);
                        }
                    }
                } else {
                    afvVar = afvVar2;
                    canvas2 = canvas3;
                    i3 = i5;
                }
            } else {
                afvVar = afvVar2;
                canvas2 = canvas3;
                i3 = i5;
            }
            i5 = i3 + 1;
            aftVar2 = aftVar;
            afvVar2 = afvVar;
            canvas3 = canvas2;
            c2 = 0;
        }
        canvas.restore();
    }

    public float getAlpha() {
        return getRootAlpha() / 255.0f;
    }

    public int getRootAlpha() {
        return this.i;
    }

    public void setAlpha(float f) {
        setRootAlpha((int) (f * 255.0f));
    }

    public void setRootAlpha(int i) {
        this.i = i;
    }

    public afv(afv afvVar) {
        this.o = new Matrix();
        this.e = 0.0f;
        this.f = 0.0f;
        this.g = 0.0f;
        this.h = 0.0f;
        this.i = 255;
        this.j = null;
        this.k = null;
        vb vbVar = new vb();
        this.l = vbVar;
        this.d = new aft(afvVar.d, vbVar);
        this.m = new Path(afvVar.m);
        this.n = new Path(afvVar.n);
        this.e = afvVar.e;
        this.f = afvVar.f;
        this.g = afvVar.g;
        this.h = afvVar.h;
        int i = afvVar.q;
        this.q = 0;
        this.i = afvVar.i;
        this.j = afvVar.j;
        String str = afvVar.j;
        if (str != null) {
            vbVar.put(str, this);
        }
        this.k = afvVar.k;
    }
}
