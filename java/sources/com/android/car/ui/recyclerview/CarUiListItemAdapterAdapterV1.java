package com.android.car.ui.recyclerview;

import android.support.v7.widget.RecyclerView;
import android.view.ViewGroup;
import com.android.car.ui.plugin.oemapis.recyclerview.AdapterOEMV1;
import com.android.car.ui.plugin.oemapis.recyclerview.RecyclerViewOEMV1;
import com.android.car.ui.plugin.oemapis.recyclerview.ViewHolderOEMV1;
import defpackage.RecyclerViewAdapter;
import defpackage.RecyclerViewViewHolder;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class CarUiListItemAdapterAdapterV1 extends RecyclerViewAdapter {
    private AdapterOEMV1 mAdapter;

    /* compiled from: PG */
    public class ViewHolderWrapper extends RecyclerViewViewHolder {
        private final ViewHolderOEMV1 mViewHolder;

        public ViewHolderWrapper(ViewHolderOEMV1 viewHolderOEMV1) {
            super(viewHolderOEMV1.getItemView());
            this.mViewHolder = viewHolderOEMV1;
            setIsRecyclable(viewHolderOEMV1.isRecyclable());
        }

        public ViewHolderOEMV1 getViewHolder() {
            return this.mViewHolder;
        }
    }

    public CarUiListItemAdapterAdapterV1(AdapterOEMV1 adapterOEMV1) {
        this.mAdapter = adapterOEMV1;
        super.setHasStableIds(adapterOEMV1.hasStableIds());
    }

    @Override // defpackage.RecyclerViewAdapter
    public int getItemCount() {
        return this.mAdapter.getItemCount();
    }

    @Override // defpackage.RecyclerViewAdapter
    public long getItemId(int i) {
        return this.mAdapter.getItemId(i);
    }

    @Override // defpackage.RecyclerViewAdapter
    public int getItemViewType(int i) {
        return this.mAdapter.getItemViewType(i);
    }

    @Override // defpackage.RecyclerViewAdapter
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        this.mAdapter.onAttachedToRecyclerView((RecyclerViewOEMV1) null);
    }

    @Override // defpackage.RecyclerViewAdapter
    public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        this.mAdapter.onDetachedFromRecyclerView((RecyclerViewOEMV1) null);
    }

    @Override // defpackage.RecyclerViewAdapter
    public void onBindViewHolder(ViewHolderWrapper viewHolderWrapper, int i) {
        this.mAdapter.bindViewHolder(viewHolderWrapper.getViewHolder(), i);
    }

    @Override // defpackage.RecyclerViewAdapter
    public ViewHolderWrapper onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new ViewHolderWrapper(this.mAdapter.createViewHolder(viewGroup, i));
    }

    @Override // defpackage.RecyclerViewAdapter
    public boolean onFailedToRecycleView(ViewHolderWrapper viewHolderWrapper) {
        return this.mAdapter.onFailedToRecycleView(viewHolderWrapper.getViewHolder());
    }

    @Override // defpackage.RecyclerViewAdapter
    public void onViewAttachedToWindow(ViewHolderWrapper viewHolderWrapper) {
        this.mAdapter.onViewAttachedToWindow(viewHolderWrapper.getViewHolder());
    }

    @Override // defpackage.RecyclerViewAdapter
    public void onViewDetachedFromWindow(ViewHolderWrapper viewHolderWrapper) {
        this.mAdapter.onViewDetachedFromWindow(viewHolderWrapper.getViewHolder());
    }

    @Override // defpackage.RecyclerViewAdapter
    public void onViewRecycled(ViewHolderWrapper viewHolderWrapper) {
        this.mAdapter.onViewRecycled(viewHolderWrapper.getViewHolder());
    }
}
