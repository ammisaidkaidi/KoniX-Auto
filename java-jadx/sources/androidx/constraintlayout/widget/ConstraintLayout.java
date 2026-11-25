package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.preference.Preference;
import defpackage.is;
import defpackage.vu;
import defpackage.vx;
import defpackage.vy;
import defpackage.wa;
import defpackage.wb;
import defpackage.wc;
import defpackage.wd;
import defpackage.we;
import defpackage.wg;
import defpackage.wh;
import defpackage.wj;
import defpackage.wn;
import defpackage.wp;
import defpackage.wr;
import defpackage.wt;
import defpackage.wu;
import defpackage.wv;
import defpackage.ww;
import defpackage.wy;
import defpackage.wz;
import defpackage.xd;
import defpackage.xe;
import defpackage.xg;
import defpackage.xh;
import defpackage.xi;
import defpackage.xj;
import defpackage.xk;
import defpackage.xm;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* compiled from: PG */
/* loaded from: classes.dex */
public class ConstraintLayout extends ViewGroup {
    SparseArray a;
    public ArrayList b;
    protected vy c;
    protected boolean d;
    public int e;
    public HashMap f;
    wz g;
    private int h;
    private int i;
    private int j;
    private int k;
    private xi l;
    private int m;
    private SparseArray n;

    public ConstraintLayout(Context context) {
        super(context);
        this.a = new SparseArray();
        this.b = new ArrayList(4);
        this.c = new vy();
        this.h = 0;
        this.i = 0;
        this.j = Preference.DEFAULT_ORDER;
        this.k = Preference.DEFAULT_ORDER;
        this.d = true;
        this.e = 257;
        this.l = null;
        this.m = -1;
        this.f = new HashMap();
        this.n = new SparseArray();
        this.g = new wz(this, this);
        e(null, 0, 0);
    }

    protected static final wy d() {
        return new wy();
    }

