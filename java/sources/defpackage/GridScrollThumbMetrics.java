package defpackage;

import android.support.v7.widget.GridLayoutManager;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class GridScrollThumbMetrics implements ScrollThumbMetricsProvider {
    private int b = 1;
    private boolean c = false;
    public SpanSizeLookupBase a = new DefaultSpanSizeLookup();

    public static GridScrollThumbMetrics d(RecyclerViewLayoutManager raVar) {
        if (raVar == null) {
            return null;
        }
        if (!(raVar instanceof GridLayoutManager)) {
            throw new AssertionError("GridLayoutManager required.");
        }
        GridScrollThumbMetrics aofVar = new GridScrollThumbMetrics();
        GridLayoutManager gridLayoutManager = (GridLayoutManager) raVar;
        int i = gridLayoutManager.b;
        if (NavInstructionTypeEnum <= 0) {
            throw new AssertionError("Span count must be bigger than 0");
        }
        aofVar.b = i;
        aofVar.c = gridLayoutManager.k;
        aofVar.a = gridLayoutManager.g;
        return aofVar;
    }

    @Override // defpackage.ScrollThumbMetricsProvider
    public final int a() {
        return 1;
    }

    @Override // defpackage.ScrollThumbMetricsProvider
    public final int b() {
        return 1;
    }

    @Override // defpackage.ScrollThumbMetricsProvider
    public final int c() {
        return this.b;
    }

    @Override // defpackage.ScrollThumbMetricsProvider
    public final boolean e() {
        return this.c;
    }
}
