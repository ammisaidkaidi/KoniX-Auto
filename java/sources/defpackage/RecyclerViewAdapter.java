package defpackage;

import android.support.v7.widget.RecyclerView;
import android.view.ViewGroup;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class RecyclerViewAdapter {
    private final AdapterDataObservable mObservable = new AdapterDataObservable();
    private boolean mHasStableIds = false;
    private RecyclerViewStateRestorationPolicy mStateRestorationPolicy = qp.ALLOW;

    public final void bindViewHolder(RecyclerViewViewHolder rrVar, int i) {
        RecyclerViewAdapter qqVar = rrVar.mBindingAdapter;
        if (qqVar == null) {
            rrVar.mPosition = i;
            if (hasStableIds()) {
                rrVar.mItemId = getItemId(NavInstructionTypeEnum);
            }
            rrVar.setFlags(1, 519);
            TraceCompatHelper.a("RV OnBindView");
        }
        rrVar.mBindingAdapter = this;
        onBindViewHolder(rrVar, i, rrVar.getUnmodifiedPayloads());
        if (qqVar == null) {
            rrVar.clearPayload();
            ViewGroup.LayoutParams layoutParams = rrVar.itemView.getLayoutParams();
            if (layoutParams instanceof RecyclerViewLayoutParams) {
                ((RecyclerViewLayoutParams) layoutParams).e = true;
            }
            TraceCompatHelper.b();
        }
    }

    public boolean canRestoreState() {
        RecyclerViewStateRestorationPolicy qpVar = qp.ALLOW;
        switch (this.mStateRestorationPolicy.ordinal()) {
            case 1:
                return getItemCount() > 0;
            case 2:
                return false;
            default:
                return true;
        }
    }

    public final RecyclerViewViewHolder createViewHolder(ViewGroup viewGroup, int i) {
        try {
            TraceCompatHelper.a("RV CreateView");
            RecyclerViewViewHolder onCreateViewHolder = onCreateViewHolder(viewGroup, i);
            if (onCreateViewHolder.itemView.getParent() != null) {
                throw new IllegalStateException("ViewHolder views must not be attached when created. Ensure that you are not passing 'true' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)");
            }
            onCreateViewHolder.mItemViewType = i;
            return onCreateViewHolder;
        } finally {
            TraceCompatHelper.b();
        }
    }

    public int findRelativeAdapterPositionIn(RecyclerViewAdapter qqVar, RecyclerViewViewHolder rrVar, int i) {
        if (qqVar == this) {
            return i;
        }
        return -1;
    }

    public abstract int getItemCount();

    public long getItemId(int i) {
        return -1L;
    }

    public int getItemViewType(int i) {
        return 0;
    }

    public final RecyclerViewStateRestorationPolicy getStateRestorationPolicy() {
        return this.mStateRestorationPolicy;
    }

    public final boolean hasObservers() {
        return this.mObservable.h();
    }

    public final boolean hasStableIds() {
        return this.mHasStableIds;
    }

    public final void notifyDataSetChanged() {
        this.mObservable.a();
    }

    public final void notifyItemChanged(int i) {
        this.mObservable.c(i, 1);
    }

    public final void notifyItemInserted(int i) {
        this.mObservable.e(i, 1);
    }

    public final void notifyItemMoved(int i, int i2) {
        this.mObservable.b(i, i2);
    }

    public final void notifyItemRangeChanged(int i, int i2) {
        this.mObservable.c(i, i2);
    }

    public final void notifyItemRangeInserted(int i, int i2) {
        this.mObservable.e(i, i2);
    }

    public final void notifyItemRangeRemoved(int i, int i2) {
        this.mObservable.f(i, i2);
    }

    public final void notifyItemRemoved(int i) {
        this.mObservable.f(i, 1);
    }

    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
    }

    public abstract void onBindViewHolder(RecyclerViewViewHolder rrVar, int i);

    public void onBindViewHolder(RecyclerViewViewHolder rrVar, int i, List list) {
        onBindViewHolder(rrVar, i);
    }

    public abstract RecyclerViewViewHolder onCreateViewHolder(ViewGroup viewGroup, int i);

    public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
    }

    public boolean onFailedToRecycleView(RecyclerViewViewHolder rrVar) {
        return false;
    }

    public void onViewAttachedToWindow(RecyclerViewViewHolder rrVar) {
    }

    public void onViewDetachedFromWindow(RecyclerViewViewHolder rrVar) {
    }

    public void onViewRecycled(RecyclerViewViewHolder rrVar) {
    }

    public void registerAdapterDataObserver(AdapterDataObserver qsVar) {
        this.mObservable.registerObserver(qsVar);
    }

    public void setHasStableIds(boolean z) {
        if (hasObservers()) {
            throw new IllegalStateException("Cannot change whether this adapter has stable IDs while the adapter has registered observers.");
        }
        this.mHasStableIds = z;
    }

    public void setStateRestorationPolicy(RecyclerViewStateRestorationPolicy qpVar) {
        this.mStateRestorationPolicy = qpVar;
        this.mObservable.g();
    }

    public void unregisterAdapterDataObserver(AdapterDataObserver qsVar) {
        this.mObservable.unregisterObserver(qsVar);
    }

    public final void notifyItemChanged(int i, Object obj) {
        this.mObservable.d(i, 1, obj);
    }

    public final void notifyItemRangeChanged(int i, int i2, Object obj) {
        this.mObservable.d(i, i2, obj);
    }
}