    private final void e(AttributeSet attributeSet, int i, int i2) {
        vy vyVar = this.c;
        vyVar.af = this;
        wz wzVar = this.g;
        vyVar.aG = wzVar;
        vyVar.b.g = wzVar;
        this.a.put(getId(), this);
        this.l = null;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, xm.b, i, i2);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i3 = 0; i3 < indexCount; i3++) {
                int index = obtainStyledAttributes.getIndex(i3);
                if (index == 16) {
                    this.h = obtainStyledAttributes.getDimensionPixelOffset(16, this.h);
                } else if (index == 17) {
                    this.i = obtainStyledAttributes.getDimensionPixelOffset(17, this.i);
                } else if (index == 14) {
                    this.j = obtainStyledAttributes.getDimensionPixelOffset(14, this.j);
                } else if (index == 15) {
                    this.k = obtainStyledAttributes.getDimensionPixelOffset(15, this.k);
                } else if (index == 112) {
                    this.e = obtainStyledAttributes.getInt(112, this.e);
                } else if (index == 55) {
                    int resourceId = obtainStyledAttributes.getResourceId(55, 0);
                    if (resourceId != 0) {
                        try {
                            is.c(getContext(), resourceId, new SparseArray(), new SparseArray());
                        } catch (Resources.NotFoundException e) {
                        }
                    }
                } else if (index == 34) {
                    int resourceId2 = obtainStyledAttributes.getResourceId(34, 0);
                    try {
                        xi xiVar = new xi();
                        this.l = xiVar;
                        xiVar.c(getContext(), resourceId2);
                    } catch (Resources.NotFoundException e2) {
                        this.l = null;
                    }
                    this.m = resourceId2;
                }
            }
            obtainStyledAttributes.recycle();
        }
        this.c.U(this.e);
    }

    private final void f() {
        this.d = true;
    }

    private final void g() {
        boolean z;
        int i;
        int i2;
        float f;
        vx vxVar;
        vx vxVar2;
        vx vxVar3;
        vx vxVar4;
        float f2;
        int i3;
        int i4;
        float parseFloat;
        int i5;
        wb wbVar;
        vx b;
        String str;
        int d;
        ConstraintLayout constraintLayout;
        String str2;
        int i6;
        boolean z2;
        int i7;
        int i8;
        String str3;
        int i9;
        int i10;
        int i11;
        vx vxVar5;
        ConstraintLayout constraintLayout2 = this;
        boolean isInEditMode = isInEditMode();
        int childCount = getChildCount();
        for (int i12 = 0; i12 < childCount; i12++) {
            vx b2 = constraintLayout2.b(constraintLayout2.getChildAt(i12));
            if (b2 != null) {
                b2.s();
            }
        }
        int i13 = -1;
        if (isInEditMode) {
            for (int i14 = 0; i14 < childCount; i14++) {
                View childAt = constraintLayout2.getChildAt(i14);
                try {
                    String resourceName = getResources().getResourceName(childAt.getId());
                    Integer valueOf = Integer.valueOf(childAt.getId());
                    if (resourceName instanceof String) {
                        if (constraintLayout2.f == null) {
                            constraintLayout2.f = new HashMap();
                        }
                        int indexOf = resourceName.indexOf("/");
                        constraintLayout2.f.put(indexOf != -1 ? resourceName.substring(indexOf + 1) : resourceName, Integer.valueOf(valueOf.intValue()));
                    }
                    int indexOf2 = resourceName.indexOf(47);
                    if (indexOf2 != -1) {
                        resourceName = resourceName.substring(indexOf2 + 1);
                    }
                    int id = childAt.getId();
                    if (id == 0) {
                        vxVar5 = constraintLayout2.c;
                    } else {
                        View view = (View) constraintLayout2.a.get(id);
                        if (view == null && (view = constraintLayout2.findViewById(id)) != null && view != constraintLayout2 && view.getParent() == constraintLayout2) {
                            constraintLayout2.onViewAdded(view);
                        }
                        vxVar5 = view == constraintLayout2 ? constraintLayout2.c : view == null ? null : ((wy) view.getLayoutParams()).aq;
                    }
                    vxVar5.ah = resourceName;
                } catch (Resources.NotFoundException e) {
                }
            }
        }
        if (constraintLayout2.m != -1) {
            for (int i15 = 0; i15 < childCount; i15++) {
                View childAt2 = constraintLayout2.getChildAt(i15);
                if (childAt2.getId() == constraintLayout2.m && (childAt2 instanceof xj)) {
                    throw null;
                }
            }
        }
        xi xiVar = constraintLayout2.l;
        int i16 = 1;
        if (xiVar != null) {
            int childCount2 = getChildCount();
            HashSet hashSet = new HashSet(xiVar.b.keySet());
            int i17 = 0;
            while (i17 < childCount2) {
                View childAt3 = constraintLayout2.getChildAt(i17);
                int id2 = childAt3.getId();
                HashMap hashMap = xiVar.b;
                Integer valueOf2 = Integer.valueOf(id2);
                if (!hashMap.containsKey(valueOf2)) {
                    try {
                        str2 = childAt3.getContext().getResources().getResourceEntryName(childAt3.getId());
                    } catch (Exception e2) {
                        str2 = "UNKNOWN";
                    }
                    Log.w("ConstraintSet", "id unknown ".concat(String.valueOf(str2)));
                    i6 = childCount2;
                    z2 = isInEditMode;
                    i7 = childCount;
                } else {
                    if (id2 == i13) {
                        throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
                    }
                    if (id2 == i13) {
                        i6 = childCount2;
                        z2 = isInEditMode;
                        i7 = childCount;
                    } else if (xiVar.b.containsKey(valueOf2)) {
                        hashSet.remove(valueOf2);
                        xd xdVar = (xd) xiVar.b.get(valueOf2);
                        if (xdVar != null) {
                            if (childAt3 instanceof wu) {
                                xdVar.d.ai = i16;
                                wu wuVar = (wu) childAt3;
                                wuVar.setId(id2);
                                xe xeVar = xdVar.d;
                                wuVar.a = xeVar.ag;
                                wuVar.b(xeVar.ah);
                                xe xeVar2 = xdVar.d;
                                wuVar.b.b = xeVar2.ao;
                                int[] iArr = xeVar2.aj;
                                if (iArr != null) {
                                    wuVar.e(iArr);
                                } else {
                                    String str4 = xeVar2.ak;
                                    if (str4 != null) {
                                        xeVar2.aj = xi.g(wuVar, str4);
                                        wuVar.e(xdVar.d.aj);
                                    }
                                }
                            }
                            wy wyVar = (wy) childAt3.getLayoutParams();
                            wyVar.a();
                            xdVar.a(wyVar);
                            HashMap hashMap2 = xdVar.f;
                            Class<?> cls = childAt3.getClass();
                            for (String str5 : hashMap2.keySet()) {
                                boolean z3 = isInEditMode;
                                wv wvVar = (wv) hashMap2.get(str5);
                                HashMap hashMap3 = hashMap2;
                                if (wvVar.a) {
                                    i8 = childCount;
                                    str3 = str5;
                                } else {
                                    i8 = childCount;
                                    str3 = "set".concat(String.valueOf(str5));
                                }
                                try {
                                    i10 = wvVar.h;
                                    i11 = i10 - 1;
                                } catch (IllegalAccessException e3) {
                                    e = e3;
                                    i9 = childCount2;
                                } catch (NoSuchMethodException e4) {
                                    e = e4;
                                    i9 = childCount2;
                                } catch (InvocationTargetException e5) {
                                    e = e5;
                                    i9 = childCount2;
                                }
                                if (i10 == 0) {
                                    i9 = childCount2;
                                    throw null;
                                }
                                switch (i11) {
                                    case 0:
                                        cls.getMethod(str3, Integer.TYPE).invoke(childAt3, Integer.valueOf(wvVar.c));
                                        isInEditMode = z3;
                                        hashMap2 = hashMap3;
                                        childCount = i8;
                                        childCount2 = childCount2;
                                        break;
                                    case 1:
                                        cls.getMethod(str3, Float.TYPE).invoke(childAt3, Float.valueOf(wvVar.d));
                                        isInEditMode = z3;
                                        hashMap2 = hashMap3;
                                        childCount = i8;
                                        childCount2 = childCount2;
                                        break;
                                    case 2:
                                        cls.getMethod(str3, Integer.TYPE).invoke(childAt3, Integer.valueOf(wvVar.g));
                                        isInEditMode = z3;
                                        hashMap2 = hashMap3;
                                        childCount = i8;
                                        childCount2 = childCount2;
                                        break;
                                    case 3:
                                        int i18 = childCount2;
                                        Method method = cls.getMethod(str3, Drawable.class);
                                        ColorDrawable colorDrawable = new ColorDrawable();
                                        colorDrawable.setColor(wvVar.g);
                                        method.invoke(childAt3, colorDrawable);
                                        isInEditMode = z3;
                                        hashMap2 = hashMap3;
                                        childCount = i8;
                                        childCount2 = i18;
                                        break;
                                    case 4:
                                        cls.getMethod(str3, CharSequence.class).invoke(childAt3, wvVar.e);
                                        isInEditMode = z3;
                                        hashMap2 = hashMap3;
                                        childCount = i8;
                                        childCount2 = childCount2;
                                        break;
                                    case 5:
                                        cls.getMethod(str3, Boolean.TYPE).invoke(childAt3, Boolean.valueOf(wvVar.f));
                                        isInEditMode = z3;
                                        hashMap2 = hashMap3;
                                        childCount = i8;
                                        childCount2 = childCount2;
                                        break;
                                    case 6:
                                        cls.getMethod(str3, Float.TYPE).invoke(childAt3, Float.valueOf(wvVar.d));
                                        isInEditMode = z3;
                                        hashMap2 = hashMap3;
                                        childCount = i8;
                                        childCount2 = childCount2;
                                        break;
                                    case 7:
                                        i9 = childCount2;
                                        try {
                                            cls.getMethod(str3, Integer.TYPE).invoke(childAt3, Integer.valueOf(wvVar.c));
                                            isInEditMode = z3;
                                            hashMap2 = hashMap3;
                                            childCount = i8;
                                            childCount2 = i9;
                                        } catch (IllegalAccessException e6) {
                                            e = e6;
                                            Log.e("TransitionLayout", " Custom Attribute \"" + str5 + "\" not found on " + cls.getName());
                                            e.printStackTrace();
                                            isInEditMode = z3;
                                            hashMap2 = hashMap3;
                                            childCount = i8;
                                            childCount2 = i9;
                                        } catch (NoSuchMethodException e7) {
                                            e = e7;
                                            Log.e("TransitionLayout", e.getMessage());
                                            Log.e("TransitionLayout", " Custom Attribute \"" + str5 + "\" not found on " + cls.getName());
                                            StringBuilder sb = new StringBuilder();
                                            sb.append(cls.getName());
                                            sb.append(" must have a method ");
                                            sb.append(str3);
                                            Log.e("TransitionLayout", sb.toString());
                                            isInEditMode = z3;
                                            hashMap2 = hashMap3;
                                            childCount = i8;
                                            childCount2 = i9;
                                        } catch (InvocationTargetException e8) {
                                            e = e8;
                                            Log.e("TransitionLayout", " Custom Attribute \"" + str5 + "\" not found on " + cls.getName());
                                            e.printStackTrace();
                                            isInEditMode = z3;
                                            hashMap2 = hashMap3;
                                            childCount = i8;
                                            childCount2 = i9;
                                        }
                                    default:
                                        isInEditMode = z3;
                                        hashMap2 = hashMap3;
                                        childCount = i8;
                                        break;
                                }
                            }
                            i6 = childCount2;
                            z2 = isInEditMode;
                            i7 = childCount;
                            childAt3.setLayoutParams(wyVar);
                            xg xgVar = xdVar.b;
                            if (xgVar.c == 0) {
                                childAt3.setVisibility(xgVar.b);
                            }
                            childAt3.setAlpha(xdVar.b.d);
                            childAt3.setRotation(xdVar.e.c);
                            childAt3.setRotationX(xdVar.e.d);
                            childAt3.setRotationY(xdVar.e.e);
                            childAt3.setScaleX(xdVar.e.f);
                            childAt3.setScaleY(xdVar.e.g);
                            xh xhVar = xdVar.e;
                            if (xhVar.j != -1) {
                                if (((View) childAt3.getParent()).findViewById(xdVar.e.j) != null) {
                                    float top = (r0.getTop() + r0.getBottom()) / 2.0f;
                                    float left = (r0.getLeft() + r0.getRight()) / 2.0f;
                                    if (childAt3.getRight() - childAt3.getLeft() > 0 && childAt3.getBottom() - childAt3.getTop() > 0) {
                                        int left2 = childAt3.getLeft();
                                        int top2 = childAt3.getTop();
                                        childAt3.setPivotX(left - left2);
                                        childAt3.setPivotY(top - top2);
                                    }
                                }
                            } else {
                                if (!Float.isNaN(xhVar.h)) {
                                    childAt3.setPivotX(xdVar.e.h);
                                }
                                if (!Float.isNaN(xdVar.e.i)) {
                                    childAt3.setPivotY(xdVar.e.i);
                                }
                            }
                            childAt3.setTranslationX(xdVar.e.k);
                            childAt3.setTranslationY(xdVar.e.l);
                            childAt3.setTranslationZ(xdVar.e.m);
                            xh xhVar2 = xdVar.e;
                            if (xhVar2.n) {
                                childAt3.setElevation(xhVar2.o);
                            }
                        } else {
                            i6 = childCount2;
                            z2 = isInEditMode;
                            i7 = childCount;
                        }
                    } else {
                        i6 = childCount2;
                        z2 = isInEditMode;
                        i7 = childCount;
                    }
                }
                i17++;
                constraintLayout2 = this;
                isInEditMode = z2;
                childCount = i7;
                childCount2 = i6;
                i13 = -1;
                i16 = 1;
            }
            int i19 = childCount2;
            z = isInEditMode;
            i = childCount;
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                Integer num = (Integer) it.next();
                xd xdVar2 = (xd) xiVar.b.get(num);
                if (xdVar2 != null) {
                    if (xdVar2.d.ai == 1) {
                        wu wuVar2 = new wu(getContext());
                        wuVar2.setId(num.intValue());
                        xe xeVar3 = xdVar2.d;
                        int[] iArr2 = xeVar3.aj;
                        if (iArr2 != null) {
                            wuVar2.e(iArr2);
                        } else {
                            String str6 = xeVar3.ak;
                            if (str6 != null) {
                                xeVar3.aj = xi.g(wuVar2, str6);
                                wuVar2.e(xdVar2.d.aj);
                            }
                        }
                        xe xeVar4 = xdVar2.d;
                        wuVar2.a = xeVar4.ag;
                        wuVar2.b(xeVar4.ah);
                        wy d2 = d();
                        wuVar2.f();
                        xdVar2.a(d2);
                        constraintLayout = this;
                        constraintLayout.addView(wuVar2, d2);
                    } else {
                        constraintLayout = this;
                    }
                    if (xdVar2.d.b) {
                        Guideline guideline = new Guideline(getContext());
                        guideline.setId(num.intValue());
                        wy d3 = d();
                        xdVar2.a(d3);
                        constraintLayout.addView(guideline, d3);
                    }
                }
            }
            constraintLayout2 = this;
            int i20 = 0;
            while (true) {
                int i21 = i19;
                if (i20 < i21) {
                    View childAt4 = constraintLayout2.getChildAt(i20);
                    if (childAt4 instanceof ww) {
                    }
                    i20++;
                    i19 = i21;
                }
            }
        } else {
            z = isInEditMode;
            i = childCount;
        }
        constraintLayout2.c.aH.clear();
        int size = constraintLayout2.b.size();
        if (size > 0) {
            for (int i22 = 0; i22 < size; i22++) {
                ww wwVar = (ww) constraintLayout2.b.get(i22);
                if (wwVar.isInEditMode()) {
                    String str7 = wwVar.f;
                    wwVar.f = null;
                }
                wb wbVar2 = wwVar.h;
                if (wbVar2 != null) {
                    wbVar2.ar = 0;
                    Arrays.fill(wbVar2.aq, (Object) null);
                    for (int i23 = 0; i23 < wwVar.d; i23++) {
                        int i24 = wwVar.c[i23];
                        View aP = constraintLayout2.aP(i24);
                        if (aP == null && (d = wwVar.d(constraintLayout2, (str = (String) wwVar.g.get(Integer.valueOf(i24))))) != 0) {
                            wwVar.c[i23] = d;
                            wwVar.g.put(Integer.valueOf(d), str);
                            aP = constraintLayout2.aP(d);
                        }
                        if (aP != null && (b = constraintLayout2.b(aP)) != (wbVar = wwVar.h) && b != null) {
                            int i25 = wbVar.ar;
                            vx[] vxVarArr = wbVar.aq;
                            int length = vxVarArr.length;
                            if (i25 + 1 > length) {
                                wbVar.aq = (vx[]) Arrays.copyOf(vxVarArr, length + length);
                            }
                            vx[] vxVarArr2 = wbVar.aq;
                            int i26 = wbVar.ar;
                            vxVarArr2[i26] = b;
                            wbVar.ar = i26 + 1;
                        }
                    }
                    wb wbVar3 = wwVar.h;
                }
            }
            i2 = 0;
        } else {
            i2 = 0;
        }
        while (true) {
            int i27 = i;
            if (i2 >= i27) {
                constraintLayout2.n.clear();
                constraintLayout2.n.put(0, constraintLayout2.c);
                constraintLayout2.n.put(getId(), constraintLayout2.c);
                for (int i28 = 0; i28 < i27; i28++) {
                    View childAt5 = constraintLayout2.getChildAt(i28);
                    constraintLayout2.n.put(childAt5.getId(), constraintLayout2.b(childAt5));
                }
                for (int i29 = 0; i29 < i27; i29++) {
                    View childAt6 = constraintLayout2.getChildAt(i29);
                    vx b3 = constraintLayout2.b(childAt6);
                    if (b3 != null) {
                        wy wyVar2 = (wy) childAt6.getLayoutParams();
                        vy vyVar = constraintLayout2.c;
                        vyVar.aH.add(b3);
                        vx vxVar6 = b3.T;
                        if (vxVar6 != null) {
                            ((we) vxVar6).Y(b3);
                        }
                        b3.T = vyVar;
                        SparseArray sparseArray = constraintLayout2.n;
                        wyVar2.a();
                        wyVar2.ar = false;
                        b3.ag = childAt6.getVisibility();
                        boolean z4 = wyVar2.ae;
                        b3.af = childAt6;
                        if (childAt6 instanceof ww) {
                            ((ww) childAt6).a(b3, constraintLayout2.c.d);
                        }
                        if (wyVar2.ac) {
                            wa waVar = (wa) b3;
                            int i30 = wyVar2.an;
                            int i31 = wyVar2.ao;
                            float f3 = wyVar2.ap;
                            if (f3 == -1.0f) {
                                i5 = -1;
                                if (i30 != -1) {
                                    if (i30 >= 0) {
                                        waVar.a = -1.0f;
                                        waVar.b = i30;
                                        waVar.c = i5;
                                    }
                                } else if (i31 != -1 && i31 >= 0) {
                                    waVar.a = -1.0f;
                                    waVar.b = -1;
                                    waVar.c = i31;
                                }
                            } else if (f3 > -1.0f) {
                                waVar.a = f3;
                                i5 = -1;
                                waVar.b = -1;
                                waVar.c = i5;
                            }
                        } else {
                            int i32 = wyVar2.ag;
                            int i33 = wyVar2.ah;
                            int i34 = wyVar2.ai;
                            int i35 = wyVar2.aj;
                            int i36 = wyVar2.ak;
                            int i37 = wyVar2.al;
                            float f4 = wyVar2.am;
                            int i38 = wyVar2.o;
                            if (i38 != -1) {
                                vx vxVar7 = (vx) sparseArray.get(i38);
                                if (vxVar7 != null) {
                                    float f5 = wyVar2.q;
                                    b3.P(7, vxVar7, 7, wyVar2.p, 0);
                                    b3.E = f5;
                                    f2 = 0.0f;
                                } else {
                                    f2 = 0.0f;
                                }
                            } else {
                                if (i32 != -1) {
                                    vx vxVar8 = (vx) sparseArray.get(i32);
                                    if (vxVar8 != null) {
                                        f = f4;
                                        b3.P(2, vxVar8, 2, wyVar2.leftMargin, i36);
                                    } else {
                                        f = f4;
                                    }
                                } else {
                                    f = f4;
                                    if (i33 != -1 && (vxVar = (vx) sparseArray.get(i33)) != null) {
                                        b3.P(2, vxVar, 4, wyVar2.leftMargin, i36);
                                    }
                                }
                                if (i34 != -1) {
                                    vx vxVar9 = (vx) sparseArray.get(i34);
                                    if (vxVar9 != null) {
                                        b3.P(4, vxVar9, 2, wyVar2.rightMargin, i37);
                                    }
                                } else if (i35 != -1 && (vxVar2 = (vx) sparseArray.get(i35)) != null) {
                                    b3.P(4, vxVar2, 4, wyVar2.rightMargin, i37);
                                }
                                int i39 = wyVar2.h;
                                if (i39 != -1) {
                                    vx vxVar10 = (vx) sparseArray.get(i39);
                                    if (vxVar10 != null) {
                                        b3.P(3, vxVar10, 3, wyVar2.topMargin, wyVar2.w);
                                    }
                                } else {
                                    int i40 = wyVar2.i;
                                    if (i40 != -1 && (vxVar3 = (vx) sparseArray.get(i40)) != null) {
                                        b3.P(3, vxVar3, 5, wyVar2.topMargin, wyVar2.w);
                                    }
                                }
                                int i41 = wyVar2.j;
                                if (i41 != -1) {
                                    vx vxVar11 = (vx) sparseArray.get(i41);
                                    if (vxVar11 != null) {
                                        b3.P(5, vxVar11, 3, wyVar2.bottomMargin, wyVar2.y);
                                    }
                                } else {
                                    int i42 = wyVar2.k;
                                    if (i42 != -1 && (vxVar4 = (vx) sparseArray.get(i42)) != null) {
                                        b3.P(5, vxVar4, 5, wyVar2.bottomMargin, wyVar2.y);
                                    }
                                }
                                int i43 = wyVar2.l;
                                if (i43 != -1) {
                                    h(b3, wyVar2, sparseArray, i43, 6);
                                } else {
                                    int i44 = wyVar2.m;
                                    if (i44 != -1) {
                                        h(b3, wyVar2, sparseArray, i44, 3);
                                    } else {
                                        int i45 = wyVar2.n;
                                        if (i45 != -1) {
                                            h(b3, wyVar2, sparseArray, i45, 5);
                                        }
                                    }
                                }
                                f2 = 0.0f;
                                if (f >= 0.0f) {
                                    b3.ad = f;
                                }
                                float f6 = wyVar2.E;
                                if (f6 >= 0.0f) {
                                    b3.ae = f6;
                                }
                            }
                            if (z) {
                                int i46 = wyVar2.S;
                                if (i46 == -1) {
                                    if (wyVar2.T != -1) {
                                        i46 = -1;
                                    }
                                }
                                int i47 = wyVar2.T;
                                b3.Y = i46;
                                b3.Z = i47;
                            }
                            if (wyVar2.Z) {
                                b3.Q(1);
                                b3.D(wyVar2.width);
                                if (wyVar2.width == -2) {
                                    b3.Q(2);
                                }
                            } else if (wyVar2.width == -1) {
                                if (wyVar2.V) {
                                    b3.Q(3);
                                } else {
                                    b3.Q(4);
                                }
                                b3.L(2).f = wyVar2.leftMargin;
                                b3.L(4).f = wyVar2.rightMargin;
                            } else {
                                b3.Q(3);
                                b3.D(0);
                            }
                            if (wyVar2.aa) {
                                b3.R(1);
                                b3.y(wyVar2.height);
                                if (wyVar2.height == -2) {
                                    b3.R(2);
                                }
                            } else if (wyVar2.height == -1) {
                                if (wyVar2.W) {
                                    b3.R(3);
                                } else {
                                    b3.R(4);
                                }
                                b3.L(3).f = wyVar2.topMargin;
                                b3.L(5).f = wyVar2.bottomMargin;
                            } else {
                                b3.R(3);
                                b3.y(0);
                            }
                            String str8 = wyVar2.F;
                            if (str8 == null || str8.length() == 0) {
                                b3.W = f2;
                            } else {
                                int length2 = str8.length();
                                int indexOf3 = str8.indexOf(44);
                                if (indexOf3 <= 0 || indexOf3 >= length2 - 1) {
                                    i3 = 0;
                                    i4 = -1;
                                } else {
                                    String substring = str8.substring(0, indexOf3);
                                    i4 = substring.equalsIgnoreCase("W") ? 0 : substring.equalsIgnoreCase("H") ? 1 : -1;
                                    i3 = indexOf3 + 1;
                                }
                                int indexOf4 = str8.indexOf(58);
                                if (indexOf4 < 0 || indexOf4 >= length2 - 1) {
                                    String substring2 = str8.substring(i3);
                                    parseFloat = substring2.length() > 0 ? Float.parseFloat(substring2) : 0.0f;
                                } else {
                                    String substring3 = str8.substring(i3, indexOf4);
                                    String substring4 = str8.substring(indexOf4 + 1);
                                    if (substring3.length() > 0 && substring4.length() > 0) {
                                        try {
                                            float parseFloat2 = Float.parseFloat(substring3);
                                            float parseFloat3 = Float.parseFloat(substring4);
                                            if (parseFloat2 > f2 && parseFloat3 > f2) {
                                                parseFloat = i4 == 1 ? Math.abs(parseFloat3 / parseFloat2) : Math.abs(parseFloat2 / parseFloat3);
                                            }
                                        } catch (NumberFormatException e9) {
                                            parseFloat = 0.0f;
                                        }
                                    }
                                    parseFloat = 0.0f;
                                }
                                if (parseFloat > f2) {
                                    b3.W = parseFloat;
                                    b3.X = i4;
                                }
                            }
                            float f7 = wyVar2.G;
                            float[] fArr = b3.ak;
                            fArr[0] = f7;
                            fArr[1] = wyVar2.H;
                            b3.ai = wyVar2.I;
                            b3.aj = wyVar2.J;
                            int i48 = wyVar2.Y;
                            if (i48 >= 0 && i48 <= 3) {
                                b3.r = i48;
                            }
                            int i49 = wyVar2.K;
                            int i50 = wyVar2.M;
                            int i51 = wyVar2.O;
                            float f8 = wyVar2.Q;
                            b3.s = i49;
                            b3.v = i50;
                            if (i51 == Integer.MAX_VALUE) {
                                i51 = 0;
                            }
                            b3.w = i51;
                            b3.x = f8;
                            if (f8 > f2 && f8 < 1.0f && i49 == 0) {
                                b3.s = 2;
                            }
                            int i52 = wyVar2.L;
                            int i53 = wyVar2.N;
                            int i54 = wyVar2.P;
                            float f9 = wyVar2.R;
                            b3.t = i52;
                            b3.y = i53;
                            if (i54 == Integer.MAX_VALUE) {
                                i54 = 0;
                            }
                            b3.z = i54;
                            b3.A = f9;
                            if (f9 > f2 && f9 < 1.0f && i52 == 0) {
                                b3.t = 2;
                            }
                        }
                    }
                }
                return;
            }
            View childAt7 = constraintLayout2.getChildAt(i2);
            if (childAt7 instanceof xk) {
                throw null;
            }
            i2++;
            i = i27;
        }
    }

    private final void h(vx vxVar, wy wyVar, SparseArray sparseArray, int i, int i2) {
        View view = (View) this.a.get(i);
        vx vxVar2 = (vx) sparseArray.get(i);
        if (vxVar2 == null || view == null || !(view.getLayoutParams() instanceof wy)) {
            return;
        }
        wyVar.ab = true;
        if (i2 == 6) {
            wy wyVar2 = (wy) view.getLayoutParams();
            wyVar2.ab = true;
            wyVar2.aq.F = true;
        }
        vxVar.L(6).j(vxVar2.L(i2), wyVar.C, wyVar.B);
        vxVar.F = true;
        vxVar.L(3).d();
        vxVar.L(5).d();
    }

    public final View aP(int i) {
        return (View) this.a.get(i);
    }

    public final vx b(View view) {
        if (view == this) {
            return this.c;
        }
        if (view == null) {
            return null;
        }
        if (view.getLayoutParams() instanceof wy) {
            return ((wy) view.getLayoutParams()).aq;
        }
        view.setLayoutParams(generateLayoutParams(view.getLayoutParams()));
        if (view.getLayoutParams() instanceof wy) {
            return ((wy) view.getLayoutParams()).aq;
        }
        return null;
    }

    protected final boolean c() {
        return (getContext().getApplicationInfo().flags & 4194304) != 0 && getLayoutDirection() == 1;
    }

    @Override // android.view.ViewGroup
    protected final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof wy;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void dispatchDraw(Canvas canvas) {
        Object tag;
        int size;
        ArrayList arrayList = this.b;
        if (arrayList != null && (size = arrayList.size()) > 0) {
            for (int i = 0; i < size; i++) {
            }
        }
        super.dispatchDraw(canvas);
        if (isInEditMode()) {
            float width = getWidth();
            float height = getHeight();
            int childCount = getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                if (childAt.getVisibility() != 8 && (tag = childAt.getTag()) != null && (tag instanceof String)) {
                    String[] split = ((String) tag).split(",");
                    if (split.length == 4) {
                        int parseInt = Integer.parseInt(split[0]);
                        int parseInt2 = Integer.parseInt(split[1]);
                        int parseInt3 = Integer.parseInt(split[2]);
                        int parseInt4 = Integer.parseInt(split[3]);
                        int i3 = (int) ((parseInt / 1080.0f) * width);
                        int i4 = (int) ((parseInt2 / 1920.0f) * height);
                        Paint paint = new Paint();
                        paint.setColor(-65536);
                        float f = i3;
                        float f2 = i4;
                        float f3 = i3 + ((int) ((parseInt3 / 1080.0f) * width));
                        canvas.drawLine(f, f2, f3, f2, paint);
                        float f4 = i4 + ((int) ((parseInt4 / 1920.0f) * height));
                        canvas.drawLine(f3, f2, f3, f4, paint);
                        canvas.drawLine(f3, f4, f, f4, paint);
                        canvas.drawLine(f, f4, f, f2, paint);
                        paint.setColor(-16711936);
                        canvas.drawLine(f, f2, f3, f4, paint);
                        canvas.drawLine(f, f4, f3, f2, paint);
                    }
                }
            }
        }
    }

    @Override // android.view.View
    public final void forceLayout() {
        f();
        super.forceLayout();
    }

    @Override // android.view.ViewGroup
    protected final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return d();
    }

    @Override // android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new wy(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        boolean isInEditMode = isInEditMode();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            wy wyVar = (wy) childAt.getLayoutParams();
            vx vxVar = wyVar.aq;
            if (childAt.getVisibility() == 8 && !wyVar.ac && !wyVar.ad) {
                boolean z2 = wyVar.af;
                if (!isInEditMode) {
                    continue;
                }
            }
            boolean z3 = wyVar.ae;
            int k = vxVar.k();
            int l = vxVar.l();
            childAt.layout(k, l, vxVar.j() + k, vxVar.h() + l);
            if (childAt instanceof xk) {
                throw null;
            }
        }
        int size = this.b.size();
        if (size > 0) {
            for (int i6 = 0; i6 < size; i6++) {
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x03a8  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x03cf  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x04da  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x07c4  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x07c7  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x04e1  */
    /* JADX WARN: Removed duplicated region for block: B:228:0x05df  */
    /* JADX WARN: Removed duplicated region for block: B:230:0x05e5  */
    /* JADX WARN: Removed duplicated region for block: B:317:0x077e  */
    /* JADX WARN: Removed duplicated region for block: B:334:0x0411 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:379:0x04d2  */
    /* JADX WARN: Removed duplicated region for block: B:381:0x0214  */
    /* JADX WARN: Removed duplicated region for block: B:382:0x0216  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0206  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x021b  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected final void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int max;
        int i5;
        boolean z;
        boolean z2;
        boolean z3;
        wz wzVar;
        boolean z4;
        int i6;
        boolean z5;
        int size;
        int i7;
        vy vyVar;
        int i8;
        vy vyVar2;
        int i9;
        wz wzVar2;
        boolean z6;
        wp wpVar;
        wr wrVar;
        boolean z7;
        boolean z8;
        boolean z9;
        int i10;
        int i11;
        int i12;
        boolean z10;
        int size2;
        int i13;
        ArrayList arrayList;
        int size3;
        int i14;
        boolean z11;
        ArrayList arrayList2;
        if (!this.d) {
            int childCount = getChildCount();
            int i15 = 0;
            while (true) {
                if (i15 >= childCount) {
                    break;
                }
                if (getChildAt(i15).isLayoutRequested()) {
                    this.d = true;
                    break;
                }
                i15++;
            }
        }
        this.c.d = c();
        if (this.d) {
            this.d = false;
            int childCount2 = getChildCount();
            int i16 = 0;
            while (true) {
                if (i16 >= childCount2) {
                    break;
                }
                if (getChildAt(i16).isLayoutRequested()) {
                    g();
                    vy vyVar3 = this.c;
                    vyVar3.a.a(vyVar3);
                    break;
                }
                i16++;
            }
        }
        vy vyVar4 = this.c;
        int i17 = this.e;
        int mode = View.MeasureSpec.getMode(i);
        int size4 = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size5 = View.MeasureSpec.getSize(i2);
        int max2 = Math.max(0, getPaddingTop());
        int max3 = Math.max(0, getPaddingBottom());
        int i18 = max2 + max3;
        int max4 = Math.max(0, getPaddingLeft()) + Math.max(0, getPaddingRight());
        int max5 = Math.max(0, getPaddingStart()) + Math.max(0, getPaddingEnd());
        if (max5 > 0) {
            max4 = max5;
        }
        wz wzVar3 = this.g;
        wzVar3.b = max2;
        wzVar3.c = max3;
        wzVar3.d = max4;
        wzVar3.e = i18;
        wzVar3.f = i;
        wzVar3.g = i2;
        int max6 = Math.max(0, getPaddingStart());
        int max7 = Math.max(0, getPaddingEnd());
        if (max6 <= 0 && max7 <= 0) {
            max6 = Math.max(0, getPaddingLeft());
        } else if (c()) {
            max6 = max7;
        }
        int i19 = size4 - max4;
        int i20 = size5 - i18;
        wz wzVar4 = this.g;
        int i21 = wzVar4.e;
        int i22 = wzVar4.d;
        int childCount3 = getChildCount();
        switch (mode) {
            case Integer.MIN_VALUE:
                if (childCount3 == 0) {
                    i3 = Math.max(0, this.h);
                    childCount3 = 0;
                } else {
                    i3 = i19;
                }
                i4 = 2;
                break;
            case 0:
                if (childCount3 == 0) {
                    i3 = Math.max(0, this.h);
                    childCount3 = 0;
                } else {
                    i3 = 0;
                }
                i4 = 2;
                break;
            case 1073741824:
                i3 = Math.min(this.j - i22, i19);
                i4 = 1;
                break;
            default:
                i3 = 0;
                i4 = 1;
                break;
        }
        switch (mode2) {
            case Integer.MIN_VALUE:
                max = childCount3 == 0 ? Math.max(0, this.i) : i20;
                i5 = 2;
                break;
            case 0:
                max = childCount3 == 0 ? Math.max(0, this.i) : 0;
                i5 = 2;
                break;
            case 1073741824:
                max = Math.min(this.k - i21, i20);
                i5 = 1;
                break;
            default:
                max = 0;
                i5 = 1;
                break;
        }
        if (i3 != vyVar4.j() || max != vyVar4.h()) {
            vyVar4.b.c = true;
        }
        vyVar4.Y = 0;
        vyVar4.Z = 0;
        int i23 = this.j;
        int[] iArr = vyVar4.D;
        iArr[0] = i23 - i22;
        iArr[1] = this.k - i21;
        vyVar4.C(0);
        vyVar4.B(0);
        vyVar4.Q(i4);
        vyVar4.D(i3);
        vyVar4.R(i5);
        vyVar4.y(max);
        vyVar4.C(this.h - i22);
        vyVar4.B(this.i - i21);
        vyVar4.ar = max6;
        vyVar4.as = max2;
        wg wgVar = vyVar4.a;
        wz wzVar5 = vyVar4.aG;
        int size6 = vyVar4.aH.size();
        int j = vyVar4.j();
        int h = vyVar4.h();
        boolean b = wc.b(i17, 128);
        boolean z12 = !b ? wc.b(i17, 64) : true;
        if (z12) {
            int i24 = 0;
            while (i24 < size6) {
                vx vxVar = (vx) vyVar4.aH.get(i24);
                boolean z13 = z12;
                boolean z14 = vxVar.N() == 3 && vxVar.O() == 3 && vxVar.W > 0.0f;
                if (vxVar.I()) {
                    if (z14) {
                        z = false;
                        if (mode == 1073741824) {
                            if (mode2 == 1073741824) {
                                z2 = true;
                                mode = 1073741824;
                                mode2 = 1073741824;
                                z3 = z & z2;
                                if (z3) {
                                    wzVar = wzVar5;
                                    z4 = z3;
                                    i6 = 0;
                                    z5 = false;
                                } else {
                                    int min = Math.min(vyVar4.D[0], i19);
                                    int min2 = Math.min(vyVar4.D[1], i20);
                                    boolean z15 = mode != 1073741824;
                                    if (mode == 1073741824 && vyVar4.j() != min) {
                                        vyVar4.D(min);
                                        vyVar4.c();
                                    }
                                    boolean z16 = mode2 != 1073741824;
                                    if (mode2 == 1073741824 && vyVar4.h() != min2) {
                                        vyVar4.y(min2);
                                        vyVar4.c();
                                    }
                                    if (mode == 1073741824 && mode2 == 1073741824) {
                                        wj wjVar = vyVar4.b;
                                        if (wjVar.b || wjVar.c) {
                                            ArrayList arrayList3 = wjVar.a.aH;
                                            int size7 = arrayList3.size();
                                            for (int i25 = 0; i25 < size7; i25++) {
                                                vx vxVar2 = (vx) arrayList3.get(i25);
                                                vxVar2.r();
                                                vxVar2.e = false;
                                                vxVar2.h.g();
                                                vxVar2.i.g();
                                            }
                                            wjVar.a.r();
                                            vy vyVar5 = wjVar.a;
                                            i10 = 0;
                                            vyVar5.e = false;
                                            vyVar5.h.g();
                                            wjVar.a.i.g();
                                            wjVar.c = false;
                                        } else {
                                            i10 = 0;
                                        }
                                        wjVar.d(wjVar.d);
                                        vy vyVar6 = wjVar.a;
                                        vyVar6.Y = i10;
                                        vyVar6.Z = i10;
                                        int M = vyVar6.M(i10);
                                        int M2 = wjVar.a.M(1);
                                        if (wjVar.b) {
                                            wjVar.b();
                                        }
                                        int k = wjVar.a.k();
                                        int l = wjVar.a.l();
                                        wjVar.a.h.i.c(k);
                                        wjVar.a.i.i.c(l);
                                        wjVar.c();
                                        if (M != 2) {
                                            if (M2 == 2) {
                                                M2 = 2;
                                            } else {
                                                z4 = z3;
                                                vy vyVar7 = wjVar.a;
                                                i11 = vyVar7.ap[0];
                                                if (i11 != 1 || i11 == 4) {
                                                    int j2 = vyVar7.j() + k;
                                                    wjVar.a.h.j.c(j2);
                                                    wjVar.a.h.f.c(j2 - k);
                                                    wjVar.c();
                                                    vy vyVar8 = wjVar.a;
                                                    i12 = vyVar8.ap[1];
                                                    if (i12 != 1 || i12 == 4) {
                                                        int h2 = vyVar8.h() + l;
                                                        wjVar.a.i.j.c(h2);
                                                        wjVar.a.i.f.c(h2 - l);
                                                    }
                                                    wjVar.c();
                                                    z10 = true;
                                                } else {
                                                    z10 = false;
                                                }
                                                ArrayList arrayList4 = wjVar.e;
                                                size2 = arrayList4.size();
                                                i13 = 0;
                                                while (i13 < size2) {
                                                    wt wtVar = (wt) arrayList4.get(i13);
                                                    ArrayList arrayList5 = arrayList4;
                                                    int i26 = size2;
                                                    if (wtVar.d != wjVar.a || wtVar.h) {
                                                        wtVar.c();
                                                    }
                                                    i13++;
                                                    arrayList4 = arrayList5;
                                                    size2 = i26;
                                                }
                                                arrayList = wjVar.e;
                                                size3 = arrayList.size();
                                                i14 = 0;
                                                while (true) {
                                                    if (i14 >= size3) {
                                                        wt wtVar2 = (wt) arrayList.get(i14);
                                                        if (z10) {
                                                            z11 = z10;
                                                            arrayList2 = arrayList;
                                                        } else {
                                                            z11 = z10;
                                                            arrayList2 = arrayList;
                                                            if (wtVar2.d == wjVar.a) {
                                                                continue;
                                                                i14++;
                                                                z10 = z11;
                                                                arrayList = arrayList2;
                                                            }
                                                        }
                                                        if (!wtVar2.i.i) {
                                                            z5 = false;
                                                        } else if (wtVar2.j.i || (wtVar2 instanceof wn)) {
                                                            if (!wtVar2.f.i && !(wtVar2 instanceof wh) && !(wtVar2 instanceof wn)) {
                                                                z5 = false;
                                                            }
                                                            i14++;
                                                            z10 = z11;
                                                            arrayList = arrayList2;
                                                        } else {
                                                            z5 = false;
                                                        }
                                                    } else {
                                                        z5 = true;
                                                    }
                                                }
                                                wjVar.a.Q(M);
                                                wjVar.a.R(M2);
                                                wzVar = wzVar5;
                                                z9 = true;
                                                i6 = 2;
                                            }
                                        }
                                        if (b) {
                                            ArrayList arrayList6 = wjVar.e;
                                            int size8 = arrayList6.size();
                                            z4 = z3;
                                            int i27 = 0;
                                            while (true) {
                                                if (i27 < size8) {
                                                    int i28 = i27 + 1;
                                                    if (((wt) arrayList6.get(i27)).e()) {
                                                        i27 = i28;
                                                    }
                                                } else {
                                                    if (M == 2) {
                                                        wjVar.a.Q(1);
                                                        vy vyVar9 = wjVar.a;
                                                        vyVar9.D(wjVar.a(vyVar9, 0));
                                                        vy vyVar10 = wjVar.a;
                                                        vyVar10.h.f.c(vyVar10.j());
                                                        M = 2;
                                                    }
                                                    if (M2 == 2) {
                                                        wjVar.a.R(1);
                                                        vy vyVar11 = wjVar.a;
                                                        vyVar11.y(wjVar.a(vyVar11, 1));
                                                        vy vyVar12 = wjVar.a;
                                                        vyVar12.i.f.c(vyVar12.h());
                                                    }
                                                }
                                            }
                                        } else {
                                            z4 = z3;
                                        }
                                        vy vyVar72 = wjVar.a;
                                        i11 = vyVar72.ap[0];
                                        if (i11 != 1) {
                                        }
                                        int j22 = vyVar72.j() + k;
                                        wjVar.a.h.j.c(j22);
                                        wjVar.a.h.f.c(j22 - k);
                                        wjVar.c();
                                        vy vyVar82 = wjVar.a;
                                        i12 = vyVar82.ap[1];
                                        if (i12 != 1) {
                                        }
                                        int h22 = vyVar82.h() + l;
                                        wjVar.a.i.j.c(h22);
                                        wjVar.a.i.f.c(h22 - l);
                                        wjVar.c();
                                        z10 = true;
                                        ArrayList arrayList42 = wjVar.e;
                                        size2 = arrayList42.size();
                                        i13 = 0;
                                        while (i13 < size2) {
                                        }
                                        arrayList = wjVar.e;
                                        size3 = arrayList.size();
                                        i14 = 0;
                                        while (true) {
                                            if (i14 >= size3) {
                                            }
                                            i14++;
                                            z10 = z11;
                                            arrayList = arrayList2;
                                        }
                                        wjVar.a.Q(M);
                                        wjVar.a.R(M2);
                                        wzVar = wzVar5;
                                        z9 = true;
                                        i6 = 2;
                                    } else {
                                        z4 = z3;
                                        wj wjVar2 = vyVar4.b;
                                        if (wjVar2.b) {
                                            ArrayList arrayList7 = wjVar2.a.aH;
                                            int size9 = arrayList7.size();
                                            int i29 = 0;
                                            while (i29 < size9) {
                                                vx vxVar3 = (vx) arrayList7.get(i29);
                                                vxVar3.r();
                                                vxVar3.e = false;
                                                int i30 = size9;
                                                wp wpVar2 = vxVar3.h;
                                                wpVar2.f.i = false;
                                                wpVar2.h = false;
                                                wpVar2.g();
                                                wr wrVar2 = vxVar3.i;
                                                wrVar2.f.i = false;
                                                wrVar2.h = false;
                                                wrVar2.g();
                                                i29++;
                                                size9 = i30;
                                                arrayList7 = arrayList7;
                                                wzVar5 = wzVar5;
                                            }
                                            wzVar = wzVar5;
                                            wjVar2.a.r();
                                            vy vyVar13 = wjVar2.a;
                                            vyVar13.e = false;
                                            wp wpVar3 = vyVar13.h;
                                            wpVar3.f.i = false;
                                            wpVar3.h = false;
                                            wpVar3.g();
                                            wr wrVar3 = wjVar2.a.i;
                                            wrVar3.f.i = false;
                                            wrVar3.h = false;
                                            wrVar3.g();
                                            wjVar2.b();
                                        } else {
                                            wzVar = wzVar5;
                                        }
                                        wjVar2.d(wjVar2.d);
                                        vy vyVar14 = wjVar2.a;
                                        vyVar14.Y = 0;
                                        vyVar14.Z = 0;
                                        vyVar14.h.i.c(0);
                                        wjVar2.a.i.i.c(0);
                                        if (mode == 1073741824) {
                                            z5 = vyVar4.V(b, 0);
                                            i6 = 1;
                                        } else {
                                            i6 = 0;
                                            z5 = true;
                                        }
                                        if (mode2 == 1073741824) {
                                            z9 = true;
                                            z5 &= vyVar4.V(b, 1);
                                            i6++;
                                        } else {
                                            z9 = true;
                                        }
                                    }
                                    if (z5) {
                                        vyVar4.E(!z15, z16 ^ z9);
                                    }
                                }
                                if (z5 || i6 != 2) {
                                    int i31 = vyVar4.ax;
                                    if (size6 > 0) {
                                        int size10 = vyVar4.aH.size();
                                        boolean W = vyVar4.W(64);
                                        wz wzVar6 = vyVar4.aG;
                                        for (int i32 = 0; i32 < size10; i32++) {
                                            vx vxVar4 = (vx) vyVar4.aH.get(i32);
                                            if (!(vxVar4 instanceof wa) && !(vxVar4 instanceof vu)) {
                                                boolean z17 = vxVar4.G;
                                                if (!W || (wpVar = vxVar4.h) == null || (wrVar = vxVar4.i) == null || !wpVar.f.i || !wrVar.f.i) {
                                                    int M3 = vxVar4.M(0);
                                                    int M4 = vxVar4.M(1);
                                                    if (M3 != 3) {
                                                        z6 = false;
                                                    } else if (vxVar4.s == 1 || M4 != 3) {
                                                        z6 = false;
                                                        M3 = 3;
                                                    } else if (vxVar4.t != 1) {
                                                        z6 = true;
                                                        M3 = 3;
                                                        M4 = 3;
                                                    } else {
                                                        z6 = false;
                                                        M3 = 3;
                                                        M4 = 3;
                                                    }
                                                    if (!z6) {
                                                        if (vyVar4.W(1) && !(vxVar4 instanceof wd)) {
                                                            boolean z18 = M3 == 3 && vxVar4.s == 0 && M4 != 3 && !vxVar4.I();
                                                            if (M4 == 3 && vxVar4.t == 0 && M3 != 3 && !vxVar4.I()) {
                                                                z18 = true;
                                                            }
                                                            if ((M3 == 3 || M4 == 3) && vxVar4.W > 0.0f) {
                                                            }
                                                        }
                                                        wgVar.c(wzVar6, vxVar4, 0);
                                                    }
                                                }
                                            }
                                        }
                                        int childCount4 = wzVar6.a.getChildCount();
                                        for (int i33 = 0; i33 < childCount4; i33++) {
                                            View childAt = wzVar6.a.getChildAt(i33);
                                            if (childAt instanceof xk) {
                                                ConstraintLayout constraintLayout = wzVar6.a;
                                                throw null;
                                            }
                                        }
                                        int size11 = wzVar6.a.b.size();
                                        if (size11 > 0) {
                                            for (int i34 = 0; i34 < size11; i34++) {
                                                ConstraintLayout constraintLayout2 = wzVar6.a;
                                            }
                                        }
                                    }
                                    wgVar.a(vyVar4);
                                    size = wgVar.a.size();
                                    if (size6 > 0) {
                                        wgVar.b(vyVar4, 0, j, h);
                                    }
                                    if (size <= 0) {
                                        int N = vyVar4.N();
                                        int O = vyVar4.O();
                                        int max8 = Math.max(vyVar4.j(), wgVar.b.ab);
                                        int max9 = Math.max(vyVar4.h(), wgVar.b.ac);
                                        int i35 = 0;
                                        boolean z19 = false;
                                        while (i35 < size) {
                                            vx vxVar5 = (vx) wgVar.a.get(i35);
                                            if (vxVar5 instanceof wd) {
                                                int j3 = vxVar5.j();
                                                int h3 = vxVar5.h();
                                                i9 = i31;
                                                wzVar2 = wzVar;
                                                boolean c = z19 | wgVar.c(wzVar2, vxVar5, 1);
                                                int j4 = vxVar5.j();
                                                boolean z20 = c;
                                                int h4 = vxVar5.h();
                                                if (j4 != j3) {
                                                    vxVar5.D(j4);
                                                    if (N == 2 && vxVar5.i() > max8) {
                                                        max8 = Math.max(max8, vxVar5.i() + vxVar5.L(4).b());
                                                    }
                                                    z20 = true;
                                                }
                                                if (h4 != h3) {
                                                    vxVar5.y(h4);
                                                    if (O == 2 && vxVar5.g() > max9) {
                                                        max9 = Math.max(max9, vxVar5.g() + vxVar5.L(5).b());
                                                    }
                                                    z20 = true;
                                                }
                                                z19 = z20;
                                            } else {
                                                i9 = i31;
                                                wzVar2 = wzVar;
                                            }
                                            i35++;
                                            wzVar = wzVar2;
                                            i31 = i9;
                                        }
                                        i7 = i31;
                                        wz wzVar7 = wzVar;
                                        int i36 = 0;
                                        while (true) {
                                            if (i36 < 2) {
                                                int i37 = 0;
                                                while (i37 < size) {
                                                    vx vxVar6 = (vx) wgVar.a.get(i37);
                                                    if (((vxVar6 instanceof wb) && !(vxVar6 instanceof wd)) || (vxVar6 instanceof wa) || vxVar6.ag == 8 || ((z4 && vxVar6.h.f.i && vxVar6.i.f.i) || (vxVar6 instanceof wd))) {
                                                        i8 = size;
                                                        vyVar2 = vyVar4;
                                                    } else {
                                                        int j5 = vxVar6.j();
                                                        int h5 = vxVar6.h();
                                                        i8 = size;
                                                        int i38 = vxVar6.aa;
                                                        vyVar2 = vyVar4;
                                                        boolean c2 = wgVar.c(wzVar7, vxVar6, i36 == 1 ? 2 : 1) | z19;
                                                        int j6 = vxVar6.j();
                                                        boolean z21 = c2;
                                                        int h6 = vxVar6.h();
                                                        if (j6 != j5) {
                                                            vxVar6.D(j6);
                                                            if (N == 2 && vxVar6.i() > max8) {
                                                                max8 = Math.max(max8, vxVar6.i() + vxVar6.L(4).b());
                                                            }
                                                            z21 = true;
                                                        }
                                                        if (h6 != h5) {
                                                            vxVar6.y(h6);
                                                            if (O == 2 && vxVar6.g() > max9) {
                                                                max9 = Math.max(max9, vxVar6.g() + vxVar6.L(5).b());
                                                            }
                                                            z21 = true;
                                                        }
                                                        z19 = (!vxVar6.F || i38 == vxVar6.aa) ? z21 : true;
                                                    }
                                                    i37++;
                                                    size = i8;
                                                    vyVar4 = vyVar2;
                                                }
                                                int i39 = size;
                                                vy vyVar15 = vyVar4;
                                                if (z19) {
                                                    i36++;
                                                    wgVar.b(vyVar15, i36, j, h);
                                                    vyVar4 = vyVar15;
                                                    size = i39;
                                                    z19 = false;
                                                } else {
                                                    vyVar = vyVar15;
                                                }
                                            } else {
                                                vyVar = vyVar4;
                                            }
                                        }
                                    } else {
                                        i7 = i31;
                                        vyVar = vyVar4;
                                    }
                                    vyVar.U(i7);
                                }
                                int j7 = this.c.j();
                                int h7 = this.c.h();
                                vy vyVar16 = this.c;
                                z7 = vyVar16.ay;
                                z8 = vyVar16.az;
                                wz wzVar8 = this.g;
                                int i40 = wzVar8.e;
                                int resolveSizeAndState = resolveSizeAndState(j7 + wzVar8.d, i, 0);
                                int resolveSizeAndState2 = resolveSizeAndState(h7 + i40, i2, 0);
                                int min3 = Math.min(this.j, resolveSizeAndState & 16777215);
                                int min4 = Math.min(this.k, resolveSizeAndState2 & 16777215);
                                if (z7) {
                                    min3 |= 16777216;
                                }
                                if (z8) {
                                    min4 |= 16777216;
                                }
                                setMeasuredDimension(min3, min4);
                            }
                            mode = 1073741824;
                        }
                        z2 = b;
                        z3 = z & z2;
                        if (z3) {
                        }
                        if (z5) {
                        }
                        int i312 = vyVar4.ax;
                        if (size6 > 0) {
                        }
                        wgVar.a(vyVar4);
                        size = wgVar.a.size();
                        if (size6 > 0) {
                        }
                        if (size <= 0) {
                        }
                        vyVar.U(i7);
                        int j72 = this.c.j();
                        int h72 = this.c.h();
                        vy vyVar162 = this.c;
                        z7 = vyVar162.ay;
                        z8 = vyVar162.az;
                        wz wzVar82 = this.g;
                        int i402 = wzVar82.e;
                        int resolveSizeAndState3 = resolveSizeAndState(j72 + wzVar82.d, i, 0);
                        int resolveSizeAndState22 = resolveSizeAndState(h72 + i402, i2, 0);
                        int min32 = Math.min(this.j, resolveSizeAndState3 & 16777215);
                        int min42 = Math.min(this.k, resolveSizeAndState22 & 16777215);
                        if (z7) {
                        }
                        if (z8) {
                        }
                        setMeasuredDimension(min32, min42);
                    }
                    z14 = false;
                }
                if (vxVar.J() && z14) {
                    z = false;
                } else if (vxVar instanceof wd) {
                    z = false;
                } else if (vxVar.I() || vxVar.J()) {
                    z = false;
                } else {
                    i24++;
                    z12 = z13;
                }
                if (mode == 1073741824) {
                }
                if (b) {
                }
                z3 = z & z2;
                if (z3) {
                }
                if (z5) {
                }
                int i3122 = vyVar4.ax;
                if (size6 > 0) {
                }
                wgVar.a(vyVar4);
                size = wgVar.a.size();
                if (size6 > 0) {
                }
                if (size <= 0) {
                }
                vyVar.U(i7);
                int j722 = this.c.j();
                int h722 = this.c.h();
                vy vyVar1622 = this.c;
                z7 = vyVar1622.ay;
                z8 = vyVar1622.az;
                wz wzVar822 = this.g;
                int i4022 = wzVar822.e;
                int resolveSizeAndState32 = resolveSizeAndState(j722 + wzVar822.d, i, 0);
                int resolveSizeAndState222 = resolveSizeAndState(h722 + i4022, i2, 0);
                int min322 = Math.min(this.j, resolveSizeAndState32 & 16777215);
                int min422 = Math.min(this.k, resolveSizeAndState222 & 16777215);
                if (z7) {
                }
                if (z8) {
                }
                setMeasuredDimension(min322, min422);
            }
        }
        z = z12;
        if (mode == 1073741824) {
        }
        if (b) {
        }
        z3 = z & z2;
        if (z3) {
        }
        if (z5) {
        }
        int i31222 = vyVar4.ax;
        if (size6 > 0) {
        }
        wgVar.a(vyVar4);
        size = wgVar.a.size();
        if (size6 > 0) {
        }
        if (size <= 0) {
        }
        vyVar.U(i7);
        int j7222 = this.c.j();
        int h7222 = this.c.h();
        vy vyVar16222 = this.c;
        z7 = vyVar16222.ay;
        z8 = vyVar16222.az;
        wz wzVar8222 = this.g;
        int i40222 = wzVar8222.e;
        int resolveSizeAndState322 = resolveSizeAndState(j7222 + wzVar8222.d, i, 0);
        int resolveSizeAndState2222 = resolveSizeAndState(h7222 + i40222, i2, 0);
        int min3222 = Math.min(this.j, resolveSizeAndState322 & 16777215);
        int min4222 = Math.min(this.k, resolveSizeAndState2222 & 16777215);
        if (z7) {
        }
        if (z8) {
        }
        setMeasuredDimension(min3222, min4222);
    }

    @Override // android.view.ViewGroup
    public final void onViewAdded(View view) {
        super.onViewAdded(view);
        vx b = b(view);
        if ((view instanceof Guideline) && !(b instanceof wa)) {
            wy wyVar = (wy) view.getLayoutParams();
            wyVar.aq = new wa();
            wyVar.ac = true;
            ((wa) wyVar.aq).c(wyVar.U);
        }
        if (view instanceof ww) {
            ww wwVar = (ww) view;
            wwVar.f();
            ((wy) view.getLayoutParams()).ad = true;
            if (!this.b.contains(wwVar)) {
                this.b.add(wwVar);
            }
        }
        this.a.put(view.getId(), view);
        this.d = true;
    }

    @Override // android.view.ViewGroup
    public final void onViewRemoved(View view) {
        super.onViewRemoved(view);
        this.a.remove(view.getId());
        this.c.Y(b(view));
        this.b.remove(view);
        this.d = true;
    }

    @Override // android.view.View, android.view.ViewParent
    public final void requestLayout() {
        f();
        super.requestLayout();
    }

    @Override // android.view.View
    public final void setId(int i) {
        this.a.remove(getId());
        super.setId(i);
        this.a.put(getId(), this);
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override // android.view.ViewGroup
    protected final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new wy(layoutParams);
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = new SparseArray();
        this.b = new ArrayList(4);
        this.c = new vy();
        this.h = 0;
        this.i = 0;
        this.j = Preference.DEFAULT_ORDER;
        this.k = Preference.DEFAULT_ORDER;
        this.d = true;
        this.e = 257;
        this.l = null;
        this.m = -1;
        this.f = new HashMap();
        this.n = new SparseArray();
        this.g = new wz(this, this);
        e(attributeSet, 0, 0);
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = new SparseArray();
        this.b = new ArrayList(4);
        this.c = new vy();
        this.h = 0;
        this.i = 0;
        this.j = Preference.DEFAULT_ORDER;
        this.k = Preference.DEFAULT_ORDER;
        this.d = true;
        this.e = 257;
        this.l = null;
        this.m = -1;
        this.f = new HashMap();
        this.n = new SparseArray();
        this.g = new wz(this, this);
        e(attributeSet, i, 0);
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.a = new SparseArray();
        this.b = new ArrayList(4);
        this.c = new vy();
        this.h = 0;
        this.i = 0;
        this.j = Preference.DEFAULT_ORDER;
        this.k = Preference.DEFAULT_ORDER;
        this.d = true;
        this.e = 257;
        this.l = null;
        this.m = -1;
        this.f = new HashMap();
        this.n = new SparseArray();
        this.g = new wz(this, this);
        e(attributeSet, i, i2);
    }
}
