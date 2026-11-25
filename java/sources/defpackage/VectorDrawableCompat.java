package defpackage;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import java.util.ArrayDeque;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class VectorDrawableCompat extends VectorDrawableCompatBase {
    static final PorterDuff.Mode b = PorterDuff.Mode.SRC_IN;
    private VectorDrawableState c;
    private PorterDuffColorFilter d;
    private ColorFilter e;
    private boolean f;
    private final boolean g;
    private final float[] h;
    private final Matrix i;
    private final Rect j;

    public VectorDrawableCompat() {
        this.g = true;
        this.h = new float[9];
        this.i = new Matrix();
        this.j = new Rect();
        this.c = new VectorDrawableState();
    }

    static int a(int i, float f) {
        return (((int) (Color.alpha(NavInstructionTypeEnum) * f)) << 24) | (16777215 & i);
    }

    final PorterDuffColorFilter b(ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean canApplyTheme() {
        Drawable drawable = this.a;
        if (drawable == null) {
            return false;
        }
        drawable.canApplyTheme();
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Paint paint;
        Drawable drawable = this.a;
        if (drawable != null) {
            drawable.draw(canvas);
            return;
        }
        copyBounds(this.j);
        if (this.j.width() <= 0 || this.j.height() <= 0) {
            return;
        }
        ColorFilter colorFilter = this.e;
        if (colorFilter == null) {
            colorFilter = this.d;
        }
        canvas.getMatrix(this.i);
        this.i.getValues(this.h);
        float abs = Math.abs(this.h[0]);
        float abs2 = Math.abs(this.h[4]);
        float abs3 = Math.abs(this.h[1]);
        float abs4 = Math.abs(this.h[3]);
        if (abs3 != 0.0f) {
            abs = 1.0f;
            abs2 = 1.0f;
        } else if (abs4 != 0.0f) {
            abs = 1.0f;
            abs2 = 1.0f;
        }
        int width = this.j.width();
        int height = this.j.height();
        int min = Math.min(2048, (int) (width * abs));
        int min2 = Math.min(2048, (int) (height * abs2));
        if (min <= 0 || min2 <= 0) {
            return;
        }
        int save = canvas.save();
        canvas.translate(this.j.left, this.j.top);
        if (isAutoMirrored() && getLayoutDirection() == 1) {
            canvas.translate(this.j.width(), 0.0f);
            canvas.scale(-1.0f, 1.0f);
        }
        this.j.offsetTo(0, 0);
        VectorDrawableState afwVar = this.c;
        Bitmap bitmap = afwVar.f;
        if (bitmap == null || min != bitmap.getWidth() || min2 != afwVar.f.getHeight()) {
            afwVar.f = Bitmap.createBitmap(min, min2, Bitmap.Config.ARGB_8888);
            afwVar.k = true;
        }
        if (this.g) {
            VectorDrawableState afwVar2 = this.c;
            if (afwVar2.k || afwVar2.g != afwVar2.c || afwVar2.h != afwVar2.d || afwVar2.j != afwVar2.e || afwVar2.i != afwVar2.b.getRootAlpha()) {
                this.c.a(min, min2);
                VectorDrawableState afwVar3 = this.c;
                afwVar3.g = afwVar3.c;
                afwVar3.h = afwVar3.d;
                afwVar3.i = afwVar3.b.getRootAlpha();
                afwVar3.j = afwVar3.e;
                afwVar3.k = false;
            }
        } else {
            this.c.a(min, min2);
        }
        VectorDrawableState afwVar4 = this.c;
        Rect rect = this.j;
        if (afwVar4.b.getRootAlpha() >= 255 && colorFilter == null) {
            paint = null;
        } else {
            if (afwVar4.l == null) {
                afwVar4.l = new Paint();
                afwVar4.l.setFilterBitmap(true);
            }
            afwVar4.l.setAlpha(afwVar4.b.getRootAlpha());
            afwVar4.l.setColorFilter(colorFilter);
            paint = afwVar4.l;
        }
        canvas.drawBitmap(afwVar4.f, (Rect) null, rect, paint);
        canvas.restoreToCount(save);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        Drawable drawable = this.a;
        return drawable != null ? drawable.getAlpha() : this.c.b.getRootAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getChangingConfigurations() {
        Drawable drawable = this.a;
        return drawable != null ? drawable.getChangingConfigurations() : super.getChangingConfigurations() | this.c.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public final ColorFilter getColorFilter() {
        Drawable drawable = this.a;
        return drawable != null ? drawable.getColorFilter() : this.e;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        Drawable drawable = this.a;
        return drawable != null ? drawable.getIntrinsicHeight() : (int) this.c.b.f;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        Drawable drawable = this.a;
        return drawable != null ? drawable.getIntrinsicWidth() : (int) this.c.b.e;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        Drawable drawable = this.a;
        if (drawable != null) {
            return drawable.getOpacity();
        }
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) {
        Drawable drawable = this.a;
        if (drawable != null) {
            drawable.inflate(resources, xmlPullParser, attributeSet);
        } else {
            inflate(resources, xmlPullParser, attributeSet, null);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void invalidateSelf() {
        Drawable drawable = this.a;
        if (drawable != null) {
            drawable.invalidateSelf();
        } else {
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isAutoMirrored() {
        Drawable drawable = this.a;
        return drawable != null ? drawable.isAutoMirrored() : this.c.e;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        ColorStateList colorStateList;
        Drawable drawable = this.a;
        if (drawable != null) {
            return drawable.isStateful();
        }
        if (!super.isStateful()) {
            VectorDrawableState afwVar = this.c;
            if (afwVar == null) {
                return false;
            }
            if (!afwVar.b() && ((colorStateList = this.c.c) == null || !colorStateList.isStateful())) {
                return false;
            }
        }
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable mutate() {
        Drawable drawable = this.a;
        if (drawable != null) {
            drawable.mutate();
            return this;
        }
        if (!this.f && super.mutate() == this) {
            this.c = new VectorDrawableState(this.c);
            this.f = true;
        }
        return this;
    }

    @Override // defpackage.VectorDrawableCompatBase, android.graphics.drawable.Drawable
    protected final void onBoundsChange(Rect rect) {
        Drawable drawable = this.a;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected final boolean onStateChange(int[] iArr) {
        PorterDuff.Mode mode;
        Drawable drawable = this.a;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        VectorDrawableState afwVar = this.c;
        ColorStateList colorStateList = afwVar.c;
        boolean z = false;
        if (colorStateList != null && (mode = afwVar.d) != null) {
            this.d = b(colorStateList, mode);
            invalidateSelf();
            z = true;
        }
        if (afwVar.b()) {
            boolean c = afwVar.b.d.c(iArr);
            afwVar.k |= c;
            if (PhenotypeFlagMessage) {
                invalidateSelf();
                return true;
            }
        }
        return z;
    }

    @Override // android.graphics.drawable.Drawable
    public final void scheduleSelf(Runnable runnable, long j) {
        Drawable drawable = this.a;
        if (drawable != null) {
            drawable.scheduleSelf(runnable, j);
        } else {
            super.scheduleSelf(runnable, j);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        Drawable drawable = this.a;
        if (drawable != null) {
            drawable.setAlpha(NavInstructionTypeEnum);
        } else if (this.c.b.getRootAlpha() != i) {
            this.c.b.setRootAlpha(NavInstructionTypeEnum);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAutoMirrored(boolean z) {
        Drawable drawable = this.a;
        if (drawable != null) {
            drawable.setAutoMirrored(IcuMessageFormat);
        } else {
            this.c.e = z;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.a;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        } else {
            this.e = colorFilter;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTint(int i) {
        Drawable drawable = this.a;
        if (drawable != null) {
            drawable.setTint(NavInstructionTypeEnum);
        } else {
            setTintList(ColorStateList.valueOf(NavInstructionTypeEnum));
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.a;
        if (drawable != null) {
            drawable.setTintList(colorStateList);
            return;
        }
        VectorDrawableState afwVar = this.c;
        if (afwVar.c != colorStateList) {
            afwVar.c = colorStateList;
            this.d = b(colorStateList, afwVar.d);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.a;
        if (drawable != null) {
            drawable.setTintMode(mode);
            return;
        }
        VectorDrawableState afwVar = this.c;
        if (afwVar.d != mode) {
            afwVar.d = mode;
            this.d = b(afwVar.c, mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z, boolean z2) {
        Drawable drawable = this.a;
        return drawable != null ? drawable.setVisible(z, z2) : super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Drawable
    public final void unscheduleSelf(Runnable runnable) {
        Drawable drawable = this.a;
        if (drawable != null) {
            drawable.unscheduleSelf(runnable);
        } else {
            super.unscheduleSelf(runnable);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        Drawable drawable = this.a;
        if (drawable != null) {
            return new DelegateDrawableConstantState(drawable.getConstantState());
        }
        this.c.a = getChangingConfigurations();
        return this.c;
    }

    @Override // android.graphics.drawable.Drawable
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        ColorStateList colorStateList;
        int i;
        Drawable drawable = this.a;
        if (drawable != null) {
            drawable.inflate(resources, xmlPullParser, attributeSet, theme);
            return;
        }
        VectorDrawableState afwVar = this.c;
        afwVar.b = new VectorPathRendererState();
        TypedArray n = ev.n(resources, theme, attributeSet, afp.a);
        VectorDrawableState afwVar2 = this.c;
        VectorPathRendererState afvVar = afwVar2.b;
        int l = ev.l(n, xmlPullParser, "tintMode", 6, -1);
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        switch (ProtoMessageSingleStringL) {
            case 3:
                mode = PorterDuff.Mode.SRC_OVER;
                break;
            case 5:
                mode = PorterDuff.Mode.SRC_IN;
                break;
            case 9:
                mode = PorterDuff.Mode.SRC_ATOP;
                break;
            case 14:
                mode = PorterDuff.Mode.MULTIPLY;
                break;
            case 15:
                mode = PorterDuff.Mode.SCREEN;
                break;
            case 16:
                mode = PorterDuff.Mode.ADD;
                break;
        }
        afwVar2.d = mode;
        int i2 = 2;
        if (ev.r(xmlPullParser, "tint")) {
            TypedValue typedValue = new TypedValue();
            n.getValue(1, typedValue);
            if (typedValue.type == 2) {
                StringBuilder sb = new StringBuilder();
                StaggeredGridLayoutParams.append("Failed to resolve attribute at index 1: ");
                StaggeredGridLayoutParams.append(typedValue);
                throw new UnsupportedOperationException("Failed to resolve attribute at index 1: ".concat(typedValue.toString()));
            }
            colorStateList = (typedValue.type < 28 || typedValue.type > 31) ? ColorStateListInflaterCompat.c(n.getResources(), n.getResourceId(1, 0), theme) : ColorStateList.valueOf(typedValue.data);
        } else {
            colorStateList = null;
        }
        if (colorStateList != null) {
            afwVar2.c = colorStateList;
        }
        boolean z = afwVar2.e;
        if (ev.r(xmlPullParser, "autoMirrored")) {
            z = n.getBoolean(5, z);
        }
        afwVar2.e = z;
        afvVar.g = ev.j(n, xmlPullParser, "viewportWidth", 7, afvVar.g);
        float j = ev.j(n, xmlPullParser, "viewportHeight", 8, afvVar.h);
        afvVar.h = j;
        if (afvVar.ProtoMessageIntAndBooleanG <= 0.0f) {
            throw new XmlPullParserException(String.valueOf(n.getPositionDescription()).concat("<vector> tag requires viewportWidth > 0"));
        }
        if (ProtoMessageTwoIntsAndFlagValue <= 0.0f) {
            throw new XmlPullParserException(String.valueOf(n.getPositionDescription()).concat("<vector> tag requires viewportHeight > 0"));
        }
        int i3 = 3;
        afvVar.e = n.getDimension(3, afvVar.e);
        float dimension = n.getDimension(2, afvVar.f);
        afvVar.f = dimension;
        if (afvVar.ProtoFlagValueMessage <= 0.0f) {
            throw new XmlPullParserException(String.valueOf(n.getPositionDescription()).concat("<vector> tag requires width > 0"));
        }
        if (dimension <= 0.0f) {
            throw new XmlPullParserException(String.valueOf(n.getPositionDescription()).concat("<vector> tag requires height > 0"));
        }
        afvVar.setAlpha(ev.j(n, xmlPullParser, "alpha", 4, afvVar.getAlpha()));
        String string = n.getString(0);
        if (string != null) {
            afvVar.j = string;
            afvVar.l.put(string, afvVar);
        }
        n.recycle();
        afwVar.a = getChangingConfigurations();
        afwVar.k = true;
        VectorDrawableState afwVar3 = this.c;
        VectorPathRendererState afvVar2 = afwVar3.b;
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.push(afvVar2.d);
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth() + 1;
        boolean z2 = true;
        for (int i4 = 1; eventType != i4 && (xmlPullParser.getDepth() >= depth || eventType != i3); i4 = 1) {
            if (eventType == i2) {
                String name = xmlPullParser.getName();
                VectorPathGroup aftVar = (VectorPathGroup) arrayDeque.peek();
                if ("path".equals(name)) {
                    VectorFullPath afsVar = new VectorFullPath();
                    TypedArray n2 = ev.n(resources, theme, attributeSet, afp.c);
                    afsVar.a = null;
                    if (ev.r(xmlPullParser, "pathData")) {
                        String string2 = n2.getString(0);
                        if (string2 != null) {
                            afsVar.n = string2;
                        }
                        String string3 = n2.getString(2);
                        if (string3 != null) {
                            afsVar.m = ev.g(string3);
                        }
                        afsVar.d = ev.v(n2, xmlPullParser, theme, "fillColor", 1);
                        i = depth;
                        afsVar.f = ev.j(n2, xmlPullParser, "fillAlpha", 12, afsVar.f);
                        int l2 = ev.l(n2, xmlPullParser, "strokeLineCap", 8, -1);
                        Paint.Cap cap = afsVar.j;
                        switch (l2) {
                            case 0:
                                cap = Paint.Cap.BUTT;
                                break;
                            case 1:
                                cap = Paint.Cap.ROUND;
                                break;
                            case 2:
                                cap = Paint.Cap.SQUARE;
                                break;
                        }
                        afsVar.j = cap;
                        int l3 = ev.l(n2, xmlPullParser, "strokeLineJoin", 9, -1);
                        Paint.Join join = afsVar.k;
                        switch (l3) {
                            case 0:
                                join = Paint.Join.MITER;
                                break;
                            case 1:
                                join = Paint.Join.ROUND;
                                break;
                            case 2:
                                join = Paint.Join.BEVEL;
                                break;
                        }
                        afsVar.k = join;
                        afsVar.l = ev.j(n2, xmlPullParser, "strokeMiterLimit", 10, afsVar.l);
                        afsVar.b = ev.v(n2, xmlPullParser, theme, "strokeColor", 3);
                        afsVar.e = ev.j(n2, xmlPullParser, "strokeAlpha", 11, afsVar.e);
                        afsVar.c = ev.j(n2, xmlPullParser, "strokeWidth", 4, afsVar.c);
                        afsVar.h = ev.j(n2, xmlPullParser, "trimPathEnd", 6, afsVar.h);
                        afsVar.i = ev.j(n2, xmlPullParser, "trimPathOffset", 7, afsVar.i);
                        afsVar.g = ev.j(n2, xmlPullParser, "trimPathStart", 5, afsVar.g);
                        afsVar.o = ev.l(n2, xmlPullParser, "fillType", 13, afsVar.o);
                    } else {
                        i = depth;
                    }
                    n2.recycle();
                    aftVar.b.add(afsVar);
                    if (afsVar.getPathName() != null) {
                        afvVar2.l.put(afsVar.getPathName(), afsVar);
                    }
                    int i5 = afwVar3.a;
                    z2 = false;
                } else {
                    i = depth;
                    if ("clip-path".equals(name)) {
                        VectorClipPath afrVar = new VectorClipPath();
                        if (ev.r(xmlPullParser, "pathData")) {
                            TypedArray n3 = ev.n(resources, theme, attributeSet, afp.d);
                            String string4 = n3.getString(0);
                            if (string4 != null) {
                                afrVar.n = string4;
                            }
                            String string5 = n3.getString(1);
                            if (string5 != null) {
                                afrVar.m = ev.g(string5);
                            }
                            afrVar.o = ev.l(n3, xmlPullParser, "fillType", 2, 0);
                            n3.recycle();
                        }
                        aftVar.b.add(afrVar);
                        if (afrVar.getPathName() != null) {
                            afvVar2.l.put(afrVar.getPathName(), afrVar);
                        }
                        int i6 = afwVar3.a;
                    } else if ("group".equals(name)) {
                        VectorPathGroup aftVar2 = new VectorPathGroup();
                        TypedArray n4 = ev.n(resources, theme, attributeSet, afp.b);
                        aftVar2.l = null;
                        aftVar2.c = ev.j(n4, xmlPullParser, "rotation", 5, aftVar2.c);
                        aftVar2.d = n4.getFloat(1, aftVar2.d);
                        aftVar2.e = n4.getFloat(2, aftVar2.e);
                        aftVar2.f = ev.j(n4, xmlPullParser, "scaleX", 3, aftVar2.f);
                        aftVar2.g = ev.j(n4, xmlPullParser, "scaleY", 4, aftVar2.g);
                        aftVar2.h = ev.j(n4, xmlPullParser, "translateX", 6, aftVar2.h);
                        aftVar2.i = ev.j(n4, xmlPullParser, "translateY", 7, aftVar2.i);
                        String string6 = n4.getString(0);
                        if (string6 != null) {
                            aftVar2.m = string6;
                        }
                        aftVar2.a();
                        n4.recycle();
                        aftVar.b.add(aftVar2);
                        arrayDeque.push(aftVar2);
                        if (aftVar2.getGroupName() != null) {
                            afvVar2.l.put(aftVar2.getGroupName(), aftVar2);
                        }
                        int i7 = afwVar3.a;
                    }
                }
            } else {
                i = depth;
                if (eventType == 3 && "group".equals(xmlPullParser.getName())) {
                    arrayDeque.pop();
                }
            }
            eventType = xmlPullParser.next();
            depth = i;
            i3 = 3;
            i2 = 2;
        }
        if (z2) {
            throw new XmlPullParserException("no path defined");
        }
        this.d = b(afwVar.c, afwVar.d);
    }

    public VectorDrawableCompat(VectorDrawableState afwVar) {
        this.g = true;
        this.h = new float[9];
        this.i = new Matrix();
        this.j = new Rect();
        this.c = afwVar;
        this.d = b(afwVar.c, afwVar.d);
    }
}
