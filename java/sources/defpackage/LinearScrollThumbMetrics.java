package defpackage;

import android.support.v7.widget.LinearLayoutManager;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class LinearScrollThumbMetrics implements ScrollThumbMetricsProvider {
    private int a = 1;
    private boolean b = false;

    public static LinearScrollThumbMetrics d(RecyclerViewLayoutManager raVar) {
        int i;
        if (raVar == null) {
            return null;
        }
        if (!(raVar instanceof LinearLayoutManager)) {
            throw new AssertionError("LinearLayoutManager required.");
        }
        LinearScrollThumbMetrics aoiVar = new LinearScrollThumbMetrics();
        LinearLayoutManager linearLayoutManager = (LinearLayoutManager) raVar;
        switch (linearLayoutManager.i) {
            case 0:
                i = 0;
                break;
            default:
                i = 1;
                break;
        }
        aoiVar.a = i;
        aoiVar.b = linearLayoutManager.k;
        return aoiVar;
    }

    @Override // defpackage.ScrollThumbMetricsProvider
    public final int a() {
        return 0;
    }

    @Override // defpackage.ScrollThumbMetricsProvider
    public final int b() {
        return this.a;
    }

    @Override // defpackage.ScrollThumbMetricsProvider
    public final int c() {
        return 1;
    }

    @Override // defpackage.ScrollThumbMetricsProvider
    public final boolean e() {
        return this.b;
    }
}
