.class final Lakz;
.super Lala;
.source "PG"


# instance fields
.field final synthetic a:Lahx;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lahx;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lakz;->a:Lahx;

    iput-object p2, p0, Lakz;->b:Ljava/lang/String;

    invoke-direct {p0}, Lala;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lakz;->a:Lahx;

    iget-object v0, v0, Lahx;->d:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Laee;->f()V

    .line 2
    :try_start_0
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->n()Lakl;

    move-result-object v1

    iget-object v2, p0, Lakz;->b:Ljava/lang/String;

    const-string v3, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    .line 3
    const/4 v4, 0x1

    invoke-static {v3, v4}, Laeh;->a(Ljava/lang/String;I)Laeh;

    move-result-object v3

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {v3, v4}, Laeh;->e(I)V

    goto :goto_0

    .line 19
    :cond_0
    nop

    .line 5
    invoke-virtual {v3, v4, v2}, Laeh;->f(ILjava/lang/String;)V

    .line 2
    :goto_0
    move-object v2, v1

    check-cast v2, Lakv;

    iget-object v2, v2, Lakv;->a:Laee;

    .line 6
    invoke-virtual {v2}, Laee;->e()V

    .line 2
    check-cast v1, Lakv;

    iget-object v1, v1, Lakv;->a:Laee;

    .line 7
    invoke-virtual {v1, v3}, Laee;->k(Laff;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    .line 8
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    .line 10
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 12
    :cond_1
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 13
    invoke-virtual {v3}, Laeh;->i()V

    .line 15
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lakz;->a:Lahx;

    .line 16
    invoke-static {v3, v2}, Lakz;->b(Lahx;Ljava/lang/String;)V

    goto :goto_2

    .line 17
    :cond_2
    invoke-virtual {v0}, Laee;->h()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 18
    invoke-virtual {v0}, Laee;->g()V

    return-void

    :catchall_0
    move-exception v2

    .line 12
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 13
    invoke-virtual {v3}, Laeh;->i()V

    .line 14
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    .line 18
    invoke-virtual {v0}, Laee;->g()V

    .line 19
    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method
