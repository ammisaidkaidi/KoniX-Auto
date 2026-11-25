package defpackage;

import android.database.Observable;

/* compiled from: PG */
/* loaded from: classes.dex */
final class qr extends Observable {
    public final void a() {
        for (int size = this.mObservers.size() - 1; size >= 0; size--) {
            ((qs) this.mObservers.get(size)).onChanged();
        }
    }

    public final void b(int i, int i2) {
        for (int size = this.mObservers.size() - 1; size >= 0; size--) {
            ((qs) this.mObservers.get(size)).onItemRangeMoved(i, i2, 1);
        }
    }

    public final void c(int i, int i2) {
        d(i, i2, null);
    }

    public final void d(int i, int i2, Object obj) {
        for (int size = this.mObservers.size() - 1; size >= 0; size--) {
            ((qs) this.mObservers.get(size)).onItemRangeChanged(i, i2, obj);
        }
    }

    public final void e(int i, int i2) {
        for (int size = this.mObservers.size() - 1; size >= 0; size--) {
            ((qs) this.mObservers.get(size)).onItemRangeInserted(i, i2);
        }
    }

    public final void f(int i, int i2) {
        for (int size = this.mObservers.size() - 1; size >= 0; size--) {
            ((qs) this.mObservers.get(size)).onItemRangeRemoved(i, i2);
        }
    }

    public final void g() {
        for (int size = this.mObservers.size() - 1; size >= 0; size--) {
            ((qs) this.mObservers.get(size)).onStateRestorationPolicyChanged();
        }
    }

    public final boolean h() {
        return !this.mObservers.isEmpty();
    }
}
