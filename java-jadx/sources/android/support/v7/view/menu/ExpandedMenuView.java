package android.support.v7.view.menu;

import android.R;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import defpackage.ln;
import defpackage.lo;
import defpackage.lr;
import defpackage.me;
import defpackage.sm;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ExpandedMenuView extends ListView implements AdapterView.OnItemClickListener, ln, me {
    private static final int[] a = {R.attr.background, R.attr.divider};
    private lo b;

    public ExpandedMenuView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.listViewStyle);
    }

    @Override // defpackage.me
    public final void a(lo loVar) {
        this.b = loVar;
    }

    @Override // defpackage.ln
    public final boolean b(lr lrVar) {
        throw null;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        setChildrenDrawingCacheEnabled(false);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
        this.b.z((lr) getAdapter().getItem(i), 0);
    }

    public ExpandedMenuView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        setOnItemClickListener(this);
        sm q = sm.q(context, attributeSet, a, i);
        if (q.p(0)) {
            setBackgroundDrawable(q.h(0));
        }
        if (q.p(1)) {
            setDivider(q.h(1));
        }
        q.n();
    }
}
