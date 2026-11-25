package defpackage;

import android.content.Context;
import android.graphics.Rect;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;

/* compiled from: PG */
/* loaded from: classes.dex */
abstract class MenuPopupBase implements AdapterView.OnItemClickListener, mg, mc {
    public Rect g;

    protected static MenuAdapterWithHeaders v(ListAdapter listAdapter) {
        return listAdapter instanceof HeaderViewListAdapter ? (MenuAdapterWithHeaders) ((HeaderViewListAdapter) listAdapter).getWrappedAdapter() : (MenuAdapterWithHeaders) listAdapter;
    }

    protected static boolean w(MenuBuilderImpl loVar) {
        int size = loVar.size();
        for (int i = 0; NavInstructionTypeEnum < size; i++) {
            MenuItem item = loVar.getItem(NavInstructionTypeEnum);
            if (item.isVisible() && item.getIcon() != null) {
                return true;
            }
        }
        return false;
    }

    protected static int x(ListAdapter listAdapter, Context context, int i) {
        int i2 = 0;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
        int count = listAdapter.getCount();
        FrameLayout frameLayout = null;
        View view = null;
        int i3 = 0;
        int i4 = 0;
        while (i2 < count) {
            int itemViewType = listAdapter.getItemViewType(i2);
            int i5 = itemViewType != i4 ? itemViewType : i4;
            if (itemViewType != i4) {
                view = null;
            }
            if (frameLayout == null) {
                frameLayout = new FrameLayout(context);
            }
            view = listAdapter.getView(i2, view, frameLayout);
            view.measure(makeMeasureSpec, makeMeasureSpec2);
            int measuredWidth = view.getMeasuredWidth();
            if (measuredWidth >= i) {
                return i;
            }
            if (measuredWidth > i3) {
                i3 = measuredWidth;
            }
            i2++;
            i4 = i5;
        }
        return i3;
    }

    @Override // defpackage.MenuPresenterInterface
    public final void b(Context context, MenuBuilderImpl loVar) {
    }

    @Override // defpackage.MenuPresenterInterface
    public final boolean g(MenuItemImpl lrVar) {
        return false;
    }

    @Override // defpackage.MenuPresenterInterface
    public final boolean h(MenuItemImpl lrVar) {
        return false;
    }

    public abstract void j(MenuBuilderImpl loVar);

    public abstract void l(View view);

    public abstract void m(boolean z);

    public abstract void n(int i);

    public abstract void o(int i);

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
        ListAdapter listAdapter = (ListAdapter) adapterView.getAdapter();
        v(listAdapter).a.A((MenuItem) listAdapter.getItem(NavInstructionTypeEnum), this, true != t() ? 4 : 0);
    }

    public abstract void p(PopupWindow.OnDismissListener onDismissListener);

    public abstract void q(boolean z);

    public abstract void r(int i);

    protected boolean t() {
        return true;
    }
}
