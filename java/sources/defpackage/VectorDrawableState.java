package defpackage;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;

/* compiled from: PG */
/* loaded from: classes.dex */
final class VectorDrawableState extends Drawable.ConstantState {
    int a;
    VectorPathRendererState b;
    ColorStateList c;
    PorterDuff.Mode d;
    boolean e;
    Bitmap f;
    ColorStateList g;
    PorterDuff.Mode h;
    int i;
    boolean j;
    boolean k;
    Paint l;

    public VectorDrawableState() {
        this.c = null;
        this.d = afy.b;
        this.b = new VectorPathRendererState();
    }

    public final void a(int i, int i2) {
        this.f.eraseColor(0);
        Canvas canvas = new Canvas(this.f);
        VectorPathRendererState afvVar = this.b;
        afvVar.a(afvVar.d, afv.a, canvas, i, i2);
    }

    public final boolean b() {
        VectorPathRendererState afvVar = this.b;
        if (afvVar.k == null) {
            afvVar.k = Boolean.valueOf(afvVar.d.b());
        }
        return afvVar.k.booleanValue();
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public int getChangingConfigurations() {
        return this.a;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        return new VectorDrawableCompat(this);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable(Resources resources) {
        return new VectorDrawableCompat(this);
    }

    public VectorDrawableState(VectorDrawableState afwVar) {
        this.c = null;
        this.d = afy.b;
        if (afwVar != null) {
            this.a = afwVar.a;
            this.b = new VectorPathRendererState(afwVar.b);
            Paint paint = afwVar.b.c;
            if (paint != null) {
                this.b.c = new Paint(paint);
            }
            Paint paint2 = afwVar.b.b;
            if (paint2 != null) {
                this.b.b = new Paint(paint2);
            }
            this.c = afwVar.c;
            this.d = afwVar.d;
            this.e = afwVar.e;
        }
    }
}
