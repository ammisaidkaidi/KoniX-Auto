package com.android.car.ui.recyclerview;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.android.car.ui.plugin.oemapis.recyclerview.AdapterOEMV1;
import com.android.car.ui.plugin.oemapis.recyclerview.LayoutStyleOEMV1;
import com.android.car.ui.plugin.oemapis.recyclerview.OnScrollListenerOEMV1;
import com.android.car.ui.plugin.oemapis.recyclerview.RecyclerViewOEMV1;
import com.android.car.ui.plugin.oemapis.recyclerview.SpanSizeLookupOEMV1;
import defpackage.GridScrollThumbMetrics;
import defpackage.ScrollThumbMetricsProvider;
import defpackage.LinearScrollThumbMetrics;
import defpackage.ScrollLifecycleCallback;
import defpackage.FocusAwareRecyclerView;
import defpackage.SpanSizeLookupBase;
import defpackage.RecyclerViewAdapter;
import defpackage.DefaultItemAnimator;
import defpackage.ItemTouchHelperCallbackBase;
import defpackage.RecyclerViewLayoutManager;
import defpackage.LinearLayoutManagerScrollerState;
import defpackage.RecyclerViewViewHolder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class RecyclerViewAdapterV1 extends FrameLayout implements CarUiRecyclerView, OnScrollListenerOEMV1 {
    private int mHeight;
    private ScrollThumbMetricsProvider mLayoutStyle;
    private AdapterOEMV1 mOEMAdapter;
    private RecyclerViewOEMV1 mOEMRecyclerView;
    private FocusAwareRecyclerView mRecyclerView;
    private final List mScrollListeners;
    private int mWidth;

    public RecyclerViewAdapterV1(Context context) {
        this(context, null);
    }

    static /* synthetic */ int lambda$setLayoutStyle$0(ScrollThumbMetricsProvider aohVar, int i) {
        ((GridScrollThumbMetrics) aohVar).a.b();
        return 1;
    }

    private static int toInternalScrollState(int i) {
        switch (i) {
            case 1:
                return 1;
            case 2:
                return 2;
            default:
                return 0;
        }
    }

    @Override // com.android.car.ui.recyclerview.CarUiRecyclerView
    public void addItemDecoration(ItemTouchHelperCallbackBase qxVar) {
    }

    public void addItemDecoration(ItemTouchHelperCallbackBase qxVar, int i) {
    }

    public void addOnScrollListener(ScrollLifecycleCallback aorVar) {
        this.mScrollListeners.add(aorVar);
    }

    public void clearOnScrollListeners() {
        this.mScrollListeners.clear();
        this.mOEMRecyclerView.clearOnScrollListeners();
    }

    public int findFirstCompletelyVisibleItemPosition() {
        RecyclerViewOEMV1 recyclerViewOEMV1 = this.mOEMRecyclerView;
        if (recyclerViewOEMV1 != null) {
            return recyclerViewOEMV1.findFirstCompletelyVisibleItemPosition();
        }
        return 0;
    }

    public int findFirstVisibleItemPosition() {
        RecyclerViewOEMV1 recyclerViewOEMV1 = this.mOEMRecyclerView;
        if (recyclerViewOEMV1 != null) {
            return recyclerViewOEMV1.findFirstVisibleItemPosition();
        }
        return 0;
    }

    public int findLastCompletelyVisibleItemPosition() {
        RecyclerViewOEMV1 recyclerViewOEMV1 = this.mOEMRecyclerView;
        if (recyclerViewOEMV1 != null) {
            return recyclerViewOEMV1.findLastCompletelyVisibleItemPosition();
        }
        return 0;
    }

    public int findLastVisibleItemPosition() {
        RecyclerViewOEMV1 recyclerViewOEMV1 = this.mOEMRecyclerView;
        if (recyclerViewOEMV1 != null) {
            return recyclerViewOEMV1.findLastVisibleItemPosition();
        }
        return 0;
    }

    public RecyclerViewViewHolder findViewHolderForAdapterPosition(int i) {
        return null;
    }

    public RecyclerViewViewHolder findViewHolderForLayoutPosition(int i) {
        return null;
    }

    @Override // com.android.car.ui.recyclerview.CarUiRecyclerView
    public RecyclerViewAdapter getAdapter() {
        return null;
    }

    public ItemTouchHelperCallbackBase getItemDecorationAt(int i) {
        return null;
    }

    public int getItemDecorationCount() {
        return 0;
    }

    @Deprecated
    public RecyclerViewLayoutManager getLayoutManager() {
        return null;
    }

    public ScrollThumbMetricsProvider getLayoutStyle() {
        return this.mLayoutStyle;
    }

    @Override // com.android.car.ui.recyclerview.CarUiRecyclerView
    public RecyclerView getRecyclerView() {
        return this.mRecyclerView;
    }

    public int getScrollState() {
        return toInternalScrollState(this.mOEMRecyclerView.getScrollState());
    }

    @Override // com.android.car.ui.recyclerview.CarUiRecyclerView
    public View getView() {
        return this;
    }

    public boolean hasFixedSize() {
        return this.mOEMRecyclerView.hasFixedSize();
    }

    @Override // com.android.car.ui.recyclerview.CarUiRecyclerView
    public void invalidateItemDecorations() {
    }

    public void onScrollStateChanged(RecyclerViewOEMV1 recyclerViewOEMV1, int i) {
        Iterator it = this.mScrollListeners.iterator();
        while (it.hasNext()) {
            ((ScrollLifecycleCallback) it.next()).a();
        }
    }

    public void onScrolled(RecyclerViewOEMV1 recyclerViewOEMV1, int i, int i2) {
        Iterator it = this.mScrollListeners.iterator();
        while (it.hasNext()) {
            ((ScrollLifecycleCallback) it.next()).b();
        }
    }

    public void removeItemDecoration(ItemTouchHelperCallbackBase qxVar) {
    }

    public void removeItemDecorationAt(int i) {
    }

    public void removeOnScrollListener(ScrollLifecycleCallback aorVar) {
        this.mScrollListeners.remove(aorVar);
    }

    @Override // com.android.car.ui.recyclerview.CarUiRecyclerView
    public void scrollToPosition(int i) {
        this.mOEMRecyclerView.scrollToPosition(i);
    }

    @Override // com.android.car.ui.recyclerview.CarUiRecyclerView
    public void setAdapter(RecyclerViewAdapter qqVar) {
        if (qqVar == null) {
            this.mOEMRecyclerView.setAdapter((AdapterOEMV1) null);
            return;
        }
        RecyclerViewAdapterAdapterV1 recyclerViewAdapterAdapterV1 = new RecyclerViewAdapterAdapterV1(getContext(), qqVar);
        this.mOEMAdapter = recyclerViewAdapterAdapterV1;
        this.mOEMRecyclerView.setAdapter(recyclerViewAdapterAdapterV1);
    }

    @Override // android.view.View
    public void setAlpha(float f) {
        RecyclerViewOEMV1 recyclerViewOEMV1 = this.mOEMRecyclerView;
        if (recyclerViewOEMV1 != null) {
            recyclerViewOEMV1.setAlpha(f);
        }
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        RecyclerViewOEMV1 recyclerViewOEMV1 = this.mOEMRecyclerView;
        if (recyclerViewOEMV1 != null) {
            recyclerViewOEMV1.getView().setBackground(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        RecyclerViewOEMV1 recyclerViewOEMV1 = this.mOEMRecyclerView;
        if (recyclerViewOEMV1 != null) {
            recyclerViewOEMV1.getView().setBackgroundColor(i);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        if (this.mOEMRecyclerView != null) {
            this.mOEMRecyclerView.getView().setBackground(getResources().getDrawable(i));
        }
    }

    @Override // android.view.ViewGroup, com.android.car.ui.recyclerview.CarUiRecyclerView
    public void setClipToPadding(boolean z) {
        RecyclerViewOEMV1 recyclerViewOEMV1 = this.mOEMRecyclerView;
        if (recyclerViewOEMV1 != null) {
            recyclerViewOEMV1.setClipToPadding(z);
        }
    }

    @Override // android.view.View
    public void setContentDescription(CharSequence charSequence) {
        super.setContentDescription(charSequence);
        this.mOEMRecyclerView.setContentDescription(charSequence);
    }

    public void setHasFixedSize(boolean z) {
        this.mOEMRecyclerView.setHasFixedSize(z);
    }

    public void setItemAnimator(DefaultItemAnimator qvVar) {
    }

    public void setLayoutManager(RecyclerViewLayoutManager raVar) {
        if (raVar instanceof GridLayoutManager) {
            setLayoutStyle(GridScrollThumbMetrics.d(raVar));
        } else {
            setLayoutStyle(LinearScrollThumbMetrics.d(raVar));
        }
    }

    @Override // android.view.View
    public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
        Rect rect;
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            rect = new Rect(Math.max(marginLayoutParams.leftMargin, marginLayoutParams.getMarginStart()), marginLayoutParams.topMargin, marginLayoutParams.rightMargin, Math.max(marginLayoutParams.bottomMargin, marginLayoutParams.getMarginEnd()));
            marginLayoutParams.setMargins(0, 0, 0, 0);
            marginLayoutParams.setMarginStart(0);
            marginLayoutParams.setMarginEnd(0);
        } else {
            rect = null;
        }
        RecyclerViewOEMV1 recyclerViewOEMV1 = this.mOEMRecyclerView;
        if (recyclerViewOEMV1 != null) {
            ViewGroup.LayoutParams layoutParams2 = recyclerViewOEMV1.getView().getLayoutParams();
            layoutParams2.width = layoutParams.width == 0 ? -1 : layoutParams.width;
            layoutParams2.height = layoutParams.height != 0 ? layoutParams.height : -1;
            if (rect != null && (layoutParams2 instanceof ViewGroup.MarginLayoutParams)) {
                ((ViewGroup.MarginLayoutParams) layoutParams2).setMargins(rect.left, rect.top, rect.right, rect.bottom);
            }
        }
        this.mWidth = layoutParams.width;
        this.mHeight = layoutParams.height;
        super.setLayoutParams(layoutParams);
    }

    public void setLayoutStyle(final ScrollThumbMetricsProvider aohVar) {
        this.mLayoutStyle = aohVar;
        if (aohVar == null) {
            this.mOEMRecyclerView.setLayoutStyle((LayoutStyleOEMV1) null);
        }
        LayoutStyleOEMV1 layoutStyleOEMV1 = new LayoutStyleOEMV1(this) { // from class: com.android.car.ui.recyclerview.RecyclerViewAdapterV1.1
            public int getLayoutType() {
                return aohVar.a();
            }

            public int getOrientation() {
                return aohVar.b();
            }

            public boolean getReverseLayout() {
                return aohVar.e();
            }

            public int getSpanCount() {
                return aohVar.c();
            }
        };
        RecyclerViewOEMV1 recyclerViewOEMV1 = this.mOEMRecyclerView;
        if (recyclerViewOEMV1 != null) {
            if (aohVar instanceof GridScrollThumbMetrics) {
                recyclerViewOEMV1.setSpanSizeLookup(new SpanSizeLookupOEMV1() { // from class: com.android.car.ui.recyclerview.RecyclerViewAdapterV1$$ExternalSyntheticLambda0
                    public final int getSpanSize(int i) {
                        RecyclerViewAdapterV1.lambda$setLayoutStyle$0(ScrollThumbMetricsProvider.this, i);
                        return 1;
                    }
                });
            }
            this.mOEMRecyclerView.setLayoutStyle(layoutStyleOEMV1);
        }
    }

    public void setOnFlingListener(LinearLayoutManagerScrollerState rcVar) {
    }

    @Override // android.view.View, com.android.car.ui.recyclerview.CarUiRecyclerView
    public void setPadding(int i, int i2, int i3, int i4) {
        RecyclerViewOEMV1 recyclerViewOEMV1 = this.mOEMRecyclerView;
        if (recyclerViewOEMV1 != null) {
            recyclerViewOEMV1.getView().setPadding(i, i2, i3, i4);
        }
    }

    @Override // android.view.View
    public void setPaddingRelative(int i, int i2, int i3, int i4) {
        RecyclerViewOEMV1 recyclerViewOEMV1 = this.mOEMRecyclerView;
        if (recyclerViewOEMV1 != null) {
            recyclerViewOEMV1.getView().setPaddingRelative(i, i2, i3, i4);
        }
    }

    public void setRecyclerViewOEMV1(RecyclerViewOEMV1 recyclerViewOEMV1) {
        this.mOEMRecyclerView = recyclerViewOEMV1;
        FrameLayout frameLayout = new FrameLayout(getContext());
        FocusAwareRecyclerView apiVar = new FocusAwareRecyclerView(getContext(), this);
        this.mRecyclerView = apiVar;
        frameLayout.addView(apiVar);
        this.mOEMRecyclerView.addOnScrollListener(this);
        addView(this.mOEMRecyclerView.getView(), new ViewGroup.MarginLayoutParams(this.mWidth, this.mHeight));
    }

    public void setSpanSizeLookup(SpanSizeLookupBase psVar) {
        ScrollThumbMetricsProvider aohVar = this.mLayoutStyle;
        if (aohVar instanceof GridScrollThumbMetrics) {
            ((GridScrollThumbMetrics) aohVar).a = psVar;
            setLayoutStyle(aohVar);
        }
    }

    public void smoothScrollBy(int i, int i2) {
        this.mOEMRecyclerView.smoothScrollBy(i, i2);
    }

    public void smoothScrollToPosition(int i) {
        this.mOEMRecyclerView.smoothScrollToPosition(i);
    }

    public RecyclerViewAdapterV1(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RecyclerViewAdapterV1(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, 0);
        this.mScrollListeners = new ArrayList();
        setBackground(null);
        setPadding(0, 0, 0, 0);
    }
}
