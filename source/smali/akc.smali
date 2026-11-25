.class public final Lakc;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Laee;

.field private final b:Lady;

.field private final c:Laej;


# direct methods
.method public constructor <init>(Laee;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lakc;->a:Laee;

    new-instance v0, Laka;

    invoke-direct {v0, p1}, Laka;-><init>(Laee;)V

    iput-object v0, p0, Lakc;->b:Lady;

    new-instance v0, Lakb;

    .line 2
    invoke-direct {v0, p1}, Lakb;-><init>(Laee;)V

    iput-object v0, p0, Lakc;->c:Laej;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lajz;
    .locals 4

    .line 1
    const-string v0, "SELECT `SystemIdInfo`.`work_spec_id` AS `work_spec_id`, `SystemIdInfo`.`system_id` AS `system_id` FROM SystemIdInfo WHERE work_spec_id=?"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Laeh;->a(Ljava/lang/String;I)Laeh;

    move-result-object v0

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Laeh;->e(I)V

    goto :goto_0

    .line 14
    :cond_0
    nop

    .line 3
    invoke-virtual {v0, v1, p1}, Laeh;->f(ILjava/lang/String;)V

    .line 2
    :goto_0
    iget-object p1, p0, Lakc;->a:Laee;

    .line 4
    invoke-virtual {p1}, Laee;->e()V

    iget-object p1, p0, Lakc;->a:Laee;

    .line 5
    invoke-virtual {p1, v0}, Laee;->k(Laff;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string v1, "work_spec_id"

    .line 6
    invoke-static {p1, v1}, Lew;->s(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v2, "system_id"

    .line 7
    invoke-static {p1, v2}, Lew;->s(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 8
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    new-instance v3, Lajz;

    .line 11
    invoke-direct {v3, v1, v2}, Lajz;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 13
    :cond_1
    const/4 v3, 0x0

    .line 12
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 13
    invoke-virtual {v0}, Laeh;->i()V

    return-object v3

    :catchall_0
    move-exception v1

    .line 12
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 13
    invoke-virtual {v0}, Laeh;->i()V

    .line 14
    throw v1
.end method

.method public final b(Lajz;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lakc;->a:Laee;

    invoke-virtual {v0}, Laee;->e()V

    iget-object v0, p0, Lakc;->a:Laee;

    .line 2
    invoke-virtual {v0}, Laee;->f()V

    :try_start_0
    iget-object v0, p0, Lakc;->b:Lady;

    .line 3
    invoke-virtual {v0, p1}, Lady;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lakc;->a:Laee;

    .line 4
    invoke-virtual {p1}, Laee;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object p1, p0, Lakc;->a:Laee;

    .line 5
    invoke-virtual {p1}, Laee;->g()V

    return-void

    .line 4
    :catchall_0
    move-exception p1

    iget-object v0, p0, Lakc;->a:Laee;

    .line 5
    invoke-virtual {v0}, Laee;->g()V

    .line 6
    throw p1
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lakc;->a:Laee;

    invoke-virtual {v0}, Laee;->e()V

    iget-object v0, p0, Lakc;->c:Laej;

    .line 2
    invoke-virtual {v0}, Laej;->d()Lafn;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Lafm;->e(I)V

    goto :goto_0

    .line 10
    :cond_0
    nop

    .line 4
    invoke-virtual {v0, v1, p1}, Lafm;->f(ILjava/lang/String;)V

    .line 3
    :goto_0
    iget-object p1, p0, Lakc;->a:Laee;

    .line 5
    invoke-virtual {p1}, Laee;->f()V

    .line 6
    :try_start_0
    invoke-virtual {v0}, Lafn;->a()V

    iget-object p1, p0, Lakc;->a:Laee;

    .line 7
    invoke-virtual {p1}, Laee;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lakc;->a:Laee;

    .line 8
    invoke-virtual {p1}, Laee;->g()V

    iget-object p1, p0, Lakc;->c:Laej;

    .line 9
    invoke-virtual {p1, v0}, Laej;->e(Lafn;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lakc;->a:Laee;

    .line 8
    invoke-virtual {v1}, Laee;->g()V

    iget-object v1, p0, Lakc;->c:Laej;

    .line 9
    invoke-virtual {v1, v0}, Laej;->e(Lafn;)V

    .line 10
    throw p1
.end method
