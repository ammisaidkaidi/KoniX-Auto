.class public final Lxq;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public static c(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/EditorInfo;->setInitialSurroundingSubText(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public static d(Lbrh;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lhr;->h()V

    .line 2
    const-string v0, "TimeUnit must not be null"

    invoke-static {p3, v0}, Lhr;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lbrh;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p0}, Lxq;->e(Lbrh;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lbrp;

    .line 5
    invoke-direct {v0}, Lbrp;-><init>()V

    .line 6
    invoke-static {p0, v0}, Lxq;->f(Lbrh;Lbrp;)V

    iget-object v0, v0, Lbrp;->a:Ljava/util/concurrent/CountDownLatch;

    .line 7
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    invoke-static {p0}, Lxq;->e(Lbrh;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 8
    :cond_1
    new-instance p0, Ljava/util/concurrent/TimeoutException;

    const-string p1, "Timed out waiting for Task"

    invoke-direct {p0, p1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e(Lbrh;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lbrh;->d()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p0

    check-cast v0, Lbro;

    iget-boolean v0, v0, Lbro;->d:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance p0, Ljava/util/concurrent/CancellationException;

    const-string v0, "Task is already canceled"

    invoke-direct {p0, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    invoke-virtual {p0}, Lbrh;->a()Ljava/lang/Exception;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lbrh;->b()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static f(Lbrh;Lbrp;)V
    .locals 5

    .line 1
    sget-object v0, Lbrn;->b:Ljava/util/concurrent/Executor;

    check-cast p0, Lbro;

    iget-object v1, p0, Lbro;->b:Lbrj;

    new-instance v2, Lbre;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v2, v0, p1, v3, v4}, Lbre;-><init>(Ljava/util/concurrent/Executor;Lbrp;I[C)V

    .line 2
    invoke-virtual {v1, v2}, Lbrj;->a(Lbri;)V

    .line 3
    invoke-virtual {p0}, Lbro;->h()V

    sget-object v0, Lbrn;->b:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lbro;->b:Lbrj;

    new-instance v2, Lbre;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, v3}, Lbre;-><init>(Ljava/util/concurrent/Executor;Lbrp;I)V

    .line 4
    invoke-virtual {v1, v2}, Lbrj;->a(Lbri;)V

    .line 5
    invoke-virtual {p0}, Lbro;->h()V

    sget-object v0, Lbrn;->b:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lbro;->b:Lbrj;

    new-instance v2, Lbre;

    const/4 v3, 0x1

    invoke-direct {v2, v0, p1, v3, v4}, Lbre;-><init>(Ljava/util/concurrent/Executor;Lbrp;I[B)V

    .line 6
    invoke-virtual {v1, v2}, Lbrj;->a(Lbri;)V

    .line 7
    invoke-virtual {p0}, Lbro;->h()V

    return-void
.end method

.method public static g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "ApplicationStates"

    const-string v1, "packageName = ?"

    invoke-virtual {p0, p1, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2
    const-string p1, "LogSources"

    invoke-virtual {p0, p1, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3
    const-string p1, "WeakExperimentIds"

    invoke-virtual {p0, p1, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4
    const-string p1, "ExperimentTokens"

    invoke-virtual {p0, p1, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5
    const-string p1, "Flags"

    invoke-virtual {p0, p1, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 6
    const-string p1, "FlagOverrides"

    invoke-virtual {p0, p1, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 7
    const-string p1, "ApplicationTags"

    invoke-virtual {p0, p1, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 8
    const-string p1, "CrossLoggedExperimentTokens"

    const-string v2, "toPackageName = ?"

    invoke-virtual {p0, p1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 9
    const-string v2, "fromPackageName = ?"

    invoke-virtual {p0, p1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 10
    const-string p1, "Packages"

    invoke-virtual {p0, p1, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 11
    const-string p1, "GenericDimensions"

    invoke-virtual {p0, p1, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 12
    const-string p1, "RequestTags"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
