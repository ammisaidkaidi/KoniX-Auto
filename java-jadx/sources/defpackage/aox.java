package defpackage;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.android.car.ui.recyclerview.CarUiRecyclerView;
import com.android.car.ui.recyclerview.CarUiRecyclerViewContainer;
import com.android.car.ui.recyclerview.DefaultScrollBar;
import com.google.android.embedded.projection.R;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class aox extends FrameLayout implements CarUiRecyclerView, arx {
    public static final /* synthetic */ int d = 0;
    private static final Class[] e = {Context.class, AttributeSet.class, Integer.TYPE, Integer.TYPE};
    public final RecyclerView a;
    public apj b;
    public final Set c;
    private final arr f;
    private final ars g;
    private final boolean h;
    private String i;
    private final int j;
    private final int k;
    private final apk l;
    private final qx m;
    private int n;
    private final boolean o;
    private final boolean p;
    private aoh q;

    public aox(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f = new aow(this);
        this.c = new HashSet();
        new ArrayList();
        this.g = ars.b(context);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, amu.b, 0, 0);
        boolean z = context.getResources().getBoolean(R.bool.car_ui_scrollbar_enable);
        this.h = z;
        int i = obtainStyledAttributes.getInt(1, 2);
        int i2 = R.layout.car_ui_recycler_view_no_scrollbar;
        if (z) {
            switch (i) {
                case 0:
                    i2 = R.layout.car_ui_recycler_view_small;
                    break;
                case 1:
                    i2 = R.layout.car_ui_recycler_view_medium;
                    break;
                case 2:
                    i2 = R.layout.car_ui_recycler_view;
                    break;
            }
        }
        View inflate = LayoutInflater.from(context).inflate(i2, (ViewGroup) this, true);
        ViewGroup viewGroup = (ViewGroup) aro.g(inflate, R.id.car_ui_recycler_view);
        if (viewGroup instanceof CarUiRecyclerViewContainer) {
            this.a = (RecyclerView) viewGroup.getChildAt(0);
        } else {
            this.a = (RecyclerView) viewGroup;
        }
        h(this.a, obtainStyledAttributes.getBoolean(7, false), obtainStyledAttributes.getInt(0, 1));
        this.j = context.getResources().getDimensionPixelSize(R.dimen.car_ui_scrollbar_padding_top);
        this.k = context.getResources().getDimensionPixelSize(R.dimen.car_ui_scrollbar_padding_bottom);
        int i3 = obtainStyledAttributes.getInt(4, 0);
        this.n = obtainStyledAttributes.getInt(5, 2);
        this.p = obtainStyledAttributes.getBoolean(2, false);
        this.m = new apl(xr.a(context, R.drawable.car_ui_recyclerview_divider));
        this.l = new apk(xr.a(context, R.drawable.car_ui_divider), xr.a(context, R.drawable.car_ui_divider), this.n);
        this.o = true;
        this.a.setClipToPadding(false);
        String string = obtainStyledAttributes.getString(3);
        if (!TextUtils.isEmpty(string)) {
            j(context, string, attributeSet);
        } else if (i3 == 1) {
            getContext();
            d(new GridLayoutManager(this.n));
        } else {
            getContext();
            d(new LinearLayoutManager());
        }
        obtainStyledAttributes.recycle();
        if (z) {
            this.a.setVerticalScrollBarEnabled(false);
            this.a.setHorizontalScrollBarEnabled(false);
            this.i = context.getResources().getString(R.string.car_ui_scrollbar_component);
            g(context, aro.g(inflate, R.id.car_ui_scroll_bar));
        }
    }

    private final void g(Context context, View view) {
        try {
            try {
                Constructor<?> declaredConstructor = (!TextUtils.isEmpty(this.i) ? getContext().getClassLoader().loadClass(this.i) : DefaultScrollBar.class).getDeclaredConstructor(new Class[0]);
                declaredConstructor.setAccessible(true);
                apj apjVar = (apj) declaredConstructor.newInstance(new Object[0]);
                this.b = apjVar;
                apjVar.initialize(context, this.a, view);
                i(this.j + getPaddingTop(), this.k + getPaddingBottom());
            } catch (ReflectiveOperationException e2) {
                String valueOf = String.valueOf(this.i);
                throw new IllegalArgumentException(valueOf.length() != 0 ? "Error creating scroll bar component: ".concat(valueOf) : new String("Error creating scroll bar component: "), e2);
            }
        } catch (ReflectiveOperationException e3) {
            String valueOf2 = String.valueOf(this.i);
            throw new IllegalArgumentException(valueOf2.length() != 0 ? "Error loading scroll bar component: ".concat(valueOf2) : new String("Error loading scroll bar component: "), e3);
        }
    }

    private final void h(final ViewGroup viewGroup, boolean z, int i) {
        if (z) {
            viewGroup.setContentDescription(i != 1 ? "com.android.car.ui.utils.HORIZONTALLY_SCROLLABLE" : "com.android.car.ui.utils.VERTICALLY_SCROLLABLE");
        }
        viewGroup.setOnGenericMotionListener(z ? new View.OnGenericMotionListener() { // from class: aot
            @Override // android.view.View.OnGenericMotionListener
            public final boolean onGenericMotion(View view, MotionEvent motionEvent) {
                ViewGroup viewGroup2 = viewGroup;
                int i2 = aox.d;
                if (motionEvent.getAction() != 8 || motionEvent.getSource() != 4194304) {
                    return false;
                }
                MotionEvent obtain = MotionEvent.obtain(motionEvent);
                obtain.setSource(8194);
                viewGroup2.onGenericMotionEvent(obtain);
                return true;
            }
        } : null);
        viewGroup.setFocusable(z);
        viewGroup.setDescendantFocusability(131072);
        viewGroup.setDefaultFocusHighlightEnabled(false);
        viewGroup.setOnFocusChangeListener(z ? new View.OnFocusChangeListener() { // from class: aos
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z2) {
                apj apjVar = aox.this.b;
                if (apjVar != null) {
                    apjVar.setHighlightThumb(z2);
                }
            }
        } : null);
        if (z) {
            return;
        }
        super.setContentDescription("com.android.car.ui.utils.ROTARY_CONTAINER");
    }

    private final void i(int i, int i2) {
        apj apjVar;
        if (!this.h || (apjVar = this.b) == null) {
            return;
        }
        apjVar.setPadding(i, i2);
    }

    private final void j(Context context, String str, AttributeSet attributeSet) {
        Constructor constructor;
        Object[] objArr;
        if (str != null) {
            String trim = str.trim();
            if (trim.isEmpty()) {
                return;
            }
            if (trim.charAt(0) == '.') {
                String valueOf = String.valueOf(context.getPackageName());
                String valueOf2 = String.valueOf(trim);
                trim = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
            } else if (!trim.contains(".")) {
                String name = RecyclerView.class.getPackage().getName();
                StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 1 + String.valueOf(trim).length());
                sb.append(name);
                sb.append('.');
                sb.append(trim);
                trim = sb.toString();
            }
            try {
                Class<? extends U> asSubclass = Class.forName(trim, false, isInEditMode() ? getClass().getClassLoader() : context.getClassLoader()).asSubclass(ra.class);
                try {
                    constructor = asSubclass.getConstructor(e);
                    objArr = new Object[]{context, attributeSet, 0, 0};
                } catch (NoSuchMethodException e2) {
                    try {
                        constructor = asSubclass.getConstructor(new Class[0]);
                        objArr = null;
                    } catch (NoSuchMethodException e3) {
                        e3.initCause(e2);
                        String positionDescription = attributeSet.getPositionDescription();
                        StringBuilder sb2 = new StringBuilder(String.valueOf(positionDescription).length() + 31 + String.valueOf(trim).length());
                        sb2.append(positionDescription);
                        sb2.append(": Error creating LayoutManager ");
                        sb2.append(trim);
                        throw new IllegalStateException(sb2.toString(), e3);
                    }
                }
                constructor.setAccessible(true);
                d((ra) constructor.newInstance(objArr));
            } catch (ClassCastException e4) {
                String positionDescription2 = attributeSet.getPositionDescription();
                StringBuilder sb3 = new StringBuilder(String.valueOf(positionDescription2).length() + 31 + String.valueOf(trim).length());
                sb3.append(positionDescription2);
                sb3.append(": Class is not a LayoutManager ");
                sb3.append(trim);
                throw new IllegalStateException(sb3.toString(), e4);
            } catch (ClassNotFoundException e5) {
                String positionDescription3 = attributeSet.getPositionDescription();
                StringBuilder sb4 = new StringBuilder(String.valueOf(positionDescription3).length() + 31 + String.valueOf(trim).length());
                sb4.append(positionDescription3);
                sb4.append(": Unable to find LayoutManager ");
                sb4.append(trim);
                throw new IllegalStateException(sb4.toString(), e5);
            } catch (IllegalAccessException e6) {
                String positionDescription4 = attributeSet.getPositionDescription();
                StringBuilder sb5 = new StringBuilder(String.valueOf(positionDescription4).length() + 39 + String.valueOf(trim).length());
                sb5.append(positionDescription4);
                sb5.append(": Cannot access non-public constructor ");
                sb5.append(trim);
                throw new IllegalStateException(sb5.toString(), e6);
            } catch (InstantiationException e7) {
                String positionDescription5 = attributeSet.getPositionDescription();
                StringBuilder sb6 = new StringBuilder(String.valueOf(positionDescription5).length() + 43 + String.valueOf(trim).length());
                sb6.append(positionDescription5);
                sb6.append(": Could not instantiate the LayoutManager: ");
                sb6.append(trim);
                throw new IllegalStateException(sb6.toString(), e7);
            } catch (InvocationTargetException e8) {
                String positionDescription6 = attributeSet.getPositionDescription();
                StringBuilder sb7 = new StringBuilder(String.valueOf(positionDescription6).length() + 43 + String.valueOf(trim).length());
                sb7.append(positionDescription6);
                sb7.append(": Could not instantiate the LayoutManager: ");
                sb7.append(trim);
                throw new IllegalStateException(sb7.toString(), e8);
            }
        }
    }

    public final int a() {
        ra raVar = this.a.l;
        raVar.getClass();
        return ((LinearLayoutManager) raVar).I();
    }

    @Override // com.android.car.ui.recyclerview.CarUiRecyclerView
    public final void addItemDecoration(qx qxVar) {
        throw null;
    }

    @Override // defpackage.arx
    public final void b(Runnable runnable) {
        this.c.add(runnable);
    }

    @Override // defpackage.arx
    public final void c(Runnable runnable) {
        if (runnable != null) {
            this.c.remove(runnable);
        }
    }

    public final void d(ra raVar) {
        if (raVar instanceof GridLayoutManager) {
            e(aof.d(raVar));
        } else {
            e(aoi.d(raVar));
        }
    }

    public final void e(aoh aohVar) {
        LinearLayoutManager linearLayoutManager;
        this.q = aohVar;
        if (aohVar == null) {
            this.a.Z(null);
            return;
        }
        if (aohVar.a() == 0) {
            getContext();
            linearLayoutManager = new aou(this, aohVar.b(), aohVar.e());
        } else {
            getContext();
            aov aovVar = new aov(this, aohVar.c(), aohVar.b(), aohVar.e());
            linearLayoutManager = aovVar;
            if (aohVar instanceof aof) {
                ((GridLayoutManager) aovVar).g = ((aof) aohVar).a;
                linearLayoutManager = aovVar;
            }
        }
        if (this.o) {
            RecyclerView recyclerView = this.a;
            apk apkVar = this.l;
            apkVar.getClass();
            recyclerView.T(apkVar);
            RecyclerView recyclerView2 = this.a;
            qx qxVar = this.m;
            qxVar.getClass();
            recyclerView2.T(qxVar);
            if (linearLayoutManager instanceof GridLayoutManager) {
                if (this.p) {
                    RecyclerView recyclerView3 = this.a;
                    apk apkVar2 = this.l;
                    apkVar2.getClass();
                    recyclerView3.p(apkVar2);
                }
                int i = ((GridLayoutManager) ((GridLayoutManager) linearLayoutManager)).b;
                this.n = i;
                apk apkVar3 = this.l;
                if (apkVar3 != null) {
                    apkVar3.a = i;
                }
            } else if (this.p) {
                RecyclerView recyclerView4 = this.a;
                qx qxVar2 = this.m;
                qxVar2.getClass();
                recyclerView4.p(qxVar2);
            }
        }
        this.a.Z(linearLayoutManager);
    }

    @Override // defpackage.arx
    public final boolean f() {
        qq e2 = this.a.e();
        return (e2 == null || e2.getItemCount() <= 0 || this.a.ak()) ? false : true;
    }

    @Override // com.android.car.ui.recyclerview.CarUiRecyclerView
    public final qq getAdapter() {
        throw null;
    }

    @Override // android.view.View
    public final int getPaddingBottom() {
        return this.a.getPaddingBottom();
    }

    @Override // android.view.View
    public final int getPaddingTop() {
        return this.a.getPaddingTop();
    }

    @Override // com.android.car.ui.recyclerview.CarUiRecyclerView
    public final RecyclerView getRecyclerView() {
        return this.a;
    }

    @Override // com.android.car.ui.recyclerview.CarUiRecyclerView
    public final View getView() {
        return this;
    }

    @Override // com.android.car.ui.recyclerview.CarUiRecyclerView
    public final void invalidateItemDecorations() {
        throw null;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.g.c(this.f);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.g.e(this.f);
    }

    @Override // android.view.View
    public final boolean post(Runnable runnable) {
        return this.a.post(runnable);
    }

    @Override // android.view.View, android.view.ViewParent
    public final void requestLayout() {
        super.requestLayout();
        if (this.o) {
            this.a.requestLayout();
        }
        apj apjVar = this.b;
        if (apjVar != null) {
            apjVar.requestLayout();
        }
    }

    @Override // android.view.View
    public final void scrollBy(int i, int i2) {
        this.a.scrollBy(i, i2);
    }

    @Override // com.android.car.ui.recyclerview.CarUiRecyclerView
    public final void scrollToPosition(int i) {
        this.a.W(i);
    }

    @Override // com.android.car.ui.recyclerview.CarUiRecyclerView
    public final void setAdapter(qq qqVar) {
        apj apjVar = this.b;
        if (apjVar != null) {
            apjVar.adapterChanged(qqVar);
        }
        this.a.Y(qqVar);
    }

    @Override // android.view.View
    public final void setContentDescription(CharSequence charSequence) {
        super.setContentDescription(charSequence);
        boolean z = false;
        if (charSequence != null) {
            if ("com.android.car.ui.utils.HORIZONTALLY_SCROLLABLE".contentEquals(charSequence)) {
                z = true;
            } else if ("com.android.car.ui.utils.VERTICALLY_SCROLLABLE".contentEquals(charSequence)) {
                z = true;
            }
        }
        aoh aohVar = this.q;
        h(this.a, z, aohVar != null ? aohVar.b() : 1);
    }

    @Override // android.view.View, com.android.car.ui.recyclerview.CarUiRecyclerView
    public final void setPadding(int i, int i2, int i3, int i4) {
        if (this.h) {
            int a = a();
            i(this.j + i2, this.k + i4);
            scrollToPosition(a);
        }
        this.a.setPadding(0, i2, 0, i4);
        super.setPadding(i, 0, i3, 0);
    }

    @Override // android.view.View
    public final void setPaddingRelative(int i, int i2, int i3, int i4) {
        if (this.h) {
            int a = a();
            i(this.j + i2, this.k + i4);
            scrollToPosition(a);
        }
        this.a.setPaddingRelative(0, i2, 0, i4);
        super.setPaddingRelative(i, 0, i3, 0);
    }
}
