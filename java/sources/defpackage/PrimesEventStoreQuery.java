package defpackage;

import android.content.Context;
import android.content.Intent;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.view.inputmethod.EditorInfo;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PrimesEventStoreQuery {
    public static void a(Context context, Intent[] intentArr, Bundle bundle) {
        context.startActivities(intentArr, null);
    }

    public static void b(Context context, Intent intent, Bundle bundle) {
        context.startActivity(intent, null);
    }

    public static void c(EditorInfo editorInfo, CharSequence charSequence) {
        editorInfo.setInitialSurroundingSubText(charSequence, 0);
    }

    public static Object d(TaskBase brhVar, long j, TimeUnit timeUnit) {
        ThreadAndNullChecksUtil.h();
        ThreadAndNullChecksUtil.m(timeUnit, "TimeUnit must not be null");
        if (brhVar.c()) {
            return e(brhVar);
        }
        TaskCompletionLatch brpVar = new TaskCompletionLatch();
        f(brhVar, brpVar);
        if (brpVar.a.await(j, timeUnit)) {
            return e(brhVar);
        }
        throw new TimeoutException("Timed out waiting for Task");
    }

    public static Object e(TaskBase brhVar) {
        if (brhVar.d()) {
            return brhVar.b();
        }
        if (((TaskImpl) brhVar).d) {
            throw new CancellationException("Task is already canceled");
        }
        throw new ExecutionException(brhVar.a());
    }

    public static void f(TaskBase brhVar, TaskCompletionLatch brpVar) {
        TaskImpl broVar = (TaskImpl) brhVar;
        broVar.b.a(new TaskExecutorImpl(brn.b, brpVar, 2, (char[]) null));
        broVar.h();
        broVar.b.a(new TaskExecutorImpl(brn.b, brpVar, 0));
        broVar.h();
        broVar.b.a(new TaskExecutorImpl(brn.b, brpVar, 1, (byte[]) null));
        broVar.h();
    }

    public static void g(SQLiteDatabase sQLiteDatabase, String str) {
        String[] strArr = {str};
        sQLiteDatabase.delete("ApplicationStates", "packageName = ?", strArr);
        sQLiteDatabase.delete("LogSources", "packageName = ?", strArr);
        sQLiteDatabase.delete("WeakExperimentIds", "packageName = ?", strArr);
        sQLiteDatabase.delete("ExperimentTokens", "packageName = ?", strArr);
        sQLiteDatabase.delete("Flags", "packageName = ?", strArr);
        sQLiteDatabase.delete("FlagOverrides", "packageName = ?", strArr);
        sQLiteDatabase.delete("ApplicationTags", "packageName = ?", strArr);
        sQLiteDatabase.delete("CrossLoggedExperimentTokens", "toPackageName = ?", strArr);
        sQLiteDatabase.delete("CrossLoggedExperimentTokens", "fromPackageName = ?", strArr);
        sQLiteDatabase.delete("Packages", "packageName = ?", strArr);
        sQLiteDatabase.delete("GenericDimensions", "packageName = ?", strArr);
        sQLiteDatabase.delete("RequestTags", null, null);
    }
}
