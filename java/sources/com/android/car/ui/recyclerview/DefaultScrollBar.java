package com.android.car.ui.recyclerview;

import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Looper;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.Scroller;
import androidx.preference.Preference;
import com.android.car.ui.recyclerview.DefaultScrollBar;
import com.google.android.embedded.projection.R;
import defpackage.PreferenceListItemDecoration;
import defpackage.DefaultScrollBarHideRunnable;
import defpackage.DefaultScrollBarDataObserver;
import defpackage.DefaultScrollBarThumbDecoration;
import defpackage.ScrollbarThumbDragTouchListener;
import defpackage.ScrollbarButtonRepeatTouchListener;
import defpackage.CarUiScrollBar;
import defpackage.CarUiResourceUtils;
import defpackage.RecyclerViewOrientationHelper;
import defpackage.RecyclerViewAdapter;
import defpackage.AdapterDataObserver;
import defpackage.RecyclerViewLayoutManager;
import defpackage.SqliteContentValuesHelper;
import defpackage.RecyclerViewState;

/* compiled from: PG */
/* loaded from: classes.dex */
public class DefaultScrollBar implements CarUiScrollBar {
    private float mButtonDisabledAlpha;
    private Context mContext;
    private View mDownButton;
    private RecyclerViewOrientationHelper mOrientationHelper;
    private ScrollbarButtonRepeatTouchListener mPageDownOnContinuousScrollListener;
    private ScrollbarButtonRepeatTouchListener mPageUpOnContinuousScrollListener;
    private RecyclerView mRecyclerView;
    private View mScrollThumb;
    private View mScrollTrack;
    private View mScrollView;
    private int mScrollbarThumbMinHeight;
    private PreferenceListItemDecoration mSnapHelper;
    private View mUpButton;
    private final SparseArray mChildHeightByAdapterPosition = new SparseArray();
    private final Handler mHandler = new Handler(Looper.getMainLooper());
    private final Interpolator mPaginationInterpolator = new AccelerateDecelerateInterpolator();
    private final AdapterDataObserver mAdapterChangeObserver = new DefaultScrollBarDataObserver(this);
    private final SqliteContentValuesHelper mRecyclerViewOnScrollListener = new DefaultScrollBarThumbDecoration(this);

    DefaultScrollBar() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cacheChildrenHeight(RecyclerViewLayoutManager raVar) {
        if (raVar != null) {
            for (int i = 0; i < raVar.ak(); i++) {
                View aw = raVar.aw(i);
                int bg = ra.bg(aw);
                if (this.mChildHeightByAdapterPosition.indexOfKey(bg) < 0) {
                    this.mChildHeightByAdapterPosition.put(bg, Integer.valueOf(aw.getHeight()));
                }
            }
        }
    }

    private int calculateScrollThumbLength(int i, int i2) {
        return Math.max(Math.round((i2 / i) * this.mScrollTrack.getHeight()), Math.min(this.mScrollbarThumbMinHeight, this.mScrollTrack.getHeight()));
    }

