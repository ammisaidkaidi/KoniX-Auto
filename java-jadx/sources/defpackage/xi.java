package defpackage;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.ColorDrawable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.util.TypedValue;
import android.util.Xml;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Locale;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class xi {
    public static final int[] a = {0, 4, 8};
    private static final SparseIntArray c;
    private static final SparseIntArray d;
    private final HashMap e = new HashMap();
    public final HashMap b = new HashMap();

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        c = sparseIntArray;
        SparseIntArray sparseIntArray2 = new SparseIntArray();
        d = sparseIntArray2;
        int[] iArr = xm.a;
        sparseIntArray.append(81, 25);
        sparseIntArray.append(82, 26);
        sparseIntArray.append(84, 29);
        sparseIntArray.append(85, 30);
        sparseIntArray.append(91, 36);
        sparseIntArray.append(90, 35);
        sparseIntArray.append(62, 4);
        sparseIntArray.append(61, 3);
        sparseIntArray.append(57, 1);
        sparseIntArray.append(59, 91);
        sparseIntArray.append(58, 92);
        sparseIntArray.append(100, 6);
        sparseIntArray.append(101, 7);
        sparseIntArray.append(69, 17);
        sparseIntArray.append(70, 18);
        sparseIntArray.append(71, 19);
        sparseIntArray.append(0, 27);
        sparseIntArray.append(86, 32);
        sparseIntArray.append(87, 33);
        sparseIntArray.append(68, 10);
        sparseIntArray.append(67, 9);
        sparseIntArray.append(105, 13);
        sparseIntArray.append(108, 16);
        sparseIntArray.append(106, 14);
        sparseIntArray.append(103, 11);
        sparseIntArray.append(107, 15);
        sparseIntArray.append(104, 12);
        sparseIntArray.append(94, 40);
        sparseIntArray.append(79, 39);
        sparseIntArray.append(78, 41);
        sparseIntArray.append(93, 42);
        sparseIntArray.append(77, 20);
        sparseIntArray.append(92, 37);
        sparseIntArray.append(66, 5);
        sparseIntArray.append(80, 87);
        sparseIntArray.append(89, 87);
        sparseIntArray.append(83, 87);
        sparseIntArray.append(60, 87);
        sparseIntArray.append(56, 87);
        sparseIntArray.append(5, 24);
        sparseIntArray.append(7, 28);
        sparseIntArray.append(23, 31);
        sparseIntArray.append(24, 8);
        sparseIntArray.append(6, 34);
        sparseIntArray.append(8, 2);
        sparseIntArray.append(3, 23);
        sparseIntArray.append(4, 21);
        sparseIntArray.append(95, 95);
        sparseIntArray.append(72, 96);
        sparseIntArray.append(2, 22);
        sparseIntArray.append(13, 43);
        sparseIntArray.append(26, 44);
        sparseIntArray.append(21, 45);
        sparseIntArray.append(22, 46);
        sparseIntArray.append(20, 60);
        sparseIntArray.append(18, 47);
        sparseIntArray.append(19, 48);
        sparseIntArray.append(14, 49);
        sparseIntArray.append(15, 50);
        sparseIntArray.append(16, 51);
        sparseIntArray.append(17, 52);
        sparseIntArray.append(25, 53);
        sparseIntArray.append(96, 54);
        sparseIntArray.append(73, 55);
        sparseIntArray.append(97, 56);
        sparseIntArray.append(74, 57);
        sparseIntArray.append(98, 58);
        sparseIntArray.append(75, 59);
        sparseIntArray.append(63, 61);
        sparseIntArray.append(65, 62);
        sparseIntArray.append(64, 63);
        sparseIntArray.append(28, 64);
        sparseIntArray.append(120, 65);
        sparseIntArray.append(35, 66);
        sparseIntArray.append(121, 67);
        sparseIntArray.append(112, 79);
        sparseIntArray.append(1, 38);
        sparseIntArray.append(111, 68);
        sparseIntArray.append(99, 69);
        sparseIntArray.append(76, 70);
        sparseIntArray.append(110, 97);
        sparseIntArray.append(32, 71);
        sparseIntArray.append(30, 72);
        sparseIntArray.append(31, 73);
        sparseIntArray.append(33, 74);
        sparseIntArray.append(29, 75);
        sparseIntArray.append(113, 76);
        sparseIntArray.append(88, 77);
        sparseIntArray.append(122, 78);
        sparseIntArray.append(55, 80);
        sparseIntArray.append(54, 81);
        sparseIntArray.append(115, 82);
        sparseIntArray.append(119, 83);
        sparseIntArray.append(118, 84);
        sparseIntArray.append(117, 85);
        sparseIntArray.append(116, 86);
        sparseIntArray2.append(84, 6);
        sparseIntArray2.append(84, 7);
        sparseIntArray2.append(0, 27);
        sparseIntArray2.append(88, 13);
        sparseIntArray2.append(91, 16);
        sparseIntArray2.append(89, 14);
        sparseIntArray2.append(86, 11);
        sparseIntArray2.append(90, 15);
        sparseIntArray2.append(87, 12);
        sparseIntArray2.append(77, 40);
        sparseIntArray2.append(70, 39);
        sparseIntArray2.append(69, 41);
        sparseIntArray2.append(76, 42);
        sparseIntArray2.append(68, 20);
        sparseIntArray2.append(75, 37);
        sparseIntArray2.append(59, 5);
        sparseIntArray2.append(71, 87);
        sparseIntArray2.append(74, 87);
        sparseIntArray2.append(72, 87);
        sparseIntArray2.append(56, 87);
        sparseIntArray2.append(55, 87);
        sparseIntArray2.append(5, 24);
        sparseIntArray2.append(7, 28);
        sparseIntArray2.append(23, 31);
        sparseIntArray2.append(24, 8);
        sparseIntArray2.append(6, 34);
        sparseIntArray2.append(8, 2);
        sparseIntArray2.append(3, 23);
        sparseIntArray2.append(4, 21);
        sparseIntArray2.append(78, 95);
        sparseIntArray2.append(63, 96);
        sparseIntArray2.append(2, 22);
        sparseIntArray2.append(13, 43);
        sparseIntArray2.append(26, 44);
        sparseIntArray2.append(21, 45);
        sparseIntArray2.append(22, 46);
        sparseIntArray2.append(20, 60);
        sparseIntArray2.append(18, 47);
        sparseIntArray2.append(19, 48);
        sparseIntArray2.append(14, 49);
        sparseIntArray2.append(15, 50);
        sparseIntArray2.append(16, 51);
        sparseIntArray2.append(17, 52);
        sparseIntArray2.append(25, 53);
        sparseIntArray2.append(79, 54);
        sparseIntArray2.append(64, 55);
        sparseIntArray2.append(80, 56);
        sparseIntArray2.append(65, 57);
        sparseIntArray2.append(81, 58);
        sparseIntArray2.append(66, 59);
        sparseIntArray2.append(58, 62);
        sparseIntArray2.append(57, 63);
        sparseIntArray2.append(28, 64);
        sparseIntArray2.append(104, 65);
        sparseIntArray2.append(34, 66);
        sparseIntArray2.append(105, 67);
        sparseIntArray2.append(95, 79);
        sparseIntArray2.append(1, 38);
        sparseIntArray2.append(96, 98);
        sparseIntArray2.append(94, 68);
        sparseIntArray2.append(82, 69);
        sparseIntArray2.append(67, 70);
        sparseIntArray2.append(32, 71);
        sparseIntArray2.append(30, 72);
        sparseIntArray2.append(31, 73);
        sparseIntArray2.append(33, 74);
        sparseIntArray2.append(29, 75);
        sparseIntArray2.append(97, 76);
        sparseIntArray2.append(73, 77);
        sparseIntArray2.append(106, 78);
        sparseIntArray2.append(54, 80);
        sparseIntArray2.append(53, 81);
        sparseIntArray2.append(99, 82);
        sparseIntArray2.append(103, 83);
        sparseIntArray2.append(102, 84);
        sparseIntArray2.append(101, 85);
        sparseIntArray2.append(100, 86);
        sparseIntArray2.append(93, 97);
    }

    public static int a(TypedArray typedArray, int i, int i2) {
        int resourceId = typedArray.getResourceId(i, i2);
        return resourceId == -1 ? typedArray.getInt(i, -1) : resourceId;
    }

    static void e(Object obj, TypedArray typedArray, int i, int i2) {
        boolean z = true;
        int i3 = 0;
        switch (typedArray.peekValue(i).type) {
            case 3:
                String string = typedArray.getString(i);
                if (string == null) {
                    return;
                }
                int indexOf = string.indexOf(61);
                int length = string.length();
                if (indexOf <= 0 || indexOf >= length - 1) {
                    return;
                }
                String substring = string.substring(0, indexOf);
                String substring2 = string.substring(indexOf + 1);
                if (substring2.length() > 0) {
                    String trim = substring.trim();
                    String trim2 = substring2.trim();
                    if ("ratio".equalsIgnoreCase(trim)) {
                        if (obj instanceof wy) {
                            wy wyVar = (wy) obj;
                            if (i2 == 0) {
                                wyVar.width = 0;
                            } else {
                                wyVar.height = 0;
                            }
                            f(wyVar, trim2);
                            return;
                        }
                        if (obj instanceof xe) {
                            ((xe) obj).z = trim2;
                            return;
                        } else {
                            if (obj instanceof xc) {
                                ((xc) obj).c(5, trim2);
                                return;
                            }
                            return;
                        }
                    }
                    if ("weight".equalsIgnoreCase(trim)) {
                        try {
                            float parseFloat = Float.parseFloat(trim2);
                            if (obj instanceof wy) {
                                wy wyVar2 = (wy) obj;
                                if (i2 == 0) {
                                    wyVar2.width = 0;
                                    wyVar2.G = parseFloat;
                                    return;
                                } else {
                                    wyVar2.height = 0;
                                    wyVar2.H = parseFloat;
                                    return;
                                }
                            }
                            if (obj instanceof xe) {
                                xe xeVar = (xe) obj;
                                if (i2 == 0) {
                                    xeVar.d = 0;
                                    xeVar.V = parseFloat;
                                    return;
                                } else {
                                    xeVar.e = 0;
                                    xeVar.U = parseFloat;
                                    return;
                                }
                            }
                            if (obj instanceof xc) {
                                xc xcVar = (xc) obj;
                                if (i2 == 0) {
                                    xcVar.b(23, 0);
                                    xcVar.a(39, parseFloat);
                                    return;
                                } else {
                                    xcVar.b(21, 0);
                                    xcVar.a(40, parseFloat);
                                    return;
                                }
                            }
                            return;
                        } catch (NumberFormatException e) {
                            return;
                        }
                    }
                    if ("parent".equalsIgnoreCase(trim)) {
                        try {
                            float max = Math.max(0.0f, Math.min(1.0f, Float.parseFloat(trim2)));
                            if (obj instanceof wy) {
                                wy wyVar3 = (wy) obj;
                                if (i2 == 0) {
                                    wyVar3.width = 0;
                                    wyVar3.Q = max;
                                    wyVar3.K = 2;
                                    return;
                                } else {
                                    wyVar3.height = 0;
                                    wyVar3.R = max;
                                    wyVar3.L = 2;
                                    return;
                                }
                            }
                            if (obj instanceof xe) {
                                xe xeVar2 = (xe) obj;
                                if (i2 == 0) {
                                    xeVar2.d = 0;
                                    xeVar2.ae = max;
                                    xeVar2.Y = 2;
                                    return;
                                } else {
                                    xeVar2.e = 0;
                                    xeVar2.af = max;
                                    xeVar2.Z = 2;
                                    return;
                                }
                            }
                            if (obj instanceof xc) {
                                xc xcVar2 = (xc) obj;
                                if (i2 == 0) {
                                    xcVar2.b(23, 0);
                                    xcVar2.b(54, 2);
                                    return;
                                } else {
                                    xcVar2.b(21, 0);
                                    xcVar2.b(55, 2);
                                    return;
                                }
                            }
                            return;
                        } catch (NumberFormatException e2) {
                            return;
                        }
                    }
                    return;
                }
                return;
            case 4:
            default:
                int i4 = typedArray.getInt(i, 0);
                switch (i4) {
                    case -4:
                        i3 = -2;
                        break;
                    case -2:
                    case -1:
                        i3 = i4;
                    case -3:
                        z = false;
                        break;
                    default:
                        z = false;
                        break;
                }
            case 5:
                i3 = typedArray.getDimensionPixelSize(i, 0);
                z = false;
                break;
        }
        if (obj instanceof wy) {
            wy wyVar4 = (wy) obj;
            if (i2 == 0) {
                wyVar4.width = i3;
                wyVar4.V = z;
                return;
            } else {
                wyVar4.height = i3;
                wyVar4.W = z;
                return;
            }
        }
        if (obj instanceof xe) {
            xe xeVar3 = (xe) obj;
            if (i2 == 0) {
                xeVar3.d = i3;
                xeVar3.am = z;
                return;
            } else {
                xeVar3.e = i3;
                xeVar3.an = z;
                return;
            }
        }
        if (obj instanceof xc) {
            xc xcVar3 = (xc) obj;
            if (i2 == 0) {
                xcVar3.b(23, i3);
                xcVar3.d(80, z);
            } else {
                xcVar3.b(21, i3);
                xcVar3.d(81, z);
            }
        }
    }

    static void f(wy wyVar, String str) {
        int i;
        if (str != null) {
            int length = str.length();
            int indexOf = str.indexOf(44);
            if (indexOf <= 0 || indexOf >= length - 1) {
                i = -1;
            } else {
                String substring = str.substring(0, indexOf);
                r3 = indexOf + 1;
                i = substring.equalsIgnoreCase("W") ? 0 : substring.equalsIgnoreCase("H") ? 1 : -1;
            }
            int indexOf2 = str.indexOf(58);
            try {
                if (indexOf2 < 0 || indexOf2 >= length - 1) {
                    String substring2 = str.substring(r3);
                    if (substring2.length() > 0) {
                        Float.parseFloat(substring2);
                    }
                } else {
                    String substring3 = str.substring(r3, indexOf2);
                    String substring4 = str.substring(indexOf2 + 1);
                    if (substring3.length() > 0 && substring4.length() > 0) {
                        float parseFloat = Float.parseFloat(substring3);
                        float parseFloat2 = Float.parseFloat(substring4);
                        if (parseFloat > 0.0f && parseFloat2 > 0.0f) {
                            if (i == 1) {
                                Math.abs(parseFloat2 / parseFloat);
                            } else {
                                Math.abs(parseFloat / parseFloat2);
                            }
                        }
                    }
                }
            } catch (NumberFormatException e) {
            }
        }
        wyVar.F = str;
    }

    public static final int[] g(View view, String str) {
        int length;
        int i;
        HashMap hashMap;
        String[] split = str.split(",");
        Context context = view.getContext();
        int[] iArr = new int[split.length];
        int i2 = 0;
        int i3 = 0;
        while (true) {
            length = split.length;
            if (i2 >= length) {
                break;
            }
            String trim = split[i2].trim();
            Object obj = null;
            try {
                i = xl.class.getField(trim).getInt(null);
            } catch (Exception e) {
                i = 0;
            }
            if (i == 0) {
                i = context.getResources().getIdentifier(trim, "id", context.getPackageName());
            }
            if (i == 0) {
                if (view.isInEditMode() && (view.getParent() instanceof ConstraintLayout)) {
                    ConstraintLayout constraintLayout = (ConstraintLayout) view.getParent();
                    if ((trim instanceof String) && (hashMap = constraintLayout.f) != null && hashMap.containsKey(trim)) {
                        obj = constraintLayout.f.get(trim);
                    }
                    if (obj != null && (obj instanceof Integer)) {
                        i = ((Integer) obj).intValue();
                    }
                }
                i = 0;
            }
            iArr[i3] = i;
            i2++;
            i3++;
        }
        return i3 != length ? Arrays.copyOf(iArr, i3) : iArr;
    }

    private static final xd h(Context context, AttributeSet attributeSet, boolean z) {
        xd xdVar = new xd();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, z ? xm.c : xm.a);
        if (z) {
            i(xdVar, obtainStyledAttributes);
        } else {
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index != 1 && index != 23 && index != 24) {
                    xdVar.c.b = true;
                    xdVar.d.c = true;
                    xdVar.b.a = true;
                    xdVar.e.b = true;
                }
                SparseIntArray sparseIntArray = c;
                switch (sparseIntArray.get(index)) {
                    case 1:
                        xe xeVar = xdVar.d;
                        xeVar.q = a(obtainStyledAttributes, index, xeVar.q);
                        break;
                    case 2:
                        xe xeVar2 = xdVar.d;
                        xeVar2.J = obtainStyledAttributes.getDimensionPixelSize(index, xeVar2.J);
                        break;
                    case 3:
                        xe xeVar3 = xdVar.d;
                        xeVar3.p = a(obtainStyledAttributes, index, xeVar3.p);
                        break;
                    case 4:
                        xe xeVar4 = xdVar.d;
                        xeVar4.o = a(obtainStyledAttributes, index, xeVar4.o);
                        break;
                    case 5:
                        xdVar.d.z = obtainStyledAttributes.getString(index);
                        break;
                    case 6:
                        xe xeVar5 = xdVar.d;
                        xeVar5.D = obtainStyledAttributes.getDimensionPixelOffset(index, xeVar5.D);
                        break;
                    case 7:
                        xe xeVar6 = xdVar.d;
                        xeVar6.E = obtainStyledAttributes.getDimensionPixelOffset(index, xeVar6.E);
                        break;
                    case 8:
                        xe xeVar7 = xdVar.d;
                        xeVar7.K = obtainStyledAttributes.getDimensionPixelSize(index, xeVar7.K);
                        break;
                    case 9:
                        xe xeVar8 = xdVar.d;
                        xeVar8.w = a(obtainStyledAttributes, index, xeVar8.w);
                        break;
                    case 10:
                        xe xeVar9 = xdVar.d;
                        xeVar9.v = a(obtainStyledAttributes, index, xeVar9.v);
                        break;
                    case 11:
                        xe xeVar10 = xdVar.d;
                        xeVar10.Q = obtainStyledAttributes.getDimensionPixelSize(index, xeVar10.Q);
                        break;
                    case 12:
                        xe xeVar11 = xdVar.d;
                        xeVar11.R = obtainStyledAttributes.getDimensionPixelSize(index, xeVar11.R);
                        break;
                    case 13:
                        xe xeVar12 = xdVar.d;
                        xeVar12.N = obtainStyledAttributes.getDimensionPixelSize(index, xeVar12.N);
                        break;
                    case 14:
                        xe xeVar13 = xdVar.d;
                        xeVar13.P = obtainStyledAttributes.getDimensionPixelSize(index, xeVar13.P);
                        break;
                    case 15:
                        xe xeVar14 = xdVar.d;
                        xeVar14.S = obtainStyledAttributes.getDimensionPixelSize(index, xeVar14.S);
                        break;
                    case 16:
                        xe xeVar15 = xdVar.d;
                        xeVar15.O = obtainStyledAttributes.getDimensionPixelSize(index, xeVar15.O);
                        break;
                    case 17:
                        xe xeVar16 = xdVar.d;
                        xeVar16.f = obtainStyledAttributes.getDimensionPixelOffset(index, xeVar16.f);
                        break;
                    case 18:
                        xe xeVar17 = xdVar.d;
                        xeVar17.g = obtainStyledAttributes.getDimensionPixelOffset(index, xeVar17.g);
                        break;
                    case 19:
                        xe xeVar18 = xdVar.d;
                        xeVar18.h = obtainStyledAttributes.getFloat(index, xeVar18.h);
                        break;
                    case 20:
                        xe xeVar19 = xdVar.d;
                        xeVar19.x = obtainStyledAttributes.getFloat(index, xeVar19.x);
                        break;
                    case 21:
                        xe xeVar20 = xdVar.d;
                        xeVar20.e = obtainStyledAttributes.getLayoutDimension(index, xeVar20.e);
                        break;
                    case 22:
                        xg xgVar = xdVar.b;
                        xgVar.b = obtainStyledAttributes.getInt(index, xgVar.b);
                        xdVar.b.b = a[xdVar.b.b];
                        break;
                    case 23:
                        xe xeVar21 = xdVar.d;
                        xeVar21.d = obtainStyledAttributes.getLayoutDimension(index, xeVar21.d);
                        break;
                    case 24:
                        xe xeVar22 = xdVar.d;
                        xeVar22.G = obtainStyledAttributes.getDimensionPixelSize(index, xeVar22.G);
                        break;
                    case 25:
                        xe xeVar23 = xdVar.d;
                        xeVar23.i = a(obtainStyledAttributes, index, xeVar23.i);
                        break;
                    case 26:
                        xe xeVar24 = xdVar.d;
                        xeVar24.j = a(obtainStyledAttributes, index, xeVar24.j);
                        break;
                    case 27:
                        xe xeVar25 = xdVar.d;
                        xeVar25.F = obtainStyledAttributes.getInt(index, xeVar25.F);
                        break;
                    case 28:
                        xe xeVar26 = xdVar.d;
                        xeVar26.H = obtainStyledAttributes.getDimensionPixelSize(index, xeVar26.H);
                        break;
                    case 29:
                        xe xeVar27 = xdVar.d;
                        xeVar27.k = a(obtainStyledAttributes, index, xeVar27.k);
                        break;
                    case 30:
                        xe xeVar28 = xdVar.d;
                        xeVar28.l = a(obtainStyledAttributes, index, xeVar28.l);
                        break;
                    case 31:
                        xe xeVar29 = xdVar.d;
                        xeVar29.L = obtainStyledAttributes.getDimensionPixelSize(index, xeVar29.L);
                        break;
                    case 32:
                        xe xeVar30 = xdVar.d;
                        xeVar30.t = a(obtainStyledAttributes, index, xeVar30.t);
                        break;
                    case 33:
                        xe xeVar31 = xdVar.d;
                        xeVar31.u = a(obtainStyledAttributes, index, xeVar31.u);
                        break;
                    case 34:
                        xe xeVar32 = xdVar.d;
                        xeVar32.I = obtainStyledAttributes.getDimensionPixelSize(index, xeVar32.I);
                        break;
                    case 35:
                        xe xeVar33 = xdVar.d;
                        xeVar33.n = a(obtainStyledAttributes, index, xeVar33.n);
                        break;
                    case 36:
                        xe xeVar34 = xdVar.d;
                        xeVar34.m = a(obtainStyledAttributes, index, xeVar34.m);
                        break;
                    case 37:
                        xe xeVar35 = xdVar.d;
                        xeVar35.y = obtainStyledAttributes.getFloat(index, xeVar35.y);
                        break;
                    case 38:
                        xdVar.a = obtainStyledAttributes.getResourceId(index, xdVar.a);
                        break;
                    case 39:
                        xe xeVar36 = xdVar.d;
                        xeVar36.V = obtainStyledAttributes.getFloat(index, xeVar36.V);
                        break;
                    case 40:
                        xe xeVar37 = xdVar.d;
                        xeVar37.U = obtainStyledAttributes.getFloat(index, xeVar37.U);
                        break;
                    case 41:
                        xe xeVar38 = xdVar.d;
                        xeVar38.W = obtainStyledAttributes.getInt(index, xeVar38.W);
                        break;
                    case 42:
                        xe xeVar39 = xdVar.d;
                        xeVar39.X = obtainStyledAttributes.getInt(index, xeVar39.X);
                        break;
                    case 43:
                        xg xgVar2 = xdVar.b;
                        xgVar2.d = obtainStyledAttributes.getFloat(index, xgVar2.d);
                        break;
                    case 44:
                        xh xhVar = xdVar.e;
                        xhVar.n = true;
                        xhVar.o = obtainStyledAttributes.getDimension(index, xhVar.o);
                        break;
                    case 45:
                        xh xhVar2 = xdVar.e;
                        xhVar2.d = obtainStyledAttributes.getFloat(index, xhVar2.d);
                        break;
                    case 46:
                        xh xhVar3 = xdVar.e;
                        xhVar3.e = obtainStyledAttributes.getFloat(index, xhVar3.e);
                        break;
                    case 47:
                        xh xhVar4 = xdVar.e;
                        xhVar4.f = obtainStyledAttributes.getFloat(index, xhVar4.f);
                        break;
                    case 48:
                        xh xhVar5 = xdVar.e;
                        xhVar5.g = obtainStyledAttributes.getFloat(index, xhVar5.g);
                        break;
                    case 49:
                        xh xhVar6 = xdVar.e;
                        xhVar6.h = obtainStyledAttributes.getDimension(index, xhVar6.h);
                        break;
                    case 50:
                        xh xhVar7 = xdVar.e;
                        xhVar7.i = obtainStyledAttributes.getDimension(index, xhVar7.i);
                        break;
                    case 51:
                        xh xhVar8 = xdVar.e;
                        xhVar8.k = obtainStyledAttributes.getDimension(index, xhVar8.k);
                        break;
                    case 52:
                        xh xhVar9 = xdVar.e;
                        xhVar9.l = obtainStyledAttributes.getDimension(index, xhVar9.l);
                        break;
                    case 53:
                        xh xhVar10 = xdVar.e;
                        xhVar10.m = obtainStyledAttributes.getDimension(index, xhVar10.m);
                        break;
                    case 54:
                        xe xeVar40 = xdVar.d;
                        xeVar40.Y = obtainStyledAttributes.getInt(index, xeVar40.Y);
                        break;
                    case 55:
                        xe xeVar41 = xdVar.d;
                        xeVar41.Z = obtainStyledAttributes.getInt(index, xeVar41.Z);
                        break;
                    case 56:
                        xe xeVar42 = xdVar.d;
                        xeVar42.aa = obtainStyledAttributes.getDimensionPixelSize(index, xeVar42.aa);
                        break;
                    case 57:
                        xe xeVar43 = xdVar.d;
                        xeVar43.ab = obtainStyledAttributes.getDimensionPixelSize(index, xeVar43.ab);
                        break;
                    case 58:
                        xe xeVar44 = xdVar.d;
                        xeVar44.ac = obtainStyledAttributes.getDimensionPixelSize(index, xeVar44.ac);
                        break;
                    case 59:
                        xe xeVar45 = xdVar.d;
                        xeVar45.ad = obtainStyledAttributes.getDimensionPixelSize(index, xeVar45.ad);
                        break;
                    case 60:
                        xh xhVar11 = xdVar.e;
                        xhVar11.c = obtainStyledAttributes.getFloat(index, xhVar11.c);
                        break;
                    case 61:
                        xe xeVar46 = xdVar.d;
                        xeVar46.A = a(obtainStyledAttributes, index, xeVar46.A);
                        break;
                    case 62:
                        xe xeVar47 = xdVar.d;
                        xeVar47.B = obtainStyledAttributes.getDimensionPixelSize(index, xeVar47.B);
                        break;
                    case 63:
                        xe xeVar48 = xdVar.d;
                        xeVar48.C = obtainStyledAttributes.getFloat(index, xeVar48.C);
                        break;
                    case 64:
                        xf xfVar = xdVar.c;
                        xfVar.c = a(obtainStyledAttributes, index, xfVar.c);
                        break;
                    case 65:
                        if (obtainStyledAttributes.peekValue(index).type == 3) {
                            xdVar.c.e = obtainStyledAttributes.getString(index);
                            break;
                        } else {
                            xdVar.c.e = vt.a[obtainStyledAttributes.getInteger(index, 0)];
                            break;
                        }
                    case 66:
                        xdVar.c.g = obtainStyledAttributes.getInt(index, 0);
                        break;
                    case 67:
                        xf xfVar2 = xdVar.c;
                        xfVar2.j = obtainStyledAttributes.getFloat(index, xfVar2.j);
                        break;
                    case 68:
                        xg xgVar3 = xdVar.b;
                        xgVar3.e = obtainStyledAttributes.getFloat(index, xgVar3.e);
                        break;
                    case 69:
                        xdVar.d.ae = obtainStyledAttributes.getFloat(index, 1.0f);
                        break;
                    case 70:
                        xdVar.d.af = obtainStyledAttributes.getFloat(index, 1.0f);
                        break;
                    case 71:
                        Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                        break;
                    case 72:
                        xe xeVar49 = xdVar.d;
                        xeVar49.ag = obtainStyledAttributes.getInt(index, xeVar49.ag);
                        break;
                    case 73:
                        xe xeVar50 = xdVar.d;
                        xeVar50.ah = obtainStyledAttributes.getDimensionPixelSize(index, xeVar50.ah);
                        break;
                    case 74:
                        xdVar.d.ak = obtainStyledAttributes.getString(index);
                        break;
                    case 75:
                        xe xeVar51 = xdVar.d;
                        xeVar51.ao = obtainStyledAttributes.getBoolean(index, xeVar51.ao);
                        break;
                    case 76:
                        xf xfVar3 = xdVar.c;
                        xfVar3.f = obtainStyledAttributes.getInt(index, xfVar3.f);
                        break;
                    case 77:
                        xdVar.d.al = obtainStyledAttributes.getString(index);
                        break;
                    case 78:
                        xg xgVar4 = xdVar.b;
                        xgVar4.c = obtainStyledAttributes.getInt(index, xgVar4.c);
                        break;
                    case 79:
                        xf xfVar4 = xdVar.c;
                        xfVar4.h = obtainStyledAttributes.getFloat(index, xfVar4.h);
                        break;
                    case 80:
                        xe xeVar52 = xdVar.d;
                        xeVar52.am = obtainStyledAttributes.getBoolean(index, xeVar52.am);
                        break;
                    case 81:
                        xe xeVar53 = xdVar.d;
                        xeVar53.an = obtainStyledAttributes.getBoolean(index, xeVar53.an);
                        break;
                    case 82:
                        xf xfVar5 = xdVar.c;
                        xfVar5.d = obtainStyledAttributes.getInteger(index, xfVar5.d);
                        break;
                    case 83:
                        xh xhVar12 = xdVar.e;
                        xhVar12.j = a(obtainStyledAttributes, index, xhVar12.j);
                        break;
                    case 84:
                        xf xfVar6 = xdVar.c;
                        xfVar6.l = obtainStyledAttributes.getInteger(index, xfVar6.l);
                        break;
                    case 85:
                        xf xfVar7 = xdVar.c;
                        xfVar7.k = obtainStyledAttributes.getFloat(index, xfVar7.k);
                        break;
                    case 86:
                        TypedValue peekValue = obtainStyledAttributes.peekValue(index);
                        if (peekValue.type == 1) {
                            xdVar.c.o = obtainStyledAttributes.getResourceId(index, -1);
                            xf xfVar8 = xdVar.c;
                            if (xfVar8.o != -1) {
                                xfVar8.n = -2;
                                break;
                            } else {
                                break;
                            }
                        } else if (peekValue.type == 3) {
                            xdVar.c.m = obtainStyledAttributes.getString(index);
                            if (xdVar.c.m.indexOf("/") > 0) {
                                xdVar.c.o = obtainStyledAttributes.getResourceId(index, -1);
                                xdVar.c.n = -2;
                                break;
                            } else {
                                xdVar.c.n = -1;
                                break;
                            }
                        } else {
                            xf xfVar9 = xdVar.c;
                            xfVar9.n = obtainStyledAttributes.getInteger(index, xfVar9.o);
                            break;
                        }
                    case 87:
                        Log.w("ConstraintSet", "unused attribute 0x" + Integer.toHexString(index) + "   " + sparseIntArray.get(index));
                        break;
                    case 88:
                    case 89:
                    case 90:
                    default:
                        Log.w("ConstraintSet", "Unknown attribute 0x" + Integer.toHexString(index) + "   " + sparseIntArray.get(index));
                        break;
                    case 91:
                        xe xeVar54 = xdVar.d;
                        xeVar54.r = a(obtainStyledAttributes, index, xeVar54.r);
                        break;
                    case 92:
                        xe xeVar55 = xdVar.d;
                        xeVar55.s = a(obtainStyledAttributes, index, xeVar55.s);
                        break;
                    case 93:
                        xe xeVar56 = xdVar.d;
                        xeVar56.M = obtainStyledAttributes.getDimensionPixelSize(index, xeVar56.M);
                        break;
                    case 94:
                        xe xeVar57 = xdVar.d;
                        xeVar57.T = obtainStyledAttributes.getDimensionPixelSize(index, xeVar57.T);
                        break;
                    case 95:
                        e(xdVar.d, obtainStyledAttributes, index, 0);
                        break;
                    case 96:
                        e(xdVar.d, obtainStyledAttributes, index, 1);
                        break;
                    case 97:
                        xe xeVar58 = xdVar.d;
                        xeVar58.ap = obtainStyledAttributes.getInt(index, xeVar58.ap);
                        break;
                }
            }
        }
        obtainStyledAttributes.recycle();
        return xdVar;
    }

    private static void i(xd xdVar, TypedArray typedArray) {
        int indexCount = typedArray.getIndexCount();
        xc xcVar = new xc();
        xdVar.g = xcVar;
        xdVar.c.b = false;
        xdVar.d.c = false;
        xdVar.b.a = false;
        xdVar.e.b = false;
        for (int i = 0; i < indexCount; i++) {
            int index = typedArray.getIndex(i);
            switch (d.get(index)) {
                case 2:
                    xcVar.b(2, typedArray.getDimensionPixelSize(index, xdVar.d.J));
                    break;
                case 3:
                case 4:
                case 9:
                case 10:
                case 25:
                case 26:
                case 29:
                case 30:
                case 32:
                case 33:
                case 35:
                case 36:
                case 61:
                case 88:
                case 89:
                case 90:
                case 91:
                case 92:
                default:
                    Log.w("ConstraintSet", "Unknown attribute 0x" + Integer.toHexString(index) + "   " + c.get(index));
                    break;
                case 5:
                    xcVar.c(5, typedArray.getString(index));
                    break;
                case 6:
                    xcVar.b(6, typedArray.getDimensionPixelOffset(index, xdVar.d.D));
                    break;
                case 7:
                    xcVar.b(7, typedArray.getDimensionPixelOffset(index, xdVar.d.E));
                    break;
                case 8:
                    xcVar.b(8, typedArray.getDimensionPixelSize(index, xdVar.d.K));
                    break;
                case 11:
                    xcVar.b(11, typedArray.getDimensionPixelSize(index, xdVar.d.Q));
                    break;
                case 12:
                    xcVar.b(12, typedArray.getDimensionPixelSize(index, xdVar.d.R));
                    break;
                case 13:
                    xcVar.b(13, typedArray.getDimensionPixelSize(index, xdVar.d.N));
                    break;
                case 14:
                    xcVar.b(14, typedArray.getDimensionPixelSize(index, xdVar.d.P));
                    break;
                case 15:
                    xcVar.b(15, typedArray.getDimensionPixelSize(index, xdVar.d.S));
                    break;
                case 16:
                    xcVar.b(16, typedArray.getDimensionPixelSize(index, xdVar.d.O));
                    break;
                case 17:
                    xcVar.b(17, typedArray.getDimensionPixelOffset(index, xdVar.d.f));
                    break;
                case 18:
                    xcVar.b(18, typedArray.getDimensionPixelOffset(index, xdVar.d.g));
                    break;
                case 19:
                    xcVar.a(19, typedArray.getFloat(index, xdVar.d.h));
                    break;
                case 20:
                    xcVar.a(20, typedArray.getFloat(index, xdVar.d.x));
                    break;
                case 21:
                    xcVar.b(21, typedArray.getLayoutDimension(index, xdVar.d.e));
                    break;
                case 22:
                    xcVar.b(22, a[typedArray.getInt(index, xdVar.b.b)]);
                    break;
                case 23:
                    xcVar.b(23, typedArray.getLayoutDimension(index, xdVar.d.d));
                    break;
                case 24:
                    xcVar.b(24, typedArray.getDimensionPixelSize(index, xdVar.d.G));
                    break;
                case 27:
                    xcVar.b(27, typedArray.getInt(index, xdVar.d.F));
                    break;
                case 28:
                    xcVar.b(28, typedArray.getDimensionPixelSize(index, xdVar.d.H));
                    break;
                case 31:
                    xcVar.b(31, typedArray.getDimensionPixelSize(index, xdVar.d.L));
                    break;
                case 34:
                    xcVar.b(34, typedArray.getDimensionPixelSize(index, xdVar.d.I));
                    break;
                case 37:
                    xcVar.a(37, typedArray.getFloat(index, xdVar.d.y));
                    break;
                case 38:
                    int resourceId = typedArray.getResourceId(index, xdVar.a);
                    xdVar.a = resourceId;
                    xcVar.b(38, resourceId);
                    break;
                case 39:
                    xcVar.a(39, typedArray.getFloat(index, xdVar.d.V));
                    break;
                case 40:
                    xcVar.a(40, typedArray.getFloat(index, xdVar.d.U));
                    break;
                case 41:
                    xcVar.b(41, typedArray.getInt(index, xdVar.d.W));
                    break;
                case 42:
                    xcVar.b(42, typedArray.getInt(index, xdVar.d.X));
                    break;
                case 43:
                    xcVar.a(43, typedArray.getFloat(index, xdVar.b.d));
                    break;
                case 44:
                    xcVar.d(44, true);
                    xcVar.a(44, typedArray.getDimension(index, xdVar.e.o));
                    break;
                case 45:
                    xcVar.a(45, typedArray.getFloat(index, xdVar.e.d));
                    break;
                case 46:
                    xcVar.a(46, typedArray.getFloat(index, xdVar.e.e));
                    break;
                case 47:
                    xcVar.a(47, typedArray.getFloat(index, xdVar.e.f));
                    break;
                case 48:
                    xcVar.a(48, typedArray.getFloat(index, xdVar.e.g));
                    break;
                case 49:
                    xcVar.a(49, typedArray.getDimension(index, xdVar.e.h));
                    break;
                case 50:
                    xcVar.a(50, typedArray.getDimension(index, xdVar.e.i));
                    break;
                case 51:
                    xcVar.a(51, typedArray.getDimension(index, xdVar.e.k));
                    break;
                case 52:
                    xcVar.a(52, typedArray.getDimension(index, xdVar.e.l));
                    break;
                case 53:
                    xcVar.a(53, typedArray.getDimension(index, xdVar.e.m));
                    break;
                case 54:
                    xcVar.b(54, typedArray.getInt(index, xdVar.d.Y));
                    break;
                case 55:
                    xcVar.b(55, typedArray.getInt(index, xdVar.d.Z));
                    break;
                case 56:
                    xcVar.b(56, typedArray.getDimensionPixelSize(index, xdVar.d.aa));
                    break;
                case 57:
                    xcVar.b(57, typedArray.getDimensionPixelSize(index, xdVar.d.ab));
                    break;
                case 58:
                    xcVar.b(58, typedArray.getDimensionPixelSize(index, xdVar.d.ac));
                    break;
                case 59:
                    xcVar.b(59, typedArray.getDimensionPixelSize(index, xdVar.d.ad));
                    break;
                case 60:
                    xcVar.a(60, typedArray.getFloat(index, xdVar.e.c));
                    break;
                case 62:
                    xcVar.b(62, typedArray.getDimensionPixelSize(index, xdVar.d.B));
                    break;
                case 63:
                    xcVar.a(63, typedArray.getFloat(index, xdVar.d.C));
                    break;
                case 64:
                    xcVar.b(64, a(typedArray, index, xdVar.c.c));
                    break;
                case 65:
                    if (typedArray.peekValue(index).type == 3) {
                        xcVar.c(65, typedArray.getString(index));
                        break;
                    } else {
                        xcVar.c(65, vt.a[typedArray.getInteger(index, 0)]);
                        break;
                    }
                case 66:
                    xcVar.b(66, typedArray.getInt(index, 0));
                    break;
                case 67:
                    xcVar.a(67, typedArray.getFloat(index, xdVar.c.j));
                    break;
                case 68:
                    xcVar.a(68, typedArray.getFloat(index, xdVar.b.e));
                    break;
                case 69:
                    xcVar.a(69, typedArray.getFloat(index, 1.0f));
                    break;
                case 70:
                    xcVar.a(70, typedArray.getFloat(index, 1.0f));
                    break;
                case 71:
                    Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                    break;
                case 72:
                    xcVar.b(72, typedArray.getInt(index, xdVar.d.ag));
                    break;
                case 73:
                    xcVar.b(73, typedArray.getDimensionPixelSize(index, xdVar.d.ah));
                    break;
                case 74:
                    xcVar.c(74, typedArray.getString(index));
                    break;
                case 75:
                    xcVar.d(75, typedArray.getBoolean(index, xdVar.d.ao));
                    break;
                case 76:
                    xcVar.b(76, typedArray.getInt(index, xdVar.c.f));
                    break;
                case 77:
                    xcVar.c(77, typedArray.getString(index));
                    break;
                case 78:
                    xcVar.b(78, typedArray.getInt(index, xdVar.b.c));
                    break;
                case 79:
                    xcVar.a(79, typedArray.getFloat(index, xdVar.c.h));
                    break;
                case 80:
                    xcVar.d(80, typedArray.getBoolean(index, xdVar.d.am));
                    break;
                case 81:
                    xcVar.d(81, typedArray.getBoolean(index, xdVar.d.an));
                    break;
                case 82:
                    xcVar.b(82, typedArray.getInteger(index, xdVar.c.d));
                    break;
                case 83:
                    xcVar.b(83, a(typedArray, index, xdVar.e.j));
                    break;
                case 84:
                    xcVar.b(84, typedArray.getInteger(index, xdVar.c.l));
                    break;
                case 85:
                    xcVar.a(85, typedArray.getFloat(index, xdVar.c.k));
                    break;
                case 86:
                    TypedValue peekValue = typedArray.peekValue(index);
                    if (peekValue.type == 1) {
                        xdVar.c.o = typedArray.getResourceId(index, -1);
                        xcVar.b(89, xdVar.c.o);
                        xf xfVar = xdVar.c;
                        if (xfVar.o != -1) {
                            xfVar.n = -2;
                            xcVar.b(88, -2);
                            break;
                        } else {
                            break;
                        }
                    } else if (peekValue.type == 3) {
                        xdVar.c.m = typedArray.getString(index);
                        xcVar.c(90, xdVar.c.m);
                        if (xdVar.c.m.indexOf("/") > 0) {
                            xdVar.c.o = typedArray.getResourceId(index, -1);
                            xcVar.b(89, xdVar.c.o);
                            xdVar.c.n = -2;
                            xcVar.b(88, -2);
                            break;
                        } else {
                            xdVar.c.n = -1;
                            xcVar.b(88, -1);
                            break;
                        }
                    } else {
                        xf xfVar2 = xdVar.c;
                        xfVar2.n = typedArray.getInteger(index, xfVar2.o);
                        xcVar.b(88, xdVar.c.n);
                        break;
                    }
                case 87:
                    Log.w("ConstraintSet", "unused attribute 0x" + Integer.toHexString(index) + "   " + c.get(index));
                    break;
                case 93:
                    xcVar.b(93, typedArray.getDimensionPixelSize(index, xdVar.d.M));
                    break;
                case 94:
                    xcVar.b(94, typedArray.getDimensionPixelSize(index, xdVar.d.T));
                    break;
                case 95:
                    e(xcVar, typedArray, index, 0);
                    break;
                case 96:
                    e(xcVar, typedArray, index, 1);
                    break;
                case 97:
                    xcVar.b(97, typedArray.getInt(index, xdVar.d.ap));
                    break;
                case 98:
                    if (typedArray.peekValue(index).type == 3) {
                        typedArray.getString(index);
                        break;
                    } else {
                        xdVar.a = typedArray.getResourceId(index, xdVar.a);
                        break;
                    }
            }
        }
    }

    public final void b(Context context, int i) {
        xi xiVar = this;
        ConstraintLayout constraintLayout = (ConstraintLayout) LayoutInflater.from(context).inflate(i, (ViewGroup) null);
        int childCount = constraintLayout.getChildCount();
        xiVar.b.clear();
        int i2 = 0;
        while (i2 < childCount) {
            View childAt = constraintLayout.getChildAt(i2);
            wy wyVar = (wy) childAt.getLayoutParams();
            int id = childAt.getId();
            if (id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            HashMap hashMap = xiVar.b;
            Integer valueOf = Integer.valueOf(id);
            if (!hashMap.containsKey(valueOf)) {
                xiVar.b.put(valueOf, new xd());
            }
            xd xdVar = (xd) xiVar.b.get(valueOf);
            if (xdVar != null) {
                HashMap hashMap2 = xiVar.e;
                HashMap hashMap3 = new HashMap();
                Class<?> cls = childAt.getClass();
                for (String str : hashMap2.keySet()) {
                    wv wvVar = (wv) hashMap2.get(str);
                    try {
                        if (str.equals("BackgroundColor")) {
                            hashMap3.put(str, new wv(wvVar, Integer.valueOf(((ColorDrawable) childAt.getBackground()).getColor())));
                        } else {
                            try {
                                hashMap3.put(str, new wv(wvVar, cls.getMethod("getMap" + str, new Class[0]).invoke(childAt, new Object[0])));
                            } catch (IllegalAccessException e) {
                                e = e;
                                e.printStackTrace();
                            } catch (NoSuchMethodException e2) {
                                e = e2;
                                e.printStackTrace();
                            } catch (InvocationTargetException e3) {
                                e = e3;
                                e.printStackTrace();
                            }
                        }
                    } catch (IllegalAccessException e4) {
                        e = e4;
                    } catch (NoSuchMethodException e5) {
                        e = e5;
                    } catch (InvocationTargetException e6) {
                        e = e6;
                    }
                }
                xdVar.f = hashMap3;
                xdVar.a = id;
                xe xeVar = xdVar.d;
                xeVar.i = wyVar.d;
                xeVar.j = wyVar.e;
                xeVar.k = wyVar.f;
                xeVar.l = wyVar.g;
                xeVar.m = wyVar.h;
                xeVar.n = wyVar.i;
                xeVar.o = wyVar.j;
                xeVar.p = wyVar.k;
                xeVar.q = wyVar.l;
                xeVar.r = wyVar.m;
                xeVar.s = wyVar.n;
                xeVar.t = wyVar.r;
                xeVar.u = wyVar.s;
                xeVar.v = wyVar.t;
                xeVar.w = wyVar.u;
                xeVar.x = wyVar.D;
                xeVar.y = wyVar.E;
                xeVar.z = wyVar.F;
                xeVar.A = wyVar.o;
                xeVar.B = wyVar.p;
                xeVar.C = wyVar.q;
                xeVar.D = wyVar.S;
                xeVar.E = wyVar.T;
                xeVar.F = wyVar.U;
                xeVar.h = wyVar.c;
                xeVar.f = wyVar.a;
                xeVar.g = wyVar.b;
                xeVar.d = wyVar.width;
                xdVar.d.e = wyVar.height;
                xdVar.d.G = wyVar.leftMargin;
                xdVar.d.H = wyVar.rightMargin;
                xdVar.d.I = wyVar.topMargin;
                xdVar.d.J = wyVar.bottomMargin;
                xe xeVar2 = xdVar.d;
                xeVar2.M = wyVar.C;
                xeVar2.U = wyVar.H;
                xeVar2.V = wyVar.G;
                xeVar2.X = wyVar.J;
                xeVar2.W = wyVar.I;
                xeVar2.am = wyVar.V;
                xeVar2.an = wyVar.W;
                xeVar2.Y = wyVar.K;
                xeVar2.Z = wyVar.L;
                xeVar2.aa = wyVar.O;
                xeVar2.ab = wyVar.P;
                xeVar2.ac = wyVar.M;
                xeVar2.ad = wyVar.N;
                xeVar2.ae = wyVar.Q;
                xeVar2.af = wyVar.R;
                xeVar2.al = wyVar.X;
                xeVar2.O = wyVar.w;
                xeVar2.Q = wyVar.y;
                xeVar2.N = wyVar.v;
                xeVar2.P = wyVar.x;
                xeVar2.S = wyVar.z;
                xeVar2.R = wyVar.A;
                xeVar2.T = wyVar.B;
                xeVar2.ap = wyVar.Y;
                xeVar2.K = wyVar.getMarginEnd();
                xdVar.d.L = wyVar.getMarginStart();
                xdVar.b.b = childAt.getVisibility();
                xdVar.b.d = childAt.getAlpha();
                xdVar.e.c = childAt.getRotation();
                xdVar.e.d = childAt.getRotationX();
                xdVar.e.e = childAt.getRotationY();
                xdVar.e.f = childAt.getScaleX();
                xdVar.e.g = childAt.getScaleY();
                float pivotX = childAt.getPivotX();
                float pivotY = childAt.getPivotY();
                if (pivotX != 0.0d || pivotY != 0.0d) {
                    xh xhVar = xdVar.e;
                    xhVar.h = pivotX;
                    xhVar.i = pivotY;
                }
                xdVar.e.k = childAt.getTranslationX();
                xdVar.e.l = childAt.getTranslationY();
                xdVar.e.m = childAt.getTranslationZ();
                xh xhVar2 = xdVar.e;
                if (xhVar2.n) {
                    xhVar2.o = childAt.getElevation();
                }
                if (childAt instanceof wu) {
                    wu wuVar = (wu) childAt;
                    xe xeVar3 = xdVar.d;
                    xeVar3.ao = wuVar.b.b;
                    xeVar3.aj = Arrays.copyOf(wuVar.c, wuVar.d);
                    xe xeVar4 = xdVar.d;
                    xeVar4.ag = wuVar.a;
                    xeVar4.ah = wuVar.b.c;
                }
            }
            i2++;
            xiVar = this;
        }
    }

    public final void c(Context context, int i) {
        XmlResourceParser xml = context.getResources().getXml(i);
        try {
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                switch (eventType) {
                    case 0:
                        xml.getName();
                        break;
                    case 2:
                        String name = xml.getName();
                        xd h = h(context, Xml.asAttributeSet(xml), false);
                        if (name.equalsIgnoreCase("Guideline")) {
                            h.d.b = true;
                        }
                        this.b.put(Integer.valueOf(h.a), h);
                        break;
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (XmlPullParserException e2) {
            e2.printStackTrace();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0041, code lost:
    
        if (r2.equals("constraint") != false) goto L25;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:12:0x0022. Please report as an issue. */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void d(Context context, XmlPullParser xmlPullParser) {
        char c2;
        Object obj;
        try {
            int eventType = xmlPullParser.getEventType();
            xd xdVar = null;
            while (true) {
                char c3 = 1;
                if (eventType == 1) {
                    return;
                }
                int i = 2;
                switch (eventType) {
                    case 0:
                        xmlPullParser.getName();
                        eventType = xmlPullParser.next();
                    case 1:
                    default:
                        eventType = xmlPullParser.next();
                    case 2:
                        String name = xmlPullParser.getName();
                        int i2 = 7;
                        switch (name.hashCode()) {
                            case -2025855158:
                                if (name.equals("Layout")) {
                                    c2 = 6;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case -1984451626:
                                if (name.equals("Motion")) {
                                    c2 = 7;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case -1962203927:
                                if (name.equals("ConstraintOverride")) {
                                    c2 = 1;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case -1269513683:
                                if (name.equals("PropertySet")) {
                                    c2 = 4;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case -1238332596:
                                if (name.equals("Transform")) {
                                    c2 = 5;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case -71750448:
                                if (name.equals("Guideline")) {
                                    c2 = 2;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 366511058:
                                if (name.equals("CustomMethod")) {
                                    c2 = '\t';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 1331510167:
                                if (name.equals("Barrier")) {
                                    c2 = 3;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 1791837707:
                                if (name.equals("CustomAttribute")) {
                                    c2 = '\b';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 1803088381:
                                if (name.equals("Constraint")) {
                                    c2 = 0;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            default:
                                c2 = 65535;
                                break;
                        }
                        switch (c2) {
                            case 0:
                                xdVar = h(context, Xml.asAttributeSet(xmlPullParser), false);
                                break;
                            case 1:
                                xdVar = h(context, Xml.asAttributeSet(xmlPullParser), true);
                                break;
                            case 2:
                                xdVar = h(context, Xml.asAttributeSet(xmlPullParser), false);
                                xe xeVar = xdVar.d;
                                xeVar.b = true;
                                xeVar.c = true;
                                break;
                            case 3:
                                xdVar = h(context, Xml.asAttributeSet(xmlPullParser), false);
                                xdVar.d.ai = 1;
                                break;
                            case 4:
                                if (xdVar == null) {
                                    throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                                }
                                xg xgVar = xdVar.b;
                                TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), xm.g);
                                xgVar.a = true;
                                int indexCount = obtainStyledAttributes.getIndexCount();
                                for (int i3 = 0; i3 < indexCount; i3++) {
                                    int index = obtainStyledAttributes.getIndex(i3);
                                    if (index == 1) {
                                        xgVar.d = obtainStyledAttributes.getFloat(1, xgVar.d);
                                    } else if (index == 0) {
                                        xgVar.b = obtainStyledAttributes.getInt(0, xgVar.b);
                                        xgVar.b = a[xgVar.b];
                                    } else if (index == 4) {
                                        xgVar.c = obtainStyledAttributes.getInt(4, xgVar.c);
                                    } else if (index == 3) {
                                        xgVar.e = obtainStyledAttributes.getFloat(3, xgVar.e);
                                    }
                                }
                                obtainStyledAttributes.recycle();
                                break;
                            case 5:
                                if (xdVar == null) {
                                    throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                                }
                                xh xhVar = xdVar.e;
                                TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), xm.i);
                                xhVar.b = true;
                                int indexCount2 = obtainStyledAttributes2.getIndexCount();
                                for (int i4 = 0; i4 < indexCount2; i4++) {
                                    int index2 = obtainStyledAttributes2.getIndex(i4);
                                    switch (xh.a.get(index2)) {
                                        case 1:
                                            xhVar.c = obtainStyledAttributes2.getFloat(index2, xhVar.c);
                                            break;
                                        case 2:
                                            xhVar.d = obtainStyledAttributes2.getFloat(index2, xhVar.d);
                                            break;
                                        case 3:
                                            xhVar.e = obtainStyledAttributes2.getFloat(index2, xhVar.e);
                                            break;
                                        case 4:
                                            xhVar.f = obtainStyledAttributes2.getFloat(index2, xhVar.f);
                                            break;
                                        case 5:
                                            xhVar.g = obtainStyledAttributes2.getFloat(index2, xhVar.g);
                                            break;
                                        case 6:
                                            xhVar.h = obtainStyledAttributes2.getDimension(index2, xhVar.h);
                                            break;
                                        case 7:
                                            xhVar.i = obtainStyledAttributes2.getDimension(index2, xhVar.i);
                                            break;
                                        case 8:
                                            xhVar.k = obtainStyledAttributes2.getDimension(index2, xhVar.k);
                                            break;
                                        case 9:
                                            xhVar.l = obtainStyledAttributes2.getDimension(index2, xhVar.l);
                                            break;
                                        case 10:
                                            xhVar.m = obtainStyledAttributes2.getDimension(index2, xhVar.m);
                                            break;
                                        case 11:
                                            xhVar.n = true;
                                            xhVar.o = obtainStyledAttributes2.getDimension(index2, xhVar.o);
                                            break;
                                        case 12:
                                            xhVar.j = a(obtainStyledAttributes2, index2, xhVar.j);
                                            break;
                                    }
                                }
                                obtainStyledAttributes2.recycle();
                                break;
                            case 6:
                                if (xdVar == null) {
                                    throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                                }
                                xe xeVar2 = xdVar.d;
                                TypedArray obtainStyledAttributes3 = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), xm.e);
                                xeVar2.c = true;
                                int indexCount3 = obtainStyledAttributes3.getIndexCount();
                                for (int i5 = 0; i5 < indexCount3; i5++) {
                                    int index3 = obtainStyledAttributes3.getIndex(i5);
                                    switch (xe.a.get(index3)) {
                                        case 1:
                                            xeVar2.q = a(obtainStyledAttributes3, index3, xeVar2.q);
                                            break;
                                        case 2:
                                            xeVar2.J = obtainStyledAttributes3.getDimensionPixelSize(index3, xeVar2.J);
                                            break;
                                        case 3:
                                            xeVar2.p = a(obtainStyledAttributes3, index3, xeVar2.p);
                                            break;
                                        case 4:
                                            xeVar2.o = a(obtainStyledAttributes3, index3, xeVar2.o);
                                            break;
                                        case 5:
                                            xeVar2.z = obtainStyledAttributes3.getString(index3);
                                            break;
                                        case 6:
                                            xeVar2.D = obtainStyledAttributes3.getDimensionPixelOffset(index3, xeVar2.D);
                                            break;
                                        case 7:
                                            xeVar2.E = obtainStyledAttributes3.getDimensionPixelOffset(index3, xeVar2.E);
                                            break;
                                        case 8:
                                            xeVar2.K = obtainStyledAttributes3.getDimensionPixelSize(index3, xeVar2.K);
                                            break;
                                        case 9:
                                            xeVar2.w = a(obtainStyledAttributes3, index3, xeVar2.w);
                                            break;
                                        case 10:
                                            xeVar2.v = a(obtainStyledAttributes3, index3, xeVar2.v);
                                            break;
                                        case 11:
                                            xeVar2.Q = obtainStyledAttributes3.getDimensionPixelSize(index3, xeVar2.Q);
                                            break;
                                        case 12:
                                            xeVar2.R = obtainStyledAttributes3.getDimensionPixelSize(index3, xeVar2.R);
                                            break;
                                        case 13:
                                            xeVar2.N = obtainStyledAttributes3.getDimensionPixelSize(index3, xeVar2.N);
                                            break;
                                        case 14:
                                            xeVar2.P = obtainStyledAttributes3.getDimensionPixelSize(index3, xeVar2.P);
                                            break;
                                        case 15:
                                            xeVar2.S = obtainStyledAttributes3.getDimensionPixelSize(index3, xeVar2.S);
                                            break;
                                        case 16:
                                            xeVar2.O = obtainStyledAttributes3.getDimensionPixelSize(index3, xeVar2.O);
                                            break;
                                        case 17:
                                            xeVar2.f = obtainStyledAttributes3.getDimensionPixelOffset(index3, xeVar2.f);
                                            break;
                                        case 18:
                                            xeVar2.g = obtainStyledAttributes3.getDimensionPixelOffset(index3, xeVar2.g);
                                            break;
                                        case 19:
                                            xeVar2.h = obtainStyledAttributes3.getFloat(index3, xeVar2.h);
                                            break;
                                        case 20:
                                            xeVar2.x = obtainStyledAttributes3.getFloat(index3, xeVar2.x);
                                            break;
                                        case 21:
                                            xeVar2.e = obtainStyledAttributes3.getLayoutDimension(index3, xeVar2.e);
                                            break;
                                        case 22:
                                            xeVar2.d = obtainStyledAttributes3.getLayoutDimension(index3, xeVar2.d);
                                            break;
                                        case 23:
                                            xeVar2.G = obtainStyledAttributes3.getDimensionPixelSize(index3, xeVar2.G);
                                            break;
                                        case 24:
                                            xeVar2.i = a(obtainStyledAttributes3, index3, xeVar2.i);
                                            break;
                                        case 25:
                                            xeVar2.j = a(obtainStyledAttributes3, index3, xeVar2.j);
                                            break;
                                        case 26:
                                            xeVar2.F = obtainStyledAttributes3.getInt(index3, xeVar2.F);
                                            break;
                                        case 27:
                                            xeVar2.H = obtainStyledAttributes3.getDimensionPixelSize(index3, xeVar2.H);
                                            break;
                                        case 28:
                                            xeVar2.k = a(obtainStyledAttributes3, index3, xeVar2.k);
                                            break;
                                        case 29:
                                            xeVar2.l = a(obtainStyledAttributes3, index3, xeVar2.l);
                                            break;
                                        case 30:
                                            xeVar2.L = obtainStyledAttributes3.getDimensionPixelSize(index3, xeVar2.L);
                                            break;
                                        case 31:
                                            xeVar2.t = a(obtainStyledAttributes3, index3, xeVar2.t);
                                            break;
                                        case 32:
                                            xeVar2.u = a(obtainStyledAttributes3, index3, xeVar2.u);
                                            break;
                                        case 33:
                                            xeVar2.I = obtainStyledAttributes3.getDimensionPixelSize(index3, xeVar2.I);
                                            break;
                                        case 34:
                                            xeVar2.n = a(obtainStyledAttributes3, index3, xeVar2.n);
                                            break;
                                        case 35:
                                            xeVar2.m = a(obtainStyledAttributes3, index3, xeVar2.m);
                                            break;
                                        case 36:
                                            xeVar2.y = obtainStyledAttributes3.getFloat(index3, xeVar2.y);
                                            break;
                                        case 37:
                                            xeVar2.V = obtainStyledAttributes3.getFloat(index3, xeVar2.V);
                                            break;
                                        case 38:
                                            xeVar2.U = obtainStyledAttributes3.getFloat(index3, xeVar2.U);
                                            break;
                                        case 39:
                                            xeVar2.W = obtainStyledAttributes3.getInt(index3, xeVar2.W);
                                            break;
                                        case 40:
                                            xeVar2.X = obtainStyledAttributes3.getInt(index3, xeVar2.X);
                                            break;
                                        case 41:
                                            e(xeVar2, obtainStyledAttributes3, index3, 0);
                                            break;
                                        case 42:
                                            e(xeVar2, obtainStyledAttributes3, index3, 1);
                                            break;
                                        case 43:
                                        case 44:
                                        case 45:
                                        case 46:
                                        case 47:
                                        case 48:
                                        case 49:
                                        case 50:
                                        case 51:
                                        case 52:
                                        case 53:
                                        case 60:
                                        case 64:
                                        case 65:
                                        case 66:
                                        case 67:
                                        case 68:
                                        case 78:
                                        case 79:
                                        case 82:
                                        case 83:
                                        case 84:
                                        case 85:
                                        case 86:
                                        case 87:
                                        case 88:
                                        case 89:
                                        case 90:
                                        case 95:
                                        case 96:
                                        default:
                                            Log.w("ConstraintSet", "Unknown attribute 0x" + Integer.toHexString(index3) + "   " + xe.a.get(index3));
                                            break;
                                        case 54:
                                            xeVar2.Y = obtainStyledAttributes3.getInt(index3, xeVar2.Y);
                                            break;
                                        case 55:
                                            xeVar2.Z = obtainStyledAttributes3.getInt(index3, xeVar2.Z);
                                            break;
                                        case 56:
                                            xeVar2.aa = obtainStyledAttributes3.getDimensionPixelSize(index3, xeVar2.aa);
                                            break;
                                        case 57:
                                            xeVar2.ab = obtainStyledAttributes3.getDimensionPixelSize(index3, xeVar2.ab);
                                            break;
                                        case 58:
                                            xeVar2.ac = obtainStyledAttributes3.getDimensionPixelSize(index3, xeVar2.ac);
                                            break;
                                        case 59:
                                            xeVar2.ad = obtainStyledAttributes3.getDimensionPixelSize(index3, xeVar2.ad);
                                            break;
                                        case 61:
                                            xeVar2.A = a(obtainStyledAttributes3, index3, xeVar2.A);
                                            break;
                                        case 62:
                                            xeVar2.B = obtainStyledAttributes3.getDimensionPixelSize(index3, xeVar2.B);
                                            break;
                                        case 63:
                                            xeVar2.C = obtainStyledAttributes3.getFloat(index3, xeVar2.C);
                                            break;
                                        case 69:
                                            xeVar2.ae = obtainStyledAttributes3.getFloat(index3, 1.0f);
                                            break;
                                        case 70:
                                            xeVar2.af = obtainStyledAttributes3.getFloat(index3, 1.0f);
                                            break;
                                        case 71:
                                            Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                                            break;
                                        case 72:
                                            xeVar2.ag = obtainStyledAttributes3.getInt(index3, xeVar2.ag);
                                            break;
                                        case 73:
                                            xeVar2.ah = obtainStyledAttributes3.getDimensionPixelSize(index3, xeVar2.ah);
                                            break;
                                        case 74:
                                            xeVar2.ak = obtainStyledAttributes3.getString(index3);
                                            break;
                                        case 75:
                                            xeVar2.ao = obtainStyledAttributes3.getBoolean(index3, xeVar2.ao);
                                            break;
                                        case 76:
                                            Log.w("ConstraintSet", "unused attribute 0x" + Integer.toHexString(index3) + "   " + xe.a.get(index3));
                                            break;
                                        case 77:
                                            xeVar2.al = obtainStyledAttributes3.getString(index3);
                                            break;
                                        case 80:
                                            xeVar2.am = obtainStyledAttributes3.getBoolean(index3, xeVar2.am);
                                            break;
                                        case 81:
                                            xeVar2.an = obtainStyledAttributes3.getBoolean(index3, xeVar2.an);
                                            break;
                                        case 91:
                                            xeVar2.r = a(obtainStyledAttributes3, index3, xeVar2.r);
                                            break;
                                        case 92:
                                            xeVar2.s = a(obtainStyledAttributes3, index3, xeVar2.s);
                                            break;
                                        case 93:
                                            xeVar2.M = obtainStyledAttributes3.getDimensionPixelSize(index3, xeVar2.M);
                                            break;
                                        case 94:
                                            xeVar2.T = obtainStyledAttributes3.getDimensionPixelSize(index3, xeVar2.T);
                                            break;
                                        case 97:
                                            xeVar2.ap = obtainStyledAttributes3.getInt(index3, xeVar2.ap);
                                            break;
                                    }
                                }
                                obtainStyledAttributes3.recycle();
                                break;
                            case 7:
                                if (xdVar == null) {
                                    throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                                }
                                xf xfVar = xdVar.c;
                                TypedArray obtainStyledAttributes4 = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), xm.f);
                                xfVar.b = true;
                                int indexCount4 = obtainStyledAttributes4.getIndexCount();
                                for (int i6 = 0; i6 < indexCount4; i6++) {
                                    int index4 = obtainStyledAttributes4.getIndex(i6);
                                    switch (xf.a.get(index4)) {
                                        case 1:
                                            xfVar.j = obtainStyledAttributes4.getFloat(index4, xfVar.j);
                                            break;
                                        case 2:
                                            xfVar.f = obtainStyledAttributes4.getInt(index4, xfVar.f);
                                            break;
                                        case 3:
                                            if (obtainStyledAttributes4.peekValue(index4).type == 3) {
                                                xfVar.e = obtainStyledAttributes4.getString(index4);
                                                break;
                                            } else {
                                                xfVar.e = vt.a[obtainStyledAttributes4.getInteger(index4, 0)];
                                                break;
                                            }
                                        case 4:
                                            xfVar.g = obtainStyledAttributes4.getInt(index4, 0);
                                            break;
                                        case 5:
                                            xfVar.c = a(obtainStyledAttributes4, index4, xfVar.c);
                                            break;
                                        case 6:
                                            xfVar.d = obtainStyledAttributes4.getInteger(index4, xfVar.d);
                                            break;
                                        case 7:
                                            xfVar.h = obtainStyledAttributes4.getFloat(index4, xfVar.h);
                                            break;
                                        case 8:
                                            xfVar.l = obtainStyledAttributes4.getInteger(index4, xfVar.l);
                                            break;
                                        case 9:
                                            xfVar.k = obtainStyledAttributes4.getFloat(index4, xfVar.k);
                                            break;
                                        case 10:
                                            TypedValue peekValue = obtainStyledAttributes4.peekValue(index4);
                                            if (peekValue.type == 1) {
                                                int resourceId = obtainStyledAttributes4.getResourceId(index4, -1);
                                                xfVar.o = resourceId;
                                                if (resourceId != -1) {
                                                    xfVar.n = -2;
                                                }
                                                break;
                                            } else if (peekValue.type == 3) {
                                                xfVar.m = obtainStyledAttributes4.getString(index4);
                                                if (xfVar.m.indexOf("/") > 0) {
                                                    xfVar.o = obtainStyledAttributes4.getResourceId(index4, -1);
                                                    xfVar.n = -2;
                                                    break;
                                                } else {
                                                    xfVar.n = -1;
                                                    break;
                                                }
                                            } else {
                                                xfVar.n = obtainStyledAttributes4.getInteger(index4, xfVar.o);
                                                break;
                                            }
                                    }
                                }
                                obtainStyledAttributes4.recycle();
                                break;
                            case '\b':
                            case '\t':
                                if (xdVar == null) {
                                    throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                                }
                                HashMap hashMap = xdVar.f;
                                TypedArray obtainStyledAttributes5 = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), xm.d);
                                int indexCount5 = obtainStyledAttributes5.getIndexCount();
                                int i7 = 0;
                                String str = null;
                                Object obj2 = null;
                                int i8 = 0;
                                boolean z = false;
                                while (i7 < indexCount5) {
                                    int index5 = obtainStyledAttributes5.getIndex(i7);
                                    if (index5 == 0) {
                                        String string = obtainStyledAttributes5.getString(0);
                                        str = (string == null || string.length() <= 0) ? string : Character.toUpperCase(string.charAt(0)) + string.substring(1);
                                    } else if (index5 == 10) {
                                        str = obtainStyledAttributes5.getString(10);
                                        z = true;
                                    } else if (index5 == 1) {
                                        obj2 = Boolean.valueOf(obtainStyledAttributes5.getBoolean(1, false));
                                        i8 = 6;
                                    } else if (index5 == 3) {
                                        obj2 = Integer.valueOf(obtainStyledAttributes5.getColor(3, 0));
                                        i8 = 3;
                                    } else if (index5 == i) {
                                        obj2 = Integer.valueOf(obtainStyledAttributes5.getColor(i, 0));
                                        i8 = 4;
                                    } else if (index5 == i2) {
                                        obj2 = Float.valueOf(TypedValue.applyDimension(1, obtainStyledAttributes5.getDimension(i2, 0.0f), context.getResources().getDisplayMetrics()));
                                        i8 = 7;
                                    } else if (index5 == 4) {
                                        obj2 = Float.valueOf(obtainStyledAttributes5.getDimension(4, 0.0f));
                                        i8 = 7;
                                    } else if (index5 == 5) {
                                        obj2 = Float.valueOf(obtainStyledAttributes5.getFloat(5, Float.NaN));
                                        i8 = 2;
                                    } else if (index5 == 6) {
                                        obj2 = Integer.valueOf(obtainStyledAttributes5.getInteger(6, -1));
                                        i8 = 1;
                                    } else if (index5 == 9) {
                                        obj2 = obtainStyledAttributes5.getString(9);
                                        i8 = 5;
                                    } else if (index5 == 8) {
                                        int resourceId2 = obtainStyledAttributes5.getResourceId(8, -1);
                                        if (resourceId2 == -1) {
                                            resourceId2 = obtainStyledAttributes5.getInt(8, -1);
                                        }
                                        obj2 = Integer.valueOf(resourceId2);
                                        i8 = 8;
                                    }
                                    i7++;
                                    i2 = 7;
                                    i = 2;
                                }
                                String str2 = str;
                                if (str2 != null && (obj = obj2) != null) {
                                    hashMap.put(str2, new wv(str2, i8, obj, z));
                                }
                                obtainStyledAttributes5.recycle();
                                break;
                                break;
                        }
                        eventType = xmlPullParser.next();
                        break;
                    case 3:
                        String lowerCase = xmlPullParser.getName().toLowerCase(Locale.ROOT);
                        switch (lowerCase.hashCode()) {
                            case -2075718416:
                                if (lowerCase.equals("guideline")) {
                                    c3 = 3;
                                    break;
                                }
                                c3 = 65535;
                                break;
                            case -190376483:
                                break;
                            case 426575017:
                                if (lowerCase.equals("constraintoverride")) {
                                    c3 = 2;
                                    break;
                                }
                                c3 = 65535;
                                break;
                            case 2146106725:
                                if (lowerCase.equals("constraintset")) {
                                    c3 = 0;
                                    break;
                                }
                                c3 = 65535;
                                break;
                            default:
                                c3 = 65535;
                                break;
                        }
                        switch (c3) {
                            case 0:
                                return;
                            case 1:
                            case 2:
                            case 3:
                                try {
                                    this.b.put(Integer.valueOf(xdVar.a), xdVar);
                                    xdVar = null;
                                    eventType = xmlPullParser.next();
                                } catch (IOException e) {
                                    e = e;
                                    e.printStackTrace();
                                    return;
                                } catch (XmlPullParserException e2) {
                                    e = e2;
                                    e.printStackTrace();
                                    return;
                                }
                            default:
                                eventType = xmlPullParser.next();
                        }
                }
            }
        } catch (IOException e3) {
            e = e3;
        } catch (XmlPullParserException e4) {
            e = e4;
        }
    }
}
