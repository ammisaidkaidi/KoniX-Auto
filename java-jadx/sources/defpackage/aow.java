package defpackage;

import android.car.drivingstate.CarUxRestrictions;

/* compiled from: PG */
/* loaded from: classes.dex */
final class aow implements arr {
    final /* synthetic */ aox a;

    public aow(aox aoxVar) {
        this.a = aoxVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.arr
    public final void a(CarUxRestrictions carUxRestrictions) {
        qq e = this.a.a.e();
        if (e instanceof aoq) {
            int maxCumulativeContentItems = (carUxRestrictions.getActiveRestrictions() & 32) != 0 ? carUxRestrictions.getMaxCumulativeContentItems() : -1;
            int itemCount = e.getItemCount();
            ((aoq) e).a(maxCumulativeContentItems);
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
