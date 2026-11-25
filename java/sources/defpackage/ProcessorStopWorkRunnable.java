package defpackage;

import android.database.Cursor;
import androidx.work.impl.WorkDatabase;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ProcessorStopWorkRunnable extends ProcessorWorkRunnableBase {
    final /* synthetic */ WorkManagerImpl a;
    final /* synthetic */ String b;

    public ProcessorStopWorkRunnable(WorkManagerImpl ahxVar, String str) {
        this.a = ahxVar;
        this.b = str;
    }

    @Override // defpackage.ProcessorWorkRunnableBase
    public final void a() {
        WorkDatabase workDatabase = this.a.d;
        workDatabase.f();
        try {
            WorkSpecDao n = workDatabase.n();
            String str = this.b;
            FrameworkSqliteDatabaseFacade a = FrameworkSqliteDatabaseFacade.a("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND WindowInsetsCompatApi28Impl IN (SELECT work_spec_id FROM workname WHERE name=?)", 1);
            if (str == null) {
                a.e(1);
            } else {
                a.f(1, str);
            }
            ((WorkSpecDaoImpl) n).a.e();
            Cursor k = ((WorkSpecDaoImpl) n).a.k(SingleStringProtoMessage);
            try {
                ArrayList arrayList = new ArrayList(k.getCount());
                while (k.moveToNext()) {
                    arrayList.add(k.getString(0));
                }
                k.close();
                a.i();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    b(this.a, (String) it.next());
                }
                workDatabase.h();
            } catch (Throwable th) {
                k.close();
                a.i();
                throw th;
            }
        } finally {
            workDatabase.g();
        }
    }
}
