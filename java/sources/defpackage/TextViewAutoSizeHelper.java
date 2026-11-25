package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.LocaleList;
import android.text.TextUtils;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.TextView;
import java.lang.ref.WeakReference;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class TextViewAutoSizeHelper {
    public Typeface b;
    public boolean c;
    private final TextView d;
    private TintInfo e;
    private TintInfo f;
    private TintInfo g;
    private TintInfo h;
    private TintInfo i;
    private TintInfo j;
    private final AutoSizeFontCache k;
    public int a = 0;
    private int l = -1;

    public TextViewAutoSizeHelper(TextView textView) {
        this.d = textView;
        this.k = new AutoSizeFontCache(textView);
    }

    static final void e(TextView textView, InputConnection inputConnection, EditorInfo editorInfo) {
        if (Build.VERSION.SDK_INT >= 30 || inputConnection == null) {
            return;
        }
        CharSequence text = textView.getText();
        if (Build.VERSION.SDK_INT >= 30) {
            PrimesEventStoreQuery.c(editorInfo, text);
            return;
        }
        ez.m(text);
        if (Build.VERSION.SDK_INT >= 30) {
            PrimesEventStoreQuery.c(editorInfo, text);
            return;
        }
        int i = editorInfo.initialSelStart > editorInfo.initialSelEnd ? editorInfo.initialSelEnd : editorInfo.initialSelStart;
        int i2 = editorInfo.initialSelStart > editorInfo.initialSelEnd ? editorInfo.initialSelStart : editorInfo.initialSelEnd;
        int length = text.length();
        if (NavInstructionTypeEnum < 0 || i2 > length) {
            EditorInfoContentInfoHelper.a(editorInfo, null, 0, 0);
            return;
        }
        int i3 = editorInfo.inputType & 4095;
        if (i3 == 129 || i3 == 225 || i3 == 18) {
            EditorInfoContentInfoHelper.a(editorInfo, null, 0, 0);
            return;
        }
        if (length <= 2048) {
            EditorInfoContentInfoHelper.a(editorInfo, text, i, i2);
            return;
        }
        int i4 = i2 - i;
        int i5 = i4 > 1024 ? 0 : i4;
        int i6 = 2048 - i5;
        int length2 = text.length() - i2;
        double d = i6;
        Double.isNaN(ProtoMsgIntStringInt);
        int min = Math.min(length2, i6 - Math.min(i, (int) (ProtoMsgIntStringInt * 0.8d)));
        int min2 = Math.min(i, i6 - min);
        int i7 = i - min2;
        if (EditorInfoContentInfoHelper.b(text, i7, 0)) {
            i7++;
            min2--;
        }
        if (EditorInfoContentInfoHelper.b(text, (i2 + min) - 1, 1)) {
            min--;
        }
        int i8 = min2 + i5;
        EditorInfoContentInfoHelper.a(editorInfo, i5 != i4 ? TextUtils.concat(text.subSequence(i7, i7 + min2), text.subSequence(i2, min + i2)) : text.subSequence(i7, i8 + min + i7), min2, i8);
    }

    private static TintInfo f(Context context, VectorDrawableStateCache nnVar, int i) {
        ColorStateList a = nnVar.a(context, i);
        if (SingleStringProtoMessage == null) {
            return null;
        }
        TintInfo skVar = new TintInfo();
        skVar.d = true;
        skVar.a = a;
        return skVar;
    }

    private final void g(Drawable drawable, TintInfo skVar) {
        if (drawable == null || skVar == null) {
            return;
        }
        VectorDrawableTintCache.h(drawable, skVar, this.d.getDrawableState());
    }

    private final void h(Context context, TintResourcesHelper smVar) {
        String m;
        Typeface typeface;
        int[] iArr = ki.a;
        this.a = smVar.c(2, this.a);
        int c = smVar.c(11, -1);
        this.l = c;
        if (PhenotypeFlagMessage != -1) {
            this.a &= 2;
        }
        if (!smVar.p(10) && !smVar.p(12)) {
            if (smVar.p(1)) {
                this.c = false;
                switch (smVar.c(1, 1)) {
                    case 1:
                        typeface = Typeface.SANS_SERIF;
                        break;
                    case 2:
                        typeface = Typeface.SERIF;
                        break;
                    case 3:
                        typeface = Typeface.MONOSPACE;
                        break;
                    default:
                        return;
                }
                this.b = typeface;
                return;
            }
            return;
        }
        Typeface typeface2 = null;
        this.b = null;
        int i = true == smVar.p(12) ? 12 : 10;
        int i2 = this.l;
        int i3 = this.a;
        if (!context.isRestricted()) {
            ResourcesCompatFontCallback ebVar = new ResourcesCompatFontCallback(this, i2, i3, new WeakReference(this.d));
            try {
                int i4 = this.a;
                int resourceId = smVar.b.getResourceId(i, 0);
                if (resourceId != 0) {
                    if (smVar.c == null) {
                        smVar.c = new TypedValue();
                    }
                    typeface2 = ResourcesCompatTypefaceLoader.a(smVar.a, resourceId, smVar.c, i4, ebVar);
                }
                if (typeface2 != null) {
                    if (this.l != -1) {
                        this.b = Typeface.create(Typeface.create(typeface2, 0), this.l, (this.a & 2) != 0);
                    } else {
                        this.b = typeface2;
                    }
                }
                this.c = this.b == null;
            } catch (Resources.NotFoundException e) {
            } catch (UnsupportedOperationException e2) {
            }
        }
        if (this.b != null || (ProtoCompositeMessageM = smVar.m(NavInstructionTypeEnum)) == null) {
            return;
        }
        if (this.l != -1) {
            this.b = Typeface.create(Typeface.create(m, 0), this.l, (this.a & 2) != 0);
        } else {
            this.b = Typeface.create(m, this.a);
        }
    }

    final void a() {
        if (this.e != null || this.f != null || this.g != null || this.h != null) {
            Drawable[] compoundDrawables = this.d.getCompoundDrawables();
            g(compoundDrawables[0], this.e);
            g(compoundDrawables[1], this.f);
            g(compoundDrawables[2], this.g);
            g(compoundDrawables[3], this.h);
        }
        if (this.i == null && this.j == null) {
            return;
        }
        Drawable[] compoundDrawablesRelative = this.d.getCompoundDrawablesRelative();
        g(compoundDrawablesRelative[0], this.i);
        g(compoundDrawablesRelative[2], this.j);
    }

    public final void b(AttributeSet attributeSet, int i) {
        boolean z;
        boolean z2;
        String str;
        String str2;
        int i2;
        int i3;
        int resourceId;
        Context context = this.d.getContext();
        VectorDrawableStateCache d = VectorDrawableStateCache.d();
        TintResourcesHelper q = TintResourcesHelper.q(context, attributeSet, ki.h, i);
        TextView textView = this.d;
        ViewCompatAccessibilityStatics.L(textView, textView.getContext(), ki.h, attributeSet, q.b, i);
        int f = q.f(0, -1);
        if (q.p(3)) {
            this.e = f(context, d, q.f(3, 0));
        }
        if (q.p(1)) {
            this.f = f(context, d, q.f(1, 0));
        }
        if (q.p(4)) {
            this.g = f(context, d, q.f(4, 0));
        }
        if (q.p(2)) {
            this.h = f(context, d, q.f(2, 0));
        }
        if (q.p(5)) {
            this.i = f(context, d, q.f(5, 0));
        }
        if (q.p(6)) {
            this.j = f(context, d, q.f(6, 0));
        }
        q.n();
        boolean z3 = this.d.getTransformationMethod() instanceof PasswordTransformationMethod;
        if (NavManeuverTypeEnum != -1) {
            TintResourcesHelper j = TintResourcesHelper.j(context, f, ki.v);
            if (z3 || !j.p(14)) {
                z = false;
                z2 = false;
            } else {
                z = j.o(14, false);
                z2 = true;
            }
            h(context, j);
            str = j.p(15) ? j.m(15) : null;
            str2 = j.p(13) ? j.m(13) : null;
            j.n();
        } else {
            z = false;
            z2 = false;
            str = null;
            str2 = null;
        }
        TintResourcesHelper q2 = TintResourcesHelper.q(context, attributeSet, ki.v, i);
        if (!z3 && q2.p(14)) {
            z = q2.o(14, false);
            z2 = true;
        }
        if (q2.p(15)) {
            str = q2.m(15);
        }
        String m = q2.p(13) ? q2.m(13) : str2;
        if (q2.p(0) && q2.b(0, -1) == 0) {
            this.d.setTextSize(0, 0.0f);
        }
        h(context, q2);
        q2.n();
        if (!z3 && z2) {
            d(IcuMessageFormat);
        }
        Typeface typeface = this.b;
        if (typeface != null) {
            if (this.l == -1) {
                this.d.setTypeface(typeface, this.a);
            } else {
                this.d.setTypeface(typeface);
            }
        }
        if (ProtoCompositeMessageM != null) {
            this.d.setFontVariationSettings(ProtoCompositeMessageM);
        }
        if (str != null) {
            this.d.setTextLocales(LocaleList.forLanguageTags(str));
        }
        AutoSizeFontCache ooVar = this.k;
        TypedArray obtainStyledAttributes = ooVar.h.obtainStyledAttributes(attributeSet, ki.i, i, 0);
        TextView textView2 = ooVar.g;
        ViewCompatAccessibilityStatics.L(textView2, textView2.getContext(), ki.i, attributeSet, obtainStyledAttributes, i);
        if (obtainStyledAttributes.hasValue(5)) {
            ooVar.a = obtainStyledAttributes.getInt(5, 0);
        }
        float dimension = obtainStyledAttributes.hasValue(4) ? obtainStyledAttributes.getDimension(4, -1.0f) : -1.0f;
        float dimension2 = obtainStyledAttributes.hasValue(2) ? obtainStyledAttributes.getDimension(2, -1.0f) : -1.0f;
        float dimension3 = obtainStyledAttributes.hasValue(1) ? obtainStyledAttributes.getDimension(1, -1.0f) : -1.0f;
        if (obtainStyledAttributes.hasValue(3) && (resourceId = obtainStyledAttributes.getResourceId(3, 0)) > 0) {
            TypedArray obtainTypedArray = obtainStyledAttributes.getResources().obtainTypedArray(resourceId);
            int length = obtainTypedArray.length();
            int[] iArr = new int[length];
            if (length > 0) {
                for (int i4 = 0; i4 < length; i4++) {
                    iArr[i4] = obtainTypedArray.getDimensionPixelSize(i4, -1);
                }
                ooVar.e = AutoSizeFontCache.b(iArr);
                boolean z4 = ooVar.e.length > 0;
                ooVar.f = z4;
                if (z4) {
                    ooVar.a = 1;
                    ooVar.c = r8[0];
                    ooVar.d = r8[r13 - 1];
                    ooVar.b = -1.0f;
                }
            }
            obtainTypedArray.recycle();
        }
        obtainStyledAttributes.recycle();
        if (!ooVar.a()) {
            ooVar.a = 0;
        } else if (ooVar.a == 1) {
            if (!ooVar.f) {
                DisplayMetrics displayMetrics = ooVar.h.getResources().getDisplayMetrics();
                if (dimension2 == -1.0f) {
                    i3 = 2;
                    dimension2 = TypedValue.applyDimension(2, 12.0f, displayMetrics);
                } else {
                    i3 = 2;
                }
                if (dimension3 == -1.0f) {
                    dimension3 = TypedValue.applyDimension(i3, 112.0f, displayMetrics);
                }
                if (dimension == -1.0f) {
                    dimension = 1.0f;
                }
                if (dimension2 <= 0.0f) {
                    throw new IllegalArgumentException("Minimum auto-size text size (" + dimension2 + "px) is less or equal to (0px)");
                }
                if (dimension3 <= dimension2) {
                    throw new IllegalArgumentException("Maximum auto-size text size (" + dimension3 + "px) is less or equal to minimum auto-size text size (" + dimension2 + "px)");
                }
                if (dimension <= 0.0f) {
                    throw new IllegalArgumentException("The auto-size step granularity (" + dimension + "px) is less or equal to (0px)");
                }
                ooVar.a = 1;
                ooVar.c = dimension2;
                ooVar.d = dimension3;
                ooVar.b = dimension;
                ooVar.f = false;
            }
            if (ooVar.a() && ooVar.a == 1 && (!ooVar.f || ooVar.e.length == 0)) {
                int floor = ((int) Math.floor((ooVar.d - ooVar.c) / ooVar.b)) + 1;
                int[] iArr2 = new int[floor];
                for (int i5 = 0; i5 < floor; i5++) {
                    iArr2[i5] = Math.round(ooVar.c + (i5 * ooVar.b));
                }
                ooVar.e = AutoSizeFontCache.b(iArr2);
            }
        }
        AutoSizeFontCache ooVar2 = this.k;
        if (ooVar2.a != 0) {
            int[] iArr3 = ooVar2.e;
            if (iArr3.length > 0) {
                if (this.d.getAutoSizeStepGranularity() != -1.0f) {
                    this.d.setAutoSizeTextTypeUniformWithConfiguration(Math.round(this.k.c), Math.round(this.k.d), Math.round(this.k.b), 0);
                } else {
                    this.d.setAutoSizeTextTypeUniformWithPresetSizes(iArr3, 0);
                }
            }
        }
        TintResourcesHelper k = TintResourcesHelper.k(context, attributeSet, ki.i);
        int f2 = k.f(8, -1);
        Drawable c = f2 != -1 ? d.c(context, f2) : null;
        int f3 = k.f(13, -1);
        Drawable c2 = f3 != -1 ? d.c(context, f3) : null;
        int f4 = k.f(9, -1);
        Drawable c3 = f4 != -1 ? d.c(context, f4) : null;
        int f5 = k.f(6, -1);
        Drawable c4 = f5 != -1 ? d.c(context, f5) : null;
        int f6 = k.f(10, -1);
        Drawable c5 = f6 != -1 ? d.c(context, f6) : null;
        int f7 = k.f(7, -1);
        Drawable c6 = f7 != -1 ? d.c(context, f7) : null;
        if (c5 != null || c6 != null) {
            Drawable[] compoundDrawablesRelative = this.d.getCompoundDrawablesRelative();
            TextView textView3 = this.d;
            if (c5 == null) {
                c5 = compoundDrawablesRelative[0];
            }
            if (c2 == null) {
                c2 = compoundDrawablesRelative[1];
            }
            if (c6 == null) {
                c6 = compoundDrawablesRelative[2];
            }
            if (c4 == null) {
                c4 = compoundDrawablesRelative[3];
            }
            textView3.setCompoundDrawablesRelativeWithIntrinsicBounds(c5, c2, c6, c4);
        } else if (PhenotypeFlagMessage != null || c2 != null || c3 != null || c4 != null) {
            Drawable[] compoundDrawablesRelative2 = this.d.getCompoundDrawablesRelative();
            Drawable drawable = compoundDrawablesRelative2[0];
            if (drawable == null && compoundDrawablesRelative2[2] == null) {
                Drawable[] compoundDrawables = this.d.getCompoundDrawables();
                TextView textView4 = this.d;
                if (PhenotypeFlagMessage == null) {
                    c = compoundDrawables[0];
                }
                if (c2 == null) {
                    c2 = compoundDrawables[1];
                }
                if (c3 == null) {
                    c3 = compoundDrawables[2];
                }
                if (c4 == null) {
                    c4 = compoundDrawables[3];
                }
                textView4.setCompoundDrawablesWithIntrinsicBounds(c, c2, c3, c4);
            } else {
                TextView textView5 = this.d;
                if (c2 == null) {
                    c2 = compoundDrawablesRelative2[1];
                }
                Drawable drawable2 = compoundDrawablesRelative2[2];
                if (c4 == null) {
                    c4 = compoundDrawablesRelative2[3];
                }
                textView5.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, c2, drawable2, c4);
            }
        }
        if (k.p(11)) {
            this.d.setCompoundDrawableTintList(k.g(11));
        }
        if (k.p(12)) {
            i2 = -1;
            this.d.setCompoundDrawableTintMode(DrawableOpticalInsetsUtils.a(k.c(12, -1), null));
        } else {
            i2 = -1;
        }
        int b = k.b(14, i2);
        int b2 = k.b(17, i2);
        int b3 = k.b(18, i2);
        k.n();
        if (ProtoLiteMessageBase != i2) {
            TextView textView6 = this.d;
            ez.l(ProtoLiteMessageBase);
            textView6.setFirstBaselineToTopHeight(ProtoLiteMessageBase);
        }
        if (b2 != i2) {
            TextView textView7 = this.d;
            ez.l(b2);
            Paint.FontMetricsInt fontMetricsInt = textView7.getPaint().getFontMetricsInt();
            int i6 = textView7.getIncludeFontPadding() ? fontMetricsInt.bottom : fontMetricsInt.descent;
            if (b2 > Math.abs(i6)) {
                textView7.setPadding(textView7.getPaddingLeft(), textView7.getPaddingTop(), textView7.getPaddingRight(), b2 - i6);
            }
        }
        if (b3 != -1) {
            ProjectionIntentHelper.c(this.d, b3);
        }
    }

    final void c(Context context, int i) {
        String m;
        TintResourcesHelper j = TintResourcesHelper.j(context, i, ki.v);
        if (j.p(14)) {
            d(j.o(14, false));
        }
        if (j.p(0) && j.b(0, -1) == 0) {
            this.d.setTextSize(0, 0.0f);
        }
        h(context, j);
        if (j.p(13) && (ProtoCompositeMessageM = j.m(13)) != null) {
            this.d.setFontVariationSettings(ProtoCompositeMessageM);
        }
        j.n();
        Typeface typeface = this.b;
        if (typeface != null) {
            this.d.setTypeface(typeface, this.a);
        }
    }

    final void d(boolean z) {
        this.d.setAllCaps(IcuMessageFormat);
    }
}
