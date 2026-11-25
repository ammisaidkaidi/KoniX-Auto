package defpackage;

import android.support.v7.widget.GridLayoutManager;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class aof implements aoh {
    private int b = 1;
    private boolean c = false;
    public ps a = new pq();

    public static aof d(ra raVar) {
        if (raVar == null) {
            return null;
        }
        if (!(raVar instanceof GridLayoutManager)) {
            throw new AssertionError("GridLayoutManager required.");
        }
        aof aofVar = new aof();
        GridLayoutManager gridLayoutManager = (GridLayoutManager) raVar;
        int i = gridLayoutManager.b;
        if (i <= 0) {
            throw new AssertionError("Span count must be bigger than 0");
        }
        aofVar.b = i;
        aofVar.c = gridLayoutManager.k;
        aofVar.a = gridLayoutManager.g;
        return aofVar;
    }

    @Override // defpackage.aoh
    public final int a() {
        return 1;
    }

    @Override // defpackage.aoh
    public final int b() {
        return 1;
    }

    @Override // defpackage.aoh
    public final int c() {
        return this.b;
    }

    @Override // defpackage.aoh
    public final boolean e() {
        return this.c;
    }
}
