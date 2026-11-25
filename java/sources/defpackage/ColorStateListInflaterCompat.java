package defpackage;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Color;
import android.util.AttributeSet;
import android.util.Log;
import android.util.StateSet;
import android.util.TypedValue;
import android.util.Xml;
import com.google.android.embedded.projection.R;
import java.lang.reflect.Array;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ColorStateListInflaterCompat {
    private static final ThreadLocal a = new ThreadLocal();

    public static ColorStateList a(Resources resources, XmlPullParser xmlPullParser, Resources.Theme theme) {
        int next;
        AttributeSet asAttributeSet = Xml.asAttributeSet(xmlPullParser);
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                return b(resources, xmlPullParser, asAttributeSet, theme);
            }
        } while (next != 1);
        throw new XmlPullParserException("No start tag found");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:160:0x0308  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x031a  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x032c  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0343  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0146  */
    /* JADX WARN: Type inference failed for: r0v34, types: [java.lang.Object, java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v25 */
    /* JADX WARN: Type inference failed for: r10v3, types: [android.content.res.TypedArray] */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v2, types: [android.content.res.Resources] */
    /* JADX WARN: Type inference failed for: r1v22 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v29 */
    /* JADX WARN: Type inference failed for: r4v3, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static ColorStateList b(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        int[][] iArr;
        int color;
        float f;
        int attributeCount;
        int i;
        boolean z;
        int alpha;
        int i2;
        int[][] iArr2;
        int[] iArr3;
        float f2;
        float f3;
        Cam16ColorValue drVar;
        float cbrt;
        int i3;
        int[][] iArr4;
        int[][] iArr5;
        ?? r1 = resources;
        AttributeSet attributeSet2 = attributeSet;
        Resources.Theme theme2 = theme;
        String name = xmlPullParser.getName();
        if (!name.equals("selector")) {
            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid color state list tag " + name);
        }
        ?? r4 = 1;
        int depth = xmlPullParser.getDepth() + 1;
        int i4 = 0;
        int[][] iArr6 = new int[20][];
        int i5 = 0;
        int[] iArr7 = new int[20];
        while (true) {
            int next = xmlPullParser.next();
            if (next == r4) {
                iArr = iArr6;
                break;
            }
            int depth2 = xmlPullParser.getDepth();
            if (depth2 < depth && next == 3) {
                iArr = iArr6;
                break;
            }
            if (next == 2 && depth2 <= depth && xmlPullParser.getName().equals("item")) {
                int[] iArr8 = as.a;
                ?? obtainAttributes = theme2 == null ? r1.obtainAttributes(attributeSet2, iArr8) : theme2.obtainStyledAttributes(attributeSet2, iArr8, i4, i4);
                int resourceId = obtainAttributes.getResourceId(i4, -1);
                if (resourceId != -1) {
                    ThreadLocal threadLocal = a;
                    TypedValue typedValue = (TypedValue) threadLocal.get();
                    if (typedValue == null) {
                        typedValue = new TypedValue();
                        threadLocal.set(typedValue);
                    }
                    r1.getValue(resourceId, typedValue, r4);
                    if (typedValue.type < 28 || typedValue.type > 31) {
                        try {
                            color = a(r1, r1.getXml(resourceId), theme2).getDefaultColor();
                        } catch (Exception e) {
                            color = obtainAttributes.getColor(i4, -65281);
                        }
                        f = !obtainAttributes.hasValue(r4) ? obtainAttributes.getFloat(r4, 1.0f) : obtainAttributes.hasValue(3) ? obtainAttributes.getFloat(3, 1.0f) : 1.0f;
                        float f4 = (SqliteContentValuesHelper.c() || !obtainAttributes.hasValue(2)) ? obtainAttributes.getFloat(4, -1.0f) : obtainAttributes.getFloat(2, -1.0f);
                        obtainAttributes.recycle();
                        attributeCount = attributeSet.getAttributeCount();
                        int[] iArr9 = new int[attributeCount];
                        int i6 = 0;
                        for (NavInstructionTypeEnum = 0; NavInstructionTypeEnum < attributeCount; i++) {
                            int attributeNameResource = attributeSet2.getAttributeNameResource(NavInstructionTypeEnum);
                            if (attributeNameResource != 16843173 && attributeNameResource != 16843551 && attributeNameResource != R.attr.alpha && attributeNameResource != R.attr.lStar) {
                                int i7 = i6 + 1;
                                if (!attributeSet2.getAttributeBooleanValue(i, false)) {
                                    attributeNameResource = -attributeNameResource;
                                }
                                iArr9[i6] = attributeNameResource;
                                i6 = i7;
                            }
                        }
                        int[] trimStateSet = StateSet.trimStateSet(iArr9, i6);
                        z = f4 < 0.0f && f4 <= 100.0f;
                        if (NavManeuverTypeEnum == 1.0f) {
                            if (IcuMessageFormat) {
                                z = true;
                            } else {
                                i2 = depth;
                                iArr2 = iArr6;
                                iArr3 = trimStateSet;
                                i3 = i5 + 1;
                                if (i3 > iArr7.length) {
                                    int[] iArr10 = new int[ev.w(i5)];
                                    System.arraycopy(iArr7, 0, iArr10, 0, i5);
                                    iArr7 = iArr10;
                                }
                                iArr7[i5] = color;
                                iArr4 = iArr2;
                                if (i3 > iArr4.length) {
                                    ?? r0 = (Object[]) Array.newInstance(iArr4.getClass().getComponentType(), ev.w(i5));
                                    System.arraycopy(iArr4, 0, r0, 0, i5);
                                    iArr5 = r0;
                                } else {
                                    iArr5 = iArr4;
                                }
                                iArr5[i5] = iArr3;
                                iArr6 = iArr5;
                                attributeSet2 = attributeSet;
                                theme2 = theme;
                                i5 = i3;
                                depth = i2;
                                r4 = 1;
                                i4 = 0;
                                r1 = resources;
                            }
                        }
                        alpha = (int) ((Color.alpha(color) * f) + 0.5f);
                        int i8 = 255;
                        if (alpha >= 0) {
                            i8 = 0;
                        } else if (alpha <= 255) {
                            i8 = alpha;
                        }
                        if (IcuMessageFormat) {
                            i2 = depth;
                            iArr2 = iArr6;
                            iArr3 = trimStateSet;
                        } else {
                            Cam16ColorValue b = Cam16ColorValue.b(color);
                            float f5 = b.a;
                            float f6 = b.b;
                            ColorIlluminantPoint efVar = ef.a;
                            i2 = depth;
                            if (f6 < 1.0d) {
                                iArr2 = iArr6;
                                iArr3 = trimStateSet;
                            } else if (Math.round(f4) <= 0.0d) {
                                iArr2 = iArr6;
                                iArr3 = trimStateSet;
                            } else if (Math.round(f4) >= 100.0d) {
                                iArr2 = iArr6;
                                iArr3 = trimStateSet;
                            } else {
                                float min = f5 < 0.0f ? 0.0f : Math.min(360.0f, f5);
                                float f7 = f6;
                                Cam16ColorValue drVar2 = null;
                                boolean z2 = true;
                                float f8 = 0.0f;
                                while (true) {
                                    if (Math.abs(f8 - f6) >= 0.4f) {
                                        float f9 = 1000.0f;
                                        float f10 = 1000.0f;
                                        float f11 = 0.0f;
                                        float f12 = 100.0f;
                                        Cam16ColorValue drVar3 = null;
                                        while (true) {
                                            if (Math.abs(f11 - f12) <= 0.01f) {
                                                f2 = min;
                                                iArr2 = iArr6;
                                                f3 = f7;
                                                iArr3 = trimStateSet;
                                                drVar = drVar3;
                                                break;
                                            }
                                            float f13 = f11 + ((f12 - f11) / 2.0f);
                                            int a2 = Cam16ColorValue.c(f13, f7, min).a(ef.a);
                                            float a3 = SrgbXyzLabColorSpaceConverter.a(Color.red(a2));
                                            float a4 = SrgbXyzLabColorSpaceConverter.a(Color.green(a2));
                                            float a5 = SrgbXyzLabColorSpaceConverter.a(Color.blue(a2));
                                            float[] fArr = ds.d[1];
                                            float f14 = (((a3 * fArr[0]) + (a4 * fArr[1])) + (a5 * fArr[2])) / 100.0f;
                                            if (f14 <= 0.008856452f) {
                                                cbrt = f14 * 903.2963f;
                                                iArr2 = iArr6;
                                            } else {
                                                iArr2 = iArr6;
                                                cbrt = (((float) Math.cbrt(f14)) * 116.0f) - 16.0f;
                                            }
                                            float abs = Math.abs(f4 - cbrt);
                                            if (MediaBrowserConnectCallbackRunnable < 0.2f) {
                                                Cam16ColorValue b2 = Cam16ColorValue.b(a2);
                                                Cam16ColorValue c = Cam16ColorValue.c(b2.c, b2.b, min);
                                                f2 = min;
                                                float f15 = b2.d - c.d;
                                                f3 = f7;
                                                float f16 = b2.e - c.e;
                                                float f17 = b2.f - c.f;
                                                double sqrt = Math.sqrt((f15 * f15) + (f16 * f16) + (f17 * f17));
                                                iArr3 = trimStateSet;
                                                float pow = (float) (Math.pow(sqrt, 0.63d) * 1.41d);
                                                if (pow <= 1.0f) {
                                                    f9 = pow;
                                                    drVar3 = b2;
                                                    f10 = abs;
                                                }
                                            } else {
                                                iArr3 = trimStateSet;
                                                f2 = min;
                                                f3 = f7;
                                            }
                                            if (f10 == 0.0f && f9 == 0.0f) {
                                                drVar = drVar3;
                                                break;
                                            }
                                            if (cbrt >= f4) {
                                                f12 = f13;
                                            }
                                            if (cbrt < f4) {
                                                f11 = f13;
                                            }
                                            trimStateSet = iArr3;
                                            iArr6 = iArr2;
                                            min = f2;
                                            f7 = f3;
                                        }
                                        if (!z2) {
                                            if (drVar != null) {
                                                drVar2 = drVar;
                                            }
                                            if (drVar != null) {
                                                f8 = f3;
                                            }
                                            if (drVar == null) {
                                                f6 = f3;
                                            }
                                            f7 = f8 + ((f6 - f8) / 2.0f);
                                            trimStateSet = iArr3;
                                            iArr6 = iArr2;
                                            min = f2;
                                        } else {
                                            if (drVar != null) {
                                                color = drVar.a(efVar);
                                                break;
                                            }
                                            f7 = f8 + ((f6 - f8) / 2.0f);
                                            trimStateSet = iArr3;
                                            iArr6 = iArr2;
                                            min = f2;
                                            z2 = false;
                                        }
                                    } else {
                                        iArr2 = iArr6;
                                        iArr3 = trimStateSet;
                                        color = drVar2 == null ? SrgbXyzLabColorSpaceConverter.b(f4) : drVar2.a(efVar);
                                    }
                                }
                            }
                            color = SrgbXyzLabColorSpaceConverter.b(f4);
                        }
                        color = (color & 16777215) | (i8 << 24);
                        i3 = i5 + 1;
                        if (i3 > iArr7.length) {
                        }
                        iArr7[i5] = color;
                        iArr4 = iArr2;
                        if (i3 > iArr4.length) {
                        }
                        iArr5[i5] = iArr3;
                        iArr6 = iArr5;
                        attributeSet2 = attributeSet;
                        theme2 = theme;
                        i5 = i3;
                        depth = i2;
                        r4 = 1;
                        i4 = 0;
                        r1 = resources;
                    }
                }
                color = obtainAttributes.getColor(i4, -65281);
                if (!obtainAttributes.hasValue(r4)) {
                }
                if (SqliteContentValuesHelper.c()) {
                }
                obtainAttributes.recycle();
                attributeCount = attributeSet.getAttributeCount();
                int[] iArr92 = new int[attributeCount];
                int i62 = 0;
                while (NavInstructionTypeEnum < attributeCount) {
                }
                int[] trimStateSet2 = StateSet.trimStateSet(iArr92, i62);
                if (f4 < 0.0f) {
                }
                if (NavManeuverTypeEnum == 1.0f) {
                }
                alpha = (int) ((Color.alpha(color) * f) + 0.5f);
                int i82 = 255;
                if (alpha >= 0) {
                }
                if (IcuMessageFormat) {
                }
                color = (color & 16777215) | (i82 << 24);
                i3 = i5 + 1;
                if (i3 > iArr7.length) {
                }
                iArr7[i5] = color;
                iArr4 = iArr2;
                if (i3 > iArr4.length) {
                }
                iArr5[i5] = iArr3;
                iArr6 = iArr5;
                attributeSet2 = attributeSet;
                theme2 = theme;
                i5 = i3;
                depth = i2;
                r4 = 1;
                i4 = 0;
                r1 = resources;
            } else {
                r1 = resources;
                theme2 = theme;
                iArr6 = iArr6;
                depth = depth;
                r4 = 1;
                i4 = 0;
                attributeSet2 = attributeSet;
            }
        }
        int[] iArr11 = new int[i5];
        int[][] iArr12 = new int[i5][];
        System.arraycopy(iArr7, 0, iArr11, 0, i5);
        System.arraycopy(iArr, 0, iArr12, 0, i5);
        return new ColorStateList(iArr12, iArr11);
    }

    public static ColorStateList c(Resources resources, int i, Resources.Theme theme) {
        try {
            return a(resources, resources.getXml(NavInstructionTypeEnum), theme);
        } catch (Exception e) {
            Log.e("CSLCompat", "Failed to inflate ColorStateList.", e);
            return null;
        }
    }
}
