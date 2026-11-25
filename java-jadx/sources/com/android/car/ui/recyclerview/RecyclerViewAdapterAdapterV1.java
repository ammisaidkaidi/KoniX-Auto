package com.android.car.ui.recyclerview;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.android.car.ui.plugin.oemapis.recyclerview.AdapterDataObserverOEMV1;
import com.android.car.ui.plugin.oemapis.recyclerview.AdapterOEMV1;
import com.android.car.ui.plugin.oemapis.recyclerview.RecyclerViewOEMV1;
import com.android.car.ui.plugin.oemapis.recyclerview.ViewHolderOEMV1;
import defpackage.qp;
import defpackage.qq;
import defpackage.qs;
import defpackage.rr;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class RecyclerViewAdapterAdapterV1 implements AdapterOEMV1 {
    private final qq mAdapter;
    private final Context mAppContext;
    private List mAdapterDataObservers = new ArrayList();
    private qs mAdapterDataObserver = new qs() { // from class: com.android.car.ui.recyclerview.RecyclerViewAdapterAdapterV1.1
        @Override // defpackage.qs
        public void onChanged() {
            Iterator it = RecyclerViewAdapterAdapterV1.this.mAdapterDataObservers.iterator();
            while (it.hasNext()) {
                ((AdapterDataObserverOEMV1) it.next()).onChanged();
            }
        }

        @Override // defpackage.qs
        public void onItemRangeChanged(int i, int i2) {
            Iterator it = RecyclerViewAdapterAdapterV1.this.mAdapterDataObservers.iterator();
            while (it.hasNext()) {
                ((AdapterDataObserverOEMV1) it.next()).onItemRangeChanged(i, i2);
            }
        }

        @Override // defpackage.qs
        public void onItemRangeInserted(int i, int i2) {
            Iterator it = RecyclerViewAdapterAdapterV1.this.mAdapterDataObservers.iterator();
            while (it.hasNext()) {
                ((AdapterDataObserverOEMV1) it.next()).onItemRangeInserted(i, i2);
            }
        }

        @Override // defpackage.qs
        public void onItemRangeMoved(int i, int i2, int i3) {
            for (AdapterDataObserverOEMV1 adapterDataObserverOEMV1 : RecyclerViewAdapterAdapterV1.this.mAdapterDataObservers) {
                for (int i4 = 0; i4 < i3; i4++) {
                    adapterDataObserverOEMV1.onItemMoved(i + i4, i2 + i4);
                }
            }
        }

        @Override // defpackage.qs
        public void onItemRangeRemoved(int i, int i2) {
            Iterator it = RecyclerViewAdapterAdapterV1.this.mAdapterDataObservers.iterator();
            while (it.hasNext()) {
                ((AdapterDataObserverOEMV1) it.next()).onItemRangeRemoved(i, i2);
            }
        }

        @Override // defpackage.qs
        public void onStateRestorationPolicyChanged() {
            Iterator it = RecyclerViewAdapterAdapterV1.this.mAdapterDataObservers.iterator();
            while (it.hasNext()) {
                ((AdapterDataObserverOEMV1) it.next()).onStateRestorationPolicyChanged();
            }
        }

        @Override // defpackage.qs
        public void onItemRangeChanged(int i, int i2, Object obj) {
            Iterator it = RecyclerViewAdapterAdapterV1.this.mAdapterDataObservers.iterator();
            while (it.hasNext()) {
                ((AdapterDataObserverOEMV1) it.next()).onItemRangeChanged(i, i2, obj);
            }
        }
    };

    /* compiled from: PG */
    /* renamed from: com.android.car.ui.recyclerview.RecyclerViewAdapterAdapterV1$2, reason: invalid class name */
    /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$android$support$v7$widget$RecyclerView$Adapter$StateRestorationPolicy;

        static {
            int[] iArr = new int[qp.values().length];
            $SwitchMap$android$support$v7$widget$RecyclerView$Adapter$StateRestorationPolicy = iArr;
            try {
                iArr[qp.PREVENT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$android$support$v7$widget$RecyclerView$Adapter$StateRestorationPolicy[qp.PREVENT_WHEN_EMPTY.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$android$support$v7$widget$RecyclerView$Adapter$StateRestorationPolicy[qp.ALLOW.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* compiled from: PG */
    class ViewHolderAdapterV1 implements ViewHolderOEMV1 {
        private rr mViewHolder;

        public ViewHolderAdapterV1(rr rrVar) {
            this.mViewHolder = rrVar;
        }

        public View getItemView() {
            return this.mViewHolder.itemView;
        }

        public rr getViewHolder() {
            return this.mViewHolder;
        }

        public boolean isRecyclable() {
            return this.mViewHolder.isRecyclable();
        }
    }

    public RecyclerViewAdapterAdapterV1(Context context, qq qqVar) {
        this.mAppContext = context;
        this.mAdapter = qqVar;
    }

    public qq getAdapter() {
        return this.mAdapter;
    }

    public int getItemCount() {
        return this.mAdapter.getItemCount();
    }

    public long getItemId(int i) {
        return this.mAdapter.getItemId(i);
    }

    public int getItemViewType(int i) {
        return this.mAdapter.getItemViewType(i);
    }

    public int getStateRestorationPolicyInt() {
        qp qpVar = qp.ALLOW;
        switch (this.mAdapter.getStateRestorationPolicy().ordinal()) {
            case 1:
                return 1;
            case 2:
                return 2;
            default:
                return 0;
        }
    }

    public boolean hasStableIds() {
        return this.mAdapter.hasStableIds();
    }

    public void onAttachedToRecyclerView(RecyclerViewOEMV1 recyclerViewOEMV1) {
        this.mAdapter.onAttachedToRecyclerView(null);
        this.mAdapter.registerAdapterDataObserver(this.mAdapterDataObserver);
    }

    public void onDetachedFromRecyclerView(RecyclerViewOEMV1 recyclerViewOEMV1) {
        this.mAdapter.unregisterAdapterDataObserver(this.mAdapterDataObserver);
        this.mAdapter.onDetachedFromRecyclerView(null);
    }

    public void registerAdapterDataObserver(AdapterDataObserverOEMV1 adapterDataObserverOEMV1) {
        if (adapterDataObserverOEMV1 == null) {
            return;
        }
        this.mAdapterDataObservers.add(adapterDataObserverOEMV1);
    }

    public void unregisterAdapterDataObserver(AdapterDataObserverOEMV1 adapterDataObserverOEMV1) {
        if (adapterDataObserverOEMV1 == null) {
            return;
        }
        this.mAdapterDataObservers.remove(adapterDataObserverOEMV1);
    }

    public void bindViewHolder(ViewHolderAdapterV1 viewHolderAdapterV1, int i) {
        this.mAdapter.bindViewHolder(viewHolderAdapterV1.getViewHolder(), i);
    }

    public ViewHolderAdapterV1 createViewHolder(ViewGroup viewGroup, int i) {
        return new ViewHolderAdapterV1(this.mAdapter.createViewHolder(new FrameLayout(this.mAppContext), i));
    }

    public boolean onFailedToRecycleView(ViewHolderAdapterV1 viewHolderAdapterV1) {
        return this.mAdapter.onFailedToRecycleView(viewHolderAdapterV1.getViewHolder());
    }

    public void onViewAttachedToWindow(ViewHolderAdapterV1 viewHolderAdapterV1) {
        this.mAdapter.onViewAttachedToWindow(viewHolderAdapterV1.getViewHolder());
    }

    public void onViewDetachedFromWindow(ViewHolderAdapterV1 viewHolderAdapterV1) {
        this.mAdapter.onViewDetachedFromWindow(viewHolderAdapterV1.getViewHolder());
    }

    public void onViewRecycled(ViewHolderAdapterV1 viewHolderAdapterV1) {
        this.mAdapter.onViewRecycled(viewHolderAdapterV1.getViewHolder());
    }
}
