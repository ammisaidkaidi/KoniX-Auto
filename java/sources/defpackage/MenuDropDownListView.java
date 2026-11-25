package defpackage;

import android.content.Context;
import android.os.SystemClock;
import android.support.v7.view.menu.ListMenuItemView;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class MenuDropDownListView extends DropDownListView {
    final int c;
    final int d;
    public MenuDropDownListViewCallback e;
    private MenuItem f;

    public MenuDropDownListView(Context context, boolean z) {
        super(context, z);
        if (context.getResources().getConfiguration().getLayoutDirection() == 1) {
            this.c = 21;
            this.d = 22;
        } else {
            this.c = 22;
            this.d = 21;
        }
    }

    @Override // defpackage.DropDownListView, android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        MenuAdapterWithHeaders llVar;
        int i;
        MenuDropDownListViewCallback qgVar;
        MenuDropDownListViewCallback qgVar2;
        int pointToPosition;
        int i2;
        if (this.e != null) {
            ListAdapter adapter = getAdapter();
            int i3 = 0;
            if (adapter instanceof HeaderViewListAdapter) {
                HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
                i = headerViewListAdapter.getHeadersCount();
                llVar = (MenuAdapterWithHeaders) headerViewListAdapter.getWrappedAdapter();
            } else {
                llVar = (MenuAdapterWithHeaders) adapter;
                i = 0;
            }
            MenuItemImpl item = (motionEvent.getAction() == 10 || (pointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY())) == -1 || (i2 = pointToPosition - i) < 0 || i2 >= llVar.getCount()) ? null : llVar.getItem(i2);
            MenuItem menuItem = this.f;
            if (menuItem != item) {
                MenuBuilderImpl loVar = llVar.a;
                if (menuItem != null && (qgVar2 = ((MenuListPopupWindow) this.e).b) != null) {
                    ((QgCallbackStub) qgVar2).a.a.removeCallbacksAndMessages(loVar);
                }
                this.f = item;
                if (item != null && (qgVar = ((MenuListPopupWindow) this.e).b) != null) {
                    QgCallbackStub lgVar = (QgCallbackStub) qgVar;
                    lgVar.a.a.removeCallbacksAndMessages(null);
                    int size = lgVar.a.b.size();
                    while (true) {
                        if (i3 >= size) {
                            i3 = -1;
                            break;
                        }
                        if (loVar == ((SimpleHolderLh) lgVar.a.b.get(i3)).b) {
                            break;
                        }
                        i3++;
                    }
                    if (i3 != -1) {
                        int i4 = i3 + 1;
                        lgVar.a.a.postAtTime(new PostedRunnableLf(lgVar, i4 < lgVar.a.b.size() ? (SimpleHolderLh) lgVar.a.b.get(i4) : null, item, loVar), loVar, SystemClock.uptimeMillis() + 200);
                    }
                }
            }
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i, KeyEvent keyEvent) {
        ListMenuItemView listMenuItemView = (ListMenuItemView) getSelectedView();
        if (listMenuItemView != null && i == this.c) {
            if (listMenuItemView.isEnabled() && listMenuItemView.a.hasSubMenu()) {
                performItemClick(listMenuItemView, getSelectedItemPosition(), getSelectedItemId());
            }
            return true;
        }
        if (listMenuItemView == null || i != this.d) {
            return super.onKeyDown(i, keyEvent);
        }
        setSelection(-1);
        ListAdapter adapter = getAdapter();
        (adapter instanceof HeaderViewListAdapter ? (MenuAdapterWithHeaders) ((HeaderViewListAdapter) adapter).getWrappedAdapter() : (MenuAdapterWithHeaders) adapter).a.i(false);
        return true;
    }
}