    private int calculateScrollThumbOffset(int i, int i2, int i3) {
        return this.mScrollTrack.getTop() + (isDownEnabled() ? Math.round((i2 / i) * (this.mScrollTrack.getHeight() - i3)) : this.mScrollTrack.getHeight() - i3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearCachedHeights() {
        this.mChildHeightByAdapterPosition.clear();
        cacheChildrenHeight(getLayoutManager());
    }

    private int estimateNextPositionScrollUp(int i, int i2, RecyclerViewOrientationHelper qmVar) {
        int i3 = 0;
        for (int i4 = i - 1; i4 >= 0; i4--) {
            if (this.mChildHeightByAdapterPosition.indexOfKey(i4) < 0) {
                int i5 = -i2;
                RecyclerViewLayoutManager raVar = qmVar.a;
                int ak = raVar.ak();
                float f = 1.0f;
                if (ak != 0) {
                    int i6 = Preference.DEFAULT_ORDER;
                    int i7 = Integer.MIN_VALUE;
                    View view = null;
                    View view2 = null;
                    for (int i8 = 0; i8 < ak; i8++) {
                        View aw = raVar.aw(i8);
                        int bg = ra.bg(aw);
                        if (bg != -1) {
                            int i9 = bg < i6 ? bg : i6;
                            if (bg < i6) {
                                view = aw;
                            }
                            if (bg > i7) {
                                view2 = aw;
                                i7 = bg;
                            }
                            i6 = i9;
                        }
                    }
                    if (view != null && view2 != null) {
                        int max = Math.max(qmVar.a(view), qmVar.a(view2)) - Math.min(qmVar.d(view), qmVar.d(view2));
                        f = max == 0 ? 0.0f : max / ((i7 - i6) + 1);
                    }
                }
                if (f <= 0.0f) {
                    return 0;
                }
                return Math.round(i5 / f);
            }
            if (((Integer) this.mChildHeightByAdapterPosition.get(i4)).intValue() + i3 > Math.abs(i2)) {
                return (i4 - i) + 1;
            }
            i3 += ((Integer) this.mChildHeightByAdapterPosition.get(i4)).intValue();
        }
        return 0;
    }

    private View getFirstMostVisibleChild(RecyclerViewOrientationHelper qmVar) {
        float f = 0.0f;
        View view = null;
        for (int i = 0; i < getLayoutManager().ak(); i++) {
            View aw = getLayoutManager().aw(i);
            float h = PreferenceListItemDecoration.h(aw, qmVar);
            if (h == 1.0f) {
                return aw;
            }
            if (h > f) {
                view = aw;
            }
            if (h > f) {
                f = h;
            }
        }
        return view;
    }

    private RecyclerViewOrientationHelper getOrientationHelper(RecyclerViewLayoutManager raVar) {
        RecyclerViewOrientationHelper qmVar = this.mOrientationHelper;
        if (qmVar == null || qmVar.a != raVar) {
            this.mOrientationHelper = RecyclerViewOrientationHelper.r(raVar);
        }
        return this.mOrientationHelper;
    }

    private boolean isDownEnabled() {
        return this.mDownButton.isEnabled();
    }

    private void moveY(View view, float f) {
        view.animate().y(f).setDuration(0L).setInterpolator(this.mPaginationInterpolator).start();
    }

    private void setDownEnabled(boolean z) {
        if (!z) {
            this.mPageDownOnContinuousScrollListener.a();
        }
        this.mDownButton.setEnabled(z);
        this.mDownButton.setAlpha(z ? 1.0f : this.mButtonDisabledAlpha);
    }

    private void setParameters(int i, int i2, int i3) {
        if (this.mScrollView.isLaidOut() && this.mScrollView.getVisibility() == 0 && i != 0) {
            int calculateScrollThumbLength = calculateScrollThumbLength(i, i3);
            int calculateScrollThumbOffset = calculateScrollThumbOffset(i, i2, calculateScrollThumbLength);
            ViewGroup.LayoutParams layoutParams = this.mScrollThumb.getLayoutParams();
            if (layoutParams.height != calculateScrollThumbLength || calculateScrollThumbLength < this.mScrollThumb.getHeight()) {
                layoutParams.height = calculateScrollThumbLength;
                this.mScrollThumb.requestLayout();
            }
            moveY(this.mScrollThumb, calculateScrollThumbOffset);
        }
    }

    private void setUpEnabled(boolean z) {
        if (!z) {
            this.mPageUpOnContinuousScrollListener.a();
        }
        this.mUpButton.setEnabled(z);
        this.mUpButton.setAlpha(z ? 1.0f : this.mButtonDisabledAlpha);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePaginationButtons() {
        RecyclerViewLayoutManager layoutManager = getLayoutManager();
        if (layoutManager == null) {
            this.mScrollView.setVisibility(8);
            return;
        }
        boolean isAtStart = isAtStart();
        boolean isAtEnd = isAtEnd();
        setUpEnabled(!isAtStart);
        setDownEnabled(!isAtEnd);
        int visibility = this.mScrollView.getVisibility();
        int i = 1;
        if ((isAtStart && isAtEnd) || layoutManager.am() == 0) {
            this.mScrollView.setVisibility(8);
        } else {
            int k = getOrientationHelper(layoutManager).k();
            int dimensionPixelSize = this.mContext.getResources().getDimensionPixelSize(R.dimen.car_ui_touch_target_size);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.mUpButton.getLayoutParams();
            int i2 = marginLayoutParams.topMargin;
            int i3 = marginLayoutParams.bottomMargin;
            ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) this.mDownButton.getLayoutParams();
            int i4 = i2 + i3 + marginLayoutParams2.topMargin + marginLayoutParams2.bottomMargin;
            int i5 = dimensionPixelSize + dimensionPixelSize;
            if (k < i5 + i4) {
                r6 = visibility == 0;
                this.mScrollView.setVisibility(8);
            } else {
                ViewGroup.MarginLayoutParams marginLayoutParams3 = (ViewGroup.MarginLayoutParams) this.mScrollTrack.getLayoutParams();
                if (k < i5 + Math.max(dimensionPixelSize, this.mScrollbarThumbMinHeight) + i4 + marginLayoutParams3.topMargin + marginLayoutParams3.bottomMargin) {
                    this.mScrollTrack.setVisibility(4);
                    this.mScrollThumb.setVisibility(4);
                } else {
                    this.mScrollTrack.setVisibility(0);
                    this.mScrollThumb.setVisibility(0);
                }
                boolean z = visibility != 0;
                this.mScrollView.setVisibility(0);
                r6 = z;
            }
        }
        if (layoutManager.X()) {
            setParameters(computeVerticalScrollRange(), computeVerticalScrollOffset(), computeVerticalScrollExtent());
        } else {
            setParameters(computeHorizontalScrollRange(), computeHorizontalScrollOffset(), computeHorizontalScrollExtent());
        }
        this.mScrollView.invalidate();
        if (r6) {
            this.mScrollView.post(new DefaultScrollBarHideRunnable(this, i));
        }
    }

    @Override // defpackage.CarUiScrollBar
    public void adapterChanged(RecyclerViewAdapter qqVar) {
        try {
            if (this.mRecyclerView.e() != null) {
                this.mRecyclerView.e().unregisterAdapterDataObserver(this.mAdapterChangeObserver);
            }
        } catch (IllegalStateException e) {
        }
        if (qqVar != null) {
            try {
                qqVar.registerAdapterDataObserver(this.mAdapterChangeObserver);
            } catch (IllegalStateException e2) {
            }
        }
    }

    public int computeHorizontalScrollExtent() {
        return getRecyclerView().computeHorizontalScrollExtent();
    }

    public int computeHorizontalScrollOffset() {
        return getRecyclerView().computeHorizontalScrollOffset();
    }

    public int computeHorizontalScrollRange() {
        return getRecyclerView().computeHorizontalScrollRange();
    }

    public int computeVerticalScrollExtent() {
        return getRecyclerView().computeVerticalScrollExtent();
    }

    public int computeVerticalScrollOffset() {
        return getRecyclerView().computeVerticalScrollOffset();
    }

    public int computeVerticalScrollRange() {
        return getRecyclerView().computeVerticalScrollRange();
    }

    public RecyclerViewLayoutManager getLayoutManager() {
        return getRecyclerView().l;
    }

    public RecyclerView getRecyclerView() {
        return this.mRecyclerView;
    }

    @Override // defpackage.CarUiScrollBar
    public void initialize(Context context, RecyclerView recyclerView, View view) {
        this.mContext = context;
        this.mRecyclerView = recyclerView;
        this.mScrollView = view;
        Resources resources = context.getResources();
        this.mButtonDisabledAlpha = CarUiResourceUtils.a(resources, R.dimen.car_ui_button_disabled_alpha);
        this.mScrollbarThumbMinHeight = resources.getDimensionPixelSize(R.dimen.car_ui_scrollbar_min_thumb_height);
        this.mUpButton = CarUiResourceUtils.g(this.mScrollView, R.id.car_ui_scrollbar_page_up);
        final int i = 1;
        View.OnClickListener onClickListener = new View.OnClickListener(this) { // from class: apa
            public final /* synthetic */ DefaultScrollBar a;

            {
                this.a = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                switch (i) {
                    case 0:
                        this.a.m10xb1d47082(view2);
                        break;
                    default:
                        this.a.m9xc02aca63(view2);
                        break;
                }
            }
        };
        this.mUpButton.setOnClickListener(onClickListener);
        ScrollbarButtonRepeatTouchListener aphVar = new ScrollbarButtonRepeatTouchListener(context, onClickListener);
        this.mPageUpOnContinuousScrollListener = aphVar;
        this.mUpButton.setOnTouchListener(aphVar);
        this.mDownButton = CarUiResourceUtils.g(this.mScrollView, R.id.car_ui_scrollbar_page_down);
        final int i2 = 0;
        View.OnClickListener onClickListener2 = new View.OnClickListener(this) { // from class: apa
            public final /* synthetic */ DefaultScrollBar a;

            {
                this.a = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                switch (i2) {
                    case 0:
                        this.a.m10xb1d47082(view2);
                        break;
                    default:
                        this.a.m9xc02aca63(view2);
                        break;
                }
            }
        };
        this.mDownButton.setOnClickListener(onClickListener2);
        ScrollbarButtonRepeatTouchListener aphVar2 = new ScrollbarButtonRepeatTouchListener(context, onClickListener2);
        this.mPageDownOnContinuousScrollListener = aphVar2;
        this.mDownButton.setOnTouchListener(aphVar2);
        this.mScrollTrack = CarUiResourceUtils.g(this.mScrollView, R.id.car_ui_scrollbar_track);
        this.mScrollThumb = CarUiResourceUtils.g(this.mScrollView, R.id.car_ui_scrollbar_thumb);
        this.mSnapHelper = new PreferenceListItemDecoration(context);
        getRecyclerView().C = null;
        PreferenceListItemDecoration aozVar = this.mSnapHelper;
        RecyclerView recyclerView2 = getRecyclerView();
        RecyclerView recyclerView3 = aozVar.a;
        if (recyclerView3 != recyclerView2) {
            if (recyclerView3 != null) {
                recyclerView3.U(aozVar.c);
                aozVar.a.C = null;
            }
            aozVar.a = recyclerView2;
            RecyclerView recyclerView4 = aozVar.a;
            if (recyclerView4 != null) {
                if (recyclerView4.C != null) {
                    throw new IllegalStateException("An instance of OnFlingListener already set.");
                }
                recyclerView4.q(aozVar.c);
                RecyclerView recyclerView5 = aozVar.a;
                recyclerView5.C = aozVar;
                aozVar.b = new Scroller(recyclerView5.getContext(), new DecelerateInterpolator());
                aozVar.a();
            }
        }
        aozVar.e = recyclerView2;
        ScrollbarThumbDragTouchListener apfVar = new ScrollbarThumbDragTouchListener(this.mRecyclerView, this.mScrollTrack, this.mScrollView);
        apfVar.a.setOnTouchListener(apfVar);
        getRecyclerView().q(this.mRecyclerViewOnScrollListener);
        this.mScrollView.setVisibility(8);
        this.mScrollView.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: apb
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
                DefaultScrollBar.this.m11xa37e16a1(view2, i3, i4, i5, i6, i7, i8, i9, i10);
            }
        });
        if (this.mRecyclerView.e() != null) {
            adapterChanged(this.mRecyclerView.e());
        }
    }

    public boolean isAtEnd() {
        return this.mSnapHelper.k(getLayoutManager());
    }

    public boolean isAtStart() {
        PreferenceListItemDecoration aozVar = this.mSnapHelper;
        RecyclerViewLayoutManager layoutManager = getLayoutManager();
        if (layoutManager == null || layoutManager.ak() == 0) {
            return true;
        }
        View aw = layoutManager.aw(0);
        aw.getClass();
        RecyclerViewOrientationHelper j = layoutManager.X() ? aozVar.j(layoutManager) : aozVar.i(layoutManager);
        return j.d(aw) >= j.j() && ra.bg(aw) == 0;
    }

    /* renamed from: lambda$initialize$0$com-android-car-ui-recyclerview-DefaultScrollBar, reason: not valid java name */
    public /* synthetic */ void m9xc02aca63(View view) {
        pageUp();
    }

    /* renamed from: lambda$initialize$1$com-android-car-ui-recyclerview-DefaultScrollBar, reason: not valid java name */
    public /* synthetic */ void m10xb1d47082(View view) {
        pageDown();
    }

    /* renamed from: lambda$initialize$2$com-android-car-ui-recyclerview-DefaultScrollBar, reason: not valid java name */
    public /* synthetic */ void m11xa37e16a1(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        this.mHandler.post(new DefaultScrollBarHideRunnable(this, 0));
    }

    /* renamed from: lambda$updatePaginationButtons$3$com-android-car-ui-recyclerview-DefaultScrollBar, reason: not valid java name */
    public /* synthetic */ void m12xd7d5ec() {
        this.mScrollView.requestLayout();
    }

    public void pageDown() {
        RecyclerViewLayoutManager layoutManager = getLayoutManager();
        if (layoutManager == null || layoutManager.ak() == 0) {
            return;
        }
        RecyclerViewOrientationHelper orientationHelper = getOrientationHelper(layoutManager);
        int k = orientationHelper.k();
        View firstMostVisibleChild = getFirstMostVisibleChild(orientationHelper);
        int min = (!layoutManager.bi(firstMostVisibleChild) || orientationHelper.a(firstMostVisibleChild) <= orientationHelper.f()) ? k : Math.min(k, orientationHelper.a(firstMostVisibleChild) - orientationHelper.f());
        int ak = layoutManager.ak() - 1;
        while (true) {
            if (ak < 0) {
                break;
            }
            View aw = layoutManager.aw(ak);
            if (orientationHelper.d(aw) <= orientationHelper.d(firstMostVisibleChild)) {
                break;
            } else if (orientationHelper.d(aw) - orientationHelper.j() <= k) {
                min = orientationHelper.a(aw) <= orientationHelper.f() ? orientationHelper.a(aw) - orientationHelper.j() : orientationHelper.d(aw) - orientationHelper.j();
            } else {
                ak--;
            }
        }
        smoothScrollBy(0, min);
    }

    public void pageUp() {
        int i;
        int computeVerticalScrollOffset = computeVerticalScrollOffset();
        RecyclerViewLayoutManager layoutManager = getLayoutManager();
        if (layoutManager == null || layoutManager.ak() == 0 || computeVerticalScrollOffset == 0) {
            return;
        }
        RecyclerViewOrientationHelper orientationHelper = getOrientationHelper(layoutManager);
        int k = orientationHelper.k();
        View firstMostVisibleChild = getFirstMostVisibleChild(orientationHelper);
        if (firstMostVisibleChild != null) {
            getLayoutManager();
            i = ra.bg(firstMostVisibleChild);
        } else {
            i = 0;
        }
        int estimateNextPositionScrollUp = estimateNextPositionScrollUp(i, k - Math.max(0, orientationHelper.j() - orientationHelper.d(firstMostVisibleChild)), orientationHelper);
        if (estimateNextPositionScrollUp == 0) {
            smoothScrollBy(0, -k);
        } else {
            smoothScrollToPosition(Math.max(0, i + estimateNextPositionScrollUp));
        }
    }

    @Override // defpackage.CarUiScrollBar
    public void requestLayout() {
        this.mScrollView.requestLayout();
    }

    @Override // defpackage.CarUiScrollBar
    public void setHighlightThumb(boolean z) {
        this.mScrollThumb.setActivated(z);
    }

    @Override // defpackage.CarUiScrollBar
    public void setPadding(int i, int i2) {
        View view = this.mScrollView;
        view.setPadding(view.getPaddingLeft(), i, this.mScrollView.getPaddingRight(), i2);
    }

    public void smoothScrollBy(int i, int i2) {
        getRecyclerView().ab(i, i2);
    }

    public void smoothScrollToPosition(int i) {
        RecyclerView recyclerView = getRecyclerView();
        if (recyclerView.t) {
            return;
        }
        RecyclerViewLayoutManager raVar = recyclerView.l;
        if (raVar == null) {
            Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else {
            RecyclerViewState roVar = recyclerView.H;
            raVar.ai(recyclerView, i);
        }
    }
}
