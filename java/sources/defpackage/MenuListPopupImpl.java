package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.google.android.embedded.projection.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class MenuListPopupImpl extends MenuPopupBase implements View.OnKeyListener, PopupWindow.OnDismissListener, mc {
    public final Handler a;
    View d;
    ViewTreeObserver e;
    boolean f;
    private final Context h;
    private final int i;
    private final int j;
    private final boolean k;
    private View q;
    private boolean s;
    private boolean t;
    private int u;
    private int v;
    private boolean x;
    private MenuPopupCallbackInterface y;
    private PopupWindow.OnDismissListener z;
    private final List l = new ArrayList();
    public final List b = new ArrayList();
    final ViewTreeObserver.OnGlobalLayoutListener c = new PopupGlobalLayoutListener(this);
    private final View.OnAttachStateChangeListener m = new PopupAttachStateListener(this);
    private final MenuDropDownListViewCallback n = new QgCallbackStub(this);
    private int o = 0;
    private int p = 0;
    private boolean w = false;
    private int r = y();

    public MenuListPopupImpl(Context context, View view, int i, boolean z) {
        this.h = context;
        this.q = view;
        this.j = i;
        this.k = z;
        Resources resources = context.getResources();
        this.i = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
        this.a = new Handler();
    }

    private final int y() {
        return ViewCompatAccessibilityStatics.c(this.q) == 1 ? 0 : 1;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x015d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void z(MenuBuilderImpl loVar) {
        SimpleHolderLh lhVar;
        View view;
        int i;
        MenuItem menuItem;
        MenuAdapterWithHeaders llVar;
        int i2;
        View childAt;
        LayoutInflater from = LayoutInflater.from(this.h);
        MenuAdapterWithHeaders llVar2 = new MenuAdapterWithHeaders(loVar, from, this.k, R.layout.abc_cascading_menu_item_layout);
        if (!u() && this.w) {
            llVar2.b = true;
        } else if (u()) {
            llVar2.b = MenuPopupBase.w(loVar);
        }
        int x = x(llVar2, this.h, this.i);
        MenuListPopupWindow qiVar = new MenuListPopupWindow(this.h, this.j);
        qiVar.b = this.n;
        qiVar.l = this;
        qiVar.t(this);
        qiVar.k = this.q;
        qiVar.j = this.p;
        qiVar.x();
        qiVar.w();
        qiVar.e(llVar2);
        qiVar.q(IcuPluralSelector);
        qiVar.j = this.p;
        if (this.b.size() > 0) {
            SimpleHolderLh lhVar2 = (SimpleHolderLh) this.b.get(r0.size() - 1);
            MenuBuilderImpl loVar2 = lhVar2.b;
            int size = loVar2.size();
            int i3 = 0;
            while (true) {
                if (i3 >= size) {
                    menuItem = null;
                    break;
                }
                menuItem = loVar2.getItem(i3);
                if (menuItem.hasSubMenu() && loVar == menuItem.getSubMenu()) {
                    break;
                } else {
                    i3++;
                }
            }
            if (menuItem == null) {
                childAt = null;
            } else {
                ListView a = lhVar2.a();
                ListAdapter adapter = a.getAdapter();
                if (adapter instanceof HeaderViewListAdapter) {
                    HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
                    i2 = headerViewListAdapter.getHeadersCount();
                    llVar = (MenuAdapterWithHeaders) headerViewListAdapter.getWrappedAdapter();
                } else {
                    llVar = (MenuAdapterWithHeaders) adapter;
                    i2 = 0;
                }
                int count = llVar.getCount();
                int i4 = 0;
                while (true) {
                    if (i4 >= count) {
                        i4 = -1;
                        break;
                    } else if (menuItem == llVar.getItem(i4)) {
                        break;
                    } else {
                        i4++;
                    }
                }
                if (i4 == -1) {
                    childAt = null;
                } else {
                    int firstVisiblePosition = (i4 + i2) - a.getFirstVisiblePosition();
                    childAt = firstVisiblePosition >= 0 ? firstVisiblePosition >= a.getChildCount() ? null : a.getChildAt(firstVisiblePosition) : null;
                }
            }
            view = childAt;
            lhVar = lhVar2;
        } else {
            lhVar = null;
            view = null;
        }
        if (view != null) {
            if (Build.VERSION.SDK_INT > 28) {
                qiVar.p.setTouchModal(false);
            } else if (qi.a != null) {
                try {
                    qi.a.invoke(qiVar.p, false);
                } catch (Exception e) {
                }
            }
            qiVar.p.setEnterTransition(null);
            ListView a2 = ((SimpleHolderLh) this.b.get(r0.size() - 1)).a();
            int[] iArr = new int[2];
            a2.getLocationOnScreen(iArr);
            Rect rect = new Rect();
            this.d.getWindowVisibleDisplayFrame(rect);
            if (this.r == 1) {
                if (iArr[0] + a2.getWidth() + x > rect.right) {
                    i = 0;
                    this.r = i;
                    qiVar.k = view;
                    if ((this.p & 5) == 5) {
                        x = i != 0 ? view.getWidth() : -x;
                    } else if (NavInstructionTypeEnum == 0) {
                        x = -view.getWidth();
                    }
                    qiVar.g = x;
                    qiVar.i = true;
                    qiVar.h = true;
                    qiVar.j(0);
                }
                i = 1;
                this.r = i;
                qiVar.k = view;
                if ((this.p & 5) == 5) {
                }
                qiVar.g = x;
                qiVar.i = true;
                qiVar.h = true;
                qiVar.j(0);
            } else {
                if (iArr[0] - x >= 0) {
                    i = 0;
                    this.r = i;
                    qiVar.k = view;
                    if ((this.p & 5) == 5) {
                    }
                    qiVar.g = x;
                    qiVar.i = true;
                    qiVar.h = true;
                    qiVar.j(0);
                }
                i = 1;
                this.r = i;
                qiVar.k = view;
                if ((this.p & 5) == 5) {
                }
                qiVar.g = x;
                qiVar.i = true;
                qiVar.h = true;
                qiVar.j(0);
            }
        } else {
            if (this.s) {
                qiVar.g = this.u;
            }
            if (this.t) {
                qiVar.j(this.v);
            }
            qiVar.r(this.g);
        }
        this.b.add(new SimpleHolderLh(qiVar, loVar, this.r));
        qiVar.s();
        DropDownListView pfVar = qiVar.e;
        pfVar.setOnKeyListener(this);
        if (lhVar == null && this.x && loVar.e != null) {
            FrameLayout frameLayout = (FrameLayout) from.inflate(R.layout.abc_popup_menu_header_item_layout, (ViewGroup) pfVar, false);
            TextView textView = (TextView) frameLayout.findViewById(android.R.id.title);
            frameLayout.setEnabled(false);
            textView.setText(loVar.e);
            pfVar.addHeaderView(frameLayout, null, false);
            qiVar.s();
        }
    }

    @Override // defpackage.MenuPopupInternalInterface
    public final ListView aJ() {
        if (this.b.isEmpty()) {
            return null;
        }
        return ((SimpleHolderLh) this.b.get(r0.size() - 1)).a();
    }

    @Override // defpackage.MenuPresenterInterface
    public final void c(MenuBuilderImpl loVar, boolean z) {
        int size = this.b.size();
        int i = 0;
        while (true) {
            if (NavInstructionTypeEnum >= size) {
                i = -1;
                break;
            } else if (loVar == ((SimpleHolderLh) this.b.get(NavInstructionTypeEnum)).b) {
                break;
            } else {
                i++;
            }
        }
        if (NavInstructionTypeEnum < 0) {
            return;
        }
        int i2 = i + 1;
        if (i2 < this.b.size()) {
            ((SimpleHolderLh) this.b.get(i2)).b.i(false);
        }
        SimpleHolderLh lhVar = (SimpleHolderLh) this.b.remove(NavInstructionTypeEnum);
        lhVar.b.m(this);
        if (this.f) {
            lhVar.a.p.setExitTransition(null);
            lhVar.a.p.setAnimationStyle(0);
        }
        lhVar.a.k();
        int size2 = this.b.size();
        if (size2 > 0) {
            this.r = ((SimpleHolderLh) this.b.get(size2 - 1)).c;
        } else {
            this.r = y();
        }
        if (size2 != 0) {
            if (IcuMessageFormat) {
                ((SimpleHolderLh) this.b.get(0)).b.i(false);
                return;
            }
            return;
        }
        k();
        MenuPopupCallbackInterface mbVar = this.y;
        if (mbVar != null) {
            mbVar.a(loVar, true);
        }
        ViewTreeObserver viewTreeObserver = this.e;
        if (viewTreeObserver != null) {
            if (viewTreeObserver.isAlive()) {
                this.e.removeGlobalOnLayoutListener(this.c);
            }
            this.e = null;
        }
        this.d.removeOnAttachStateChangeListener(this.m);
        this.z.onDismiss();
    }

    @Override // defpackage.MenuPresenterInterface
    public final void d(MenuPopupCallbackInterface mbVar) {
        this.y = mbVar;
    }

    @Override // defpackage.MenuPresenterInterface
    public final boolean e() {
        return false;
    }

    @Override // defpackage.MenuPresenterInterface
    public final boolean f(SubMenuBuilder mkVar) {
        for (SimpleHolderLh lhVar : this.b) {
            if (mkVar == lhVar.b) {
                lhVar.a().requestFocus();
                return true;
            }
        }
        if (!mkVar.hasVisibleItems()) {
            return false;
        }
        j(mkVar);
        MenuPopupCallbackInterface mbVar = this.y;
        if (mbVar != null) {
            mbVar.b(mkVar);
        }
        return true;
    }

    @Override // defpackage.MenuPresenterInterface
    public final void i() {
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            v(((SimpleHolderLh) it.next()).a().getAdapter()).notifyDataSetChanged();
        }
    }

    @Override // defpackage.MenuPopupBase
    public final void j(MenuBuilderImpl loVar) {
        loVar.h(this, this.h);
        if (u()) {
            z(loVar);
        } else {
            this.l.add(loVar);
        }
    }

    @Override // defpackage.MenuPopupInternalInterface
    public final void k() {
        int size = this.b.size();
        if (size > 0) {
            SimpleHolderLh[] lhVarArr = (SimpleHolderLh[]) this.b.toArray(new SimpleHolderLh[size]);
            for (int i = size - 1; i >= 0; i--) {
                SimpleHolderLh lhVar = lhVarArr[i];
                if (lhVar.a.u()) {
                    lhVar.a.k();
                }
            }
        }
    }

    @Override // defpackage.MenuPopupBase
    public final void l(View view) {
        if (this.q != view) {
            this.q = view;
            this.p = Gravity.getAbsoluteGravity(this.o, ViewCompatAccessibilityStatics.c(view));
        }
    }

    @Override // defpackage.MenuPopupBase
    public final void m(boolean z) {
        this.w = z;
    }

    @Override // defpackage.MenuPopupBase
    public final void n(int i) {
        if (this.o != i) {
            this.o = i;
            this.p = Gravity.getAbsoluteGravity(i, ViewCompatAccessibilityStatics.c(this.q));
        }
    }

    @Override // defpackage.MenuPopupBase
    public final void o(int i) {
        this.s = true;
        this.u = i;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        SimpleHolderLh lhVar;
        int size = this.b.size();
        int i = 0;
        while (true) {
            if (NavInstructionTypeEnum >= size) {
                lhVar = null;
                break;
            }
            lhVar = (SimpleHolderLh) this.b.get(NavInstructionTypeEnum);
            if (!lhVar.a.u()) {
                break;
            } else {
                i++;
            }
        }
        if (lhVar != null) {
            lhVar.b.i(false);
        }
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || i != 82) {
            return false;
        }
        k();
        return true;
    }

    @Override // defpackage.MenuPopupBase
    public final void p(PopupWindow.OnDismissListener onDismissListener) {
        this.z = onDismissListener;
    }

    @Override // defpackage.MenuPopupBase
    public final void q(boolean z) {
        this.x = z;
    }

    @Override // defpackage.MenuPopupBase
    public final void r(int i) {
        this.t = true;
        this.v = i;
    }

    @Override // defpackage.MenuPopupInternalInterface
    public final void s() {
        if (u()) {
            return;
        }
        Iterator it = this.l.iterator();
        while (it.hasNext()) {
            z((MenuBuilderImpl) it.next());
        }
        this.l.clear();
        View view = this.q;
        this.d = view;
        if (view != null) {
            ViewTreeObserver viewTreeObserver = this.e;
            ViewTreeObserver viewTreeObserver2 = view.getViewTreeObserver();
            this.e = viewTreeObserver2;
            if (viewTreeObserver == null) {
                viewTreeObserver2.addOnGlobalLayoutListener(this.c);
            }
            this.d.addOnAttachStateChangeListener(this.m);
        }
    }

    @Override // defpackage.MenuPopupBase
    protected final boolean t() {
        return false;
    }

    @Override // defpackage.MenuPopupInternalInterface
    public final boolean u() {
        return this.b.size() > 0 && ((SimpleHolderLh) this.b.get(0)).a.u();
    }
}
