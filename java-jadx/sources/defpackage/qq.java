package defpackage;

import android.support.v7.widget.RecyclerView;
import android.view.ViewGroup;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class qq {
    private final qr mObservable = new qr();
    private boolean mHasStableIds = false;
    private qp mStateRestorationPolicy = qp.ALLOW;

    public final void bindViewHolder(rr rrVar, int i) {
        qq qqVar = rrVar.mBindingAdapter;
        if (qqVar == null) {
            rrVar.mPosition = i;
            if (hasStableIds()) {
                rrVar.mItemId = getItemId(i);
            }
            rrVar.setFlags(1, 519);
            xz.a("RV OnBindView");
        }
        rrVar.mBindingAdapter = this;
        onBindViewHolder(rrVar, i, rrVar.getUnmodifiedPayloads());
        if (qqVar == null) {
            rrVar.clearPayload();
            ViewGroup.LayoutParams layoutParams = rrVar.itemView.getLayoutParams();
            if (layoutParams instanceof rb) {
                ((rb) layoutParams).e = true;
            }
            xz.b();
        }
    }

    public boolean canRestoreState() {
        qp qpVar = qp.ALLOW;
        switch (this.mStateRestorationPolicy.ordinal()) {
            case 1:
                return getItemCount() > 0;
            case 2:
                return false;
            default:
                return true;
        }
    }

    public final rr createViewHolder(ViewGroup viewGroup, int i) {
        try {
            xz.a("RV CreateView");
            rr onCreateViewHolder = onCreateViewHolder(viewGroup, i);
            if (onCreateViewHolder.itemView.getParent() != null) {
                throw new IllegalStateException("ViewHolder views must not be attached when created. Ensure that you are not passing 'true' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)");
            }
            onCreateViewHolder.mItemViewType = i;
            return onCreateViewHolder;
        } finally {
            xz.b();
        }
    }

    public int findRelativeAdapterPositionIn(qq qqVar, rr rrVar, int i) {
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

    public final qp getStateRestorationPolicy() {
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

    public abstract void onBindViewHolder(rr rrVar, int i);

    public void onBindViewHolder(rr rrVar, int i, List list) {
        onBindViewHolder(rrVar, i);
    }

    public abstract rr onCreateViewHolder(ViewGroup viewGroup, int i);

    public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
    }

    public boolean onFailedToRecycleView(rr rrVar) {
        return false;
    }

    public void onViewAttachedToWindow(rr rrVar) {
    }

    public void onViewDetachedFromWindow(rr rrVar) {
    }

    public void onViewRecycled(rr rrVar) {
    }

    public void registerAdapterDataObserver(qs qsVar) {
        this.mObservable.registerObserver(qsVar);
    }

    public void setHasStableIds(boolean z) {
        if (hasObservers()) {
            throw new IllegalStateException("Cannot change whether this adapter has stable IDs while the adapter has registered observers.");
        }
        this.mHasStableIds = z;
    }

    public void setStateRestorationPolicy(qp qpVar) {
        this.mStateRestorationPolicy = qpVar;
        this.mObservable.g();
    }

    public void unregisterAdapterDataObserver(qs qsVar) {
        this.mObservable.unregisterObserver(qsVar);
    }

    public final void notifyItemChanged(int i, Object obj) {
        this.mObservable.d(i, 1, obj);
    }

    public final void notifyItemRangeChanged(int i, int i2, Object obj) {
        this.mObservable.d(i, i2, obj);
    }
}
