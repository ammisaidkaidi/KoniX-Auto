package defpackage;

import android.car.drivingstate.CarUxRestrictions;

/* compiled from: PG */
/* loaded from: classes.dex */
final class CarUiRecyclerViewUxListener implements UxRestrictionsChangeListener {
    final /* synthetic */ CarUiRecyclerViewImpl a;

    public CarUiRecyclerViewUxListener(CarUiRecyclerViewImpl aoxVar) {
        this.a = aoxVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.UxRestrictionsChangeListener
    public final void a(CarUxRestrictions carUxRestrictions) {
        RecyclerViewAdapter e = this.a.a.e();
        if (ProtoFlagValueMessage instanceof ListItemSelectionCallback) {
            int maxCumulativeContentItems = (carUxRestrictions.getActiveRestrictions() & 32) != 0 ? carUxRestrictions.getMaxCumulativeContentItems() : -1;
            int itemCount = e.getItemCount();
            ((ListItemSelectionCallback) e).a(maxCumulativeContentItems);
            int itemCount2 = e.getItemCount();
            if (itemCount2 == itemCount) {
                return;
            }
            if (itemCount2 < itemCount) {
                e.notifyItemRangeRemoved(itemCount2, itemCount - itemCount2);
            } else {
                e.notifyItemRangeInserted(itemCount, itemCount2 - itemCount);
            }
        }
    }
}
