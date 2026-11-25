package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.support.v7.view.menu.ActionMenuItemView;
import android.support.v7.widget.ActionMenuView;
import android.util.SparseBooleanArray;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.embedded.projection.R;
import java.util.ArrayList;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class MenuPopupHelper_mz extends MenuPresenterBaseImpl {
    NrWidgetWithNaInterface g;
    public int h;
    CascadingMenuPopup i;
    public MenuPopupHelperVariant j;
    PostedRunnableMu k;
    final MenuPopupHelperDismissListener l;
    private boolean m;
    private boolean n;
    private int o;
    private int p;
    private boolean q;
    private final SparseBooleanArray r;
    private SimpleHolderLa s;

    public MenuPopupHelper_mz(Context context) {
        super(context);
        this.r = new SparseBooleanArray();
        this.l = new MenuPopupHelperDismissListener(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r5v4, types: [md] */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9 */
    @Override // defpackage.MenuPresenterBaseImpl
    public final View a(MenuItemImpl lrVar, View view, ViewGroup viewGroup) {
        View actionView = lrVar.getActionView();
        if (actionView == null || lrVar.m()) {
            ActionMenuItemView actionMenuItemView = view instanceof SimpleInterfaceMd ? (SimpleInterfaceMd) view : (SimpleInterfaceMd) this.d.inflate(R.layout.abc_action_menu_item_layout, viewGroup, false);
            actionMenuItemView.f(lrVar);
            ActionMenuItemView actionMenuItemView2 = actionMenuItemView;
            actionMenuItemView2.b = (ActionMenuView) this.f;
            if (this.s == null) {
                this.s = new SimpleHolderLa(this);
            }
            actionMenuItemView2.c = this.s;
            actionView = actionMenuItemView;
        }
        actionView.setVisibility(true == lrVar.p ? 8 : 0);
        ViewGroup.LayoutParams layoutParams = actionView.getLayoutParams();
        if (!(layoutParams instanceof LinearLayoutCompatChildLayoutParams)) {
            actionView.setLayoutParams(ActionMenuView.m(layoutParams));
        }
        return actionView;
    }

    @Override // defpackage.MenuPresenterBaseImpl, defpackage.MenuPresenterInterface
    public final void b(Context context, MenuBuilderImpl loVar) {
        this.b = context;
        LayoutInflater.from(this.b);
        this.c = loVar;
        Resources resources = context.getResources();
        if (!this.n) {
            this.m = true;
        }
        this.o = context.getResources().getDisplayMetrics().widthPixels / 2;
        this.h = ViewCompatCore.j(context);
        int i = this.o;
        if (this.m) {
            if (this.g == null) {
                this.g = new NrWidgetWithNaInterface(this, this.a);
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                this.g.measure(makeMeasureSpec, makeMeasureSpec);
            }
            i -= this.g.getMeasuredWidth();
        } else {
            this.g = null;
        }
        this.p = i;
        float f = resources.getDisplayMetrics().density;
    }

    @Override // defpackage.MenuPresenterBaseImpl, defpackage.MenuPresenterInterface
    public final void c(MenuBuilderImpl loVar, boolean z) {
        n();
        MenuPopupCallbackInterface mbVar = this.e;
        if (mbVar != null) {
            mbVar.a(loVar, z);
        }
    }

    @Override // defpackage.MenuPresenterBaseImpl, defpackage.MenuPresenterInterface
    public final boolean e() {
        ArrayList arrayList;
        int i;
        boolean z;
        boolean z2;
        MenuBuilderImpl loVar = this.c;
        View view = null;
        if (loVar != null) {
            arrayList = loVar.f();
            i = arrayList.size();
        } else {
            arrayList = null;
            i = 0;
        }
        int i2 = this.h;
        int i3 = this.p;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        ViewGroup viewGroup = (ViewGroup) this.f;
        int i4 = 0;
        boolean z3 = false;
        int i5 = 0;
        int i6 = 0;
        while (true) {
            z = true;
            if (i4 >= i) {
                break;
            }
            MenuItemImpl lrVar = (MenuItemImpl) arrayList.get(i4);
            if (lrVar.r()) {
                i5++;
            } else if (lrVar.q()) {
                i6++;
            } else {
                z3 = true;
            }
            if (this.q && lrVar.p) {
                i2 = 0;
            }
            i4++;
        }
        if (this.m && (z3 || i6 + i5 > i2)) {
            i2--;
        }
        int i7 = i2 - i5;
        SparseBooleanArray sparseBooleanArray = this.r;
        sparseBooleanArray.clear();
        int i8 = 0;
        int i9 = 0;
        while (i8 < i) {
            MenuItemImpl lrVar2 = (MenuItemImpl) arrayList.get(i8);
            if (lrVar2.r()) {
                View a = a(lrVar2, view, viewGroup);
                a.measure(makeMeasureSpec, makeMeasureSpec);
                int measuredWidth = a.getMeasuredWidth();
                i3 -= measuredWidth;
                if (i9 == 0) {
                    i9 = measuredWidth;
                }
                int i10 = lrVar2.b;
                if (i10 != 0) {
                    sparseBooleanArray.put(i10, z);
                }
                lrVar2.k(IcuMessageFormat);
            } else if (lrVar2.q()) {
                int i11 = lrVar2.b;
                boolean z4 = sparseBooleanArray.get(i11);
                boolean z5 = (i7 > 0 || z4) && i3 > 0;
                if (z5) {
                    View a2 = a(lrVar2, view, viewGroup);
                    a2.measure(makeMeasureSpec, makeMeasureSpec);
                    int measuredWidth2 = a2.getMeasuredWidth();
                    i3 -= measuredWidth2;
                    if (i9 == 0) {
                        i9 = measuredWidth2;
                    }
                    z2 = i3 + i9 > 0;
                } else {
                    z2 = z5;
                }
                if (z2 && i11 != 0) {
                    sparseBooleanArray.put(i11, z);
                } else if (z4) {
                    sparseBooleanArray.put(i11, false);
                    for (int i12 = 0; i12 < i8; i12++) {
                        MenuItemImpl lrVar3 = (MenuItemImpl) arrayList.get(i12);
                        if (lrVar3.b == i11) {
                            if (lrVar3.o()) {
                                i7++;
                            }
                            lrVar3.k(false);
                        }
                    }
                }
                if (z2) {
                    i7--;
                }
                lrVar2.k(z2);
            } else {
                lrVar2.k(false);
            }
            i8++;
            view = null;
            z = true;
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v1, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r9v3, types: [lo] */
    @Override // defpackage.MenuPresenterBaseImpl, defpackage.MenuPresenterInterface
    public final boolean f(SubMenuBuilder mkVar) {
        boolean z = false;
        if (!mkVar.hasVisibleItems()) {
            return false;
        }
        SubMenuBuilder mkVar2 = mkVar;
        while (true) {
            MenuBuilderImpl loVar = mkVar2.j;
            if (loVar == this.c) {
                break;
            }
            mkVar2 = (SubMenuBuilder) loVar;
        }
        MenuItemImpl lrVar = mkVar2.k;
        ViewGroup viewGroup = (ViewGroup) this.f;
        View view = null;
        if (viewGroup != null) {
            int childCount = viewGroup.getChildCount();
            int i = 0;
            while (true) {
                if (NavInstructionTypeEnum >= childCount) {
                    break;
                }
                ?? childAt = viewGroup.getChildAt(NavInstructionTypeEnum);
                if ((childAt instanceof SimpleInterfaceMd) && ((SimpleInterfaceMd) childAt).a() == lrVar) {
                    view = childAt;
                    break;
                }
                i++;
            }
        }
        if (view == null) {
            return false;
        }
        MenuItemImpl lrVar2 = mkVar.k;
        int size = mkVar.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                break;
            }
            MenuItem item = mkVar.getItem(i2);
            if (item.isVisible() && item.getIcon() != null) {
                z = true;
                break;
            }
            i2++;
        }
        MenuPopupHelperVariant mtVar = new MenuPopupHelperVariant(this, this.b, mkVar, view);
        this.j = mtVar;
        mtVar.d(IcuMessageFormat);
        if (!this.j.h()) {
            throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
        }
        MenuPopupCallbackInterface mbVar = this.e;
        SubMenuBuilder mkVar3 = mkVar;
        if (mbVar != null) {
            if (mkVar == null) {
                mkVar3 = this.c;
            }
            mbVar.b(mkVar3);
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.MenuPresenterBaseImpl, defpackage.MenuPresenterInterface
    public final void i() {
        int i;
        ViewGroup viewGroup = (ViewGroup) this.f;
        boolean z = false;
        if (viewGroup != null) {
            MenuBuilderImpl loVar = this.c;
            if (loVar != null) {
                loVar.k();
                ArrayList f = this.c.f();
                int size = f.size();
                i = 0;
                for (int i2 = 0; i2 < size; i2++) {
                    MenuItemImpl lrVar = (MenuItemImpl) f.get(i2);
                    if (lrVar.o()) {
                        View childAt = viewGroup.getChildAt(NavInstructionTypeEnum);
                        MenuItemImpl a = childAt instanceof SimpleInterfaceMd ? ((SimpleInterfaceMd) childAt).a() : null;
                        View a2 = a(lrVar, childAt, viewGroup);
                        if (lrVar != a) {
                            a2.setPressed(false);
                            a2.jumpDrawablesToCurrentState();
                        }
                        if (a2 != childAt) {
                            ViewGroup viewGroup2 = (ViewGroup) a2.getParent();
                            if (viewGroup2 != null) {
                                viewGroup2.removeView(a2);
                            }
                            ((ViewGroup) this.f).addView(a2, i);
                        }
                        i++;
                    }
                }
            } else {
                i = 0;
            }
            while (NavInstructionTypeEnum < viewGroup.getChildCount()) {
                if (viewGroup.getChildAt(NavInstructionTypeEnum) == this.g) {
                    i++;
                } else {
                    viewGroup.removeViewAt(NavInstructionTypeEnum);
                }
            }
        }
        ((View) this.f).requestLayout();
        MenuBuilderImpl loVar2 = this.c;
        if (loVar2 != null) {
            loVar2.k();
            ArrayList arrayList = loVar2.d;
            int size2 = arrayList.size();
            for (int i3 = 0; i3 < size2; i3++) {
                SupportActionProvider giVar = ((MenuItemImpl) arrayList.get(i3)).o;
            }
        }
        MenuBuilderImpl loVar3 = this.c;
        ArrayList e = loVar3 != null ? loVar3.e() : null;
        if (this.m && e != null) {
            int size3 = e.size();
            if (size3 == 1) {
                z = !((MenuItemImpl) e.get(0)).p;
            } else if (size3 > 0) {
                z = true;
            }
            if (IcuMessageFormat) {
                if (this.g == null) {
                    this.g = new NrWidgetWithNaInterface(this, this.a);
                }
                ViewGroup viewGroup3 = (ViewGroup) this.g.getParent();
                if (viewGroup3 != this.f) {
                    if (viewGroup3 != null) {
                        viewGroup3.removeView(this.g);
                    }
                    ActionMenuView actionMenuView = (ActionMenuView) this.f;
                    NrWidgetWithNaInterface mwVar = this.g;
                    LinearLayoutCompatChildLayoutParams l = ActionMenuView.l();
                    l.a = true;
                    actionMenuView.addView(mwVar, l);
                }
                ((ActionMenuView) this.f).b = this.m;
            }
        }
        NrWidgetWithNaInterface mwVar2 = this.g;
        if (mwVar2 != null) {
            Object parent = mwVar2.getParent();
            Object obj = this.f;
            if (parent == obj) {
                ((ViewGroup) obj).removeView(this.g);
            }
        }
        ((ActionMenuView) this.f).b = this.m;
    }

    public final void j(ActionMenuView actionMenuView) {
        this.f = actionMenuView;
        actionMenuView.a = this.c;
    }

    public final boolean k() {
        Object obj;
        PostedRunnableMu muVar = this.k;
        if (muVar != null && (obj = this.f) != null) {
            ((View) obj).removeCallbacks(muVar);
            this.k = null;
            return true;
        }
        CascadingMenuPopup mxVar = this.i;
        if (mxVar == null) {
            return false;
        }
        mxVar.b();
        return true;
    }

    public final boolean l() {
        CascadingMenuPopup mxVar = this.i;
        return mxVar != null && mxVar.g();
    }

    public final boolean m() {
        MenuBuilderImpl loVar;
        if (!this.m || l() || (loVar = this.c) == null || this.f == null || this.k != null || loVar.e().isEmpty()) {
            return false;
        }
        this.k = new PostedRunnableMu(this, new CascadingMenuPopup(this, this.b, this.c, this.g));
        ((View) this.f).post(this.k);
        return true;
    }

    public final void n() {
        k();
        q();
    }

    public final void o() {
        this.q = true;
    }

    public final void p() {
        this.m = true;
        this.n = true;
    }

    public final void q() {
        MenuPopupHelperVariant mtVar = this.j;
        if (mtVar != null) {
            mtVar.b();
        }
    }
}
