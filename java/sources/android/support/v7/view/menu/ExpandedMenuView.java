package android.support.v7.view.menu;

import android.R;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import defpackage.SimpleInterfaceLn;
import defpackage.MenuBuilderImpl;
import defpackage.MenuItemImpl;
import defpackage.SimpleInterfaceMe;
import defpackage.TintResourcesHelper;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ExpandedMenuView extends ListView implements AdapterView.OnItemClickListener, ln, me {
    private static final int[] a = {R.attr.background, R.attr.divider};
    private MenuBuilderImpl b;

    public ExpandedMenuView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.listViewStyle);
    }

    @Override // defpackage.SimpleInterfaceMe
    public final void a(MenuBuilderImpl loVar) {
        this.b = loVar;
    }

    @Override // defpackage.SimpleInterfaceLn
    public final boolean b(MenuItemImpl lrVar) {
        throw null;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        setChildrenDrawingCacheEnabled(false);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
        this.b.z((MenuItemImpl) getAdapter().getItem(i), 0);
    }

    public ExpandedMenuView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        setOnItemClickListener(this);
        TintResourcesHelper q = TintResourcesHelper.q(context, attributeSet, a, i);
        if (q.p(0)) {
            setBackgroundDrawable(q.h(0));
        }
        if (q.p(1)) {
            setDivider(q.h(1));
        }
        q.n();
    }
}
