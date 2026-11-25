package defpackage;

import android.support.v7.widget.RecyclerView;

/* compiled from: PG */
/* loaded from: classes.dex */
final class SqliteQueryHelperSub extends SqliteContentValuesHelper {
    boolean a = false;
    final /* synthetic */ LinearLayoutManagerScrollerState b;

    public SqliteQueryHelperSub(LinearLayoutManagerScrollerState rcVar) {
        this.b = rcVar;
    }

    @Override // defpackage.SqliteContentValuesHelper
    public final void a(RecyclerView recyclerView, int i, int i2) {
        if (NavInstructionTypeEnum == 0 && i2 == 0) {
            return;
        }
        this.a = true;
    }

    @Override // defpackage.SqliteContentValuesHelper
    public final void b(int i) {
        if (NavInstructionTypeEnum == 0 && this.a) {
            this.a = false;
            this.b.a();
        }
    }
}
