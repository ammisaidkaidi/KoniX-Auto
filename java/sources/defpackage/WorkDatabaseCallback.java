package defpackage;

import androidx.work.impl.WorkDatabase;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class WorkDatabaseCallback extends ProtoTextFormatPrinterUtil {
    @Override // defpackage.ProtoTextFormatPrinterUtil
    public final void e(FrameworkSqliteDatabase afhVar) {
        afhVar.d();
        try {
            afhVar.g(WorkDatabase.o());
            afhVar.h();
        } finally {
            afhVar.f();
        }
    }
}
