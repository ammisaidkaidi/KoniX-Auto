.class public final Lakx;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Laee;

.field public final b:Lady;


# direct methods
.method public constructor <init>(Laee;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lakx;->a:Laee;

    new-instance v0, Lakw;

    invoke-direct {v0, p1}, Lakw;-><init>(Laee;)V

    iput-object v0, p0, Lakx;->b:Lady;

    return-void
.end method

.method public constructor <init>(Laee;[B)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lakx;->a:Laee;

    new-instance p2, Lakd;

    invoke-direct {p2, p1}, Lakd;-><init>(Laee;)V

    iput-object p2, p0, Lakx;->b:Lady;

    return-void
.end method

.method public constructor <init>(Laee;[B[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lakx;->a:Laee;

    new-instance p2, Lajw;

    invoke-direct {p2, p1}, Lajw;-><init>(Laee;)V

    iput-object p2, p0, Lakx;->b:Lady;

    return-void
.end method

.method public constructor <init>(Laee;[C)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lakx;->a:Laee;

    new-instance p2, Lajy;

    invoke-direct {p2, p1}, Lajy;-><init>(Laee;)V

    iput-object p2, p0, Lakx;->b:Lady;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/util/List;
    .locals 3

    .line 1
    const-string v0, "SELECT DISTINCT tag FROM worktag WHERE work_spec_id=?"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Laeh;->a(Ljava/lang/String;I)Laeh;

    move-result-object v0

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Laeh;->e(I)V

    goto :goto_0

    .line 12
    :cond_0
    nop

    .line 3
    invoke-virtual {v0, v1, p1}, Laeh;->f(ILjava/lang/String;)V

    .line 2
    :goto_0
    iget-object p1, p0, Lakx;->a:Laee;

    .line 4
    invoke-virtual {p1}, Laee;->e()V

    iget-object p1, p0, Lakx;->a:Laee;

    .line 5
    invoke-virtual {p1, v0}, Laee;->k(Laff;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 8
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 10
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 11
    invoke-virtual {v0}, Laeh;->i()V

    return-object v1

    :catchall_0
    move-exception v1

    .line 10
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 11
    invoke-virtual {v0}, Laeh;->i()V

    .line 12
    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/Long;
    .locals 4

    .line 1
    const-string v0, "SELECT long_value FROM Preference where `key`=?"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Laeh;->a(Ljava/lang/String;I)Laeh;

    move-result-object v0

    .line 2
    invoke-virtual {v0, v1, p1}, Laeh;->f(ILjava/lang/String;)V

    iget-object p1, p0, Lakx;->a:Laee;

    .line 3
    invoke-virtual {p1}, Laee;->e()V

    iget-object p1, p0, Lakx;->a:Laee;

    .line 4
    invoke-virtual {p1, v0}, Laee;->k(Laff;)Landroid/database/Cursor;

    move-result-object p1

    .line 5
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 6
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    nop

    .line 7
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 10
    :cond_1
    nop

    .line 8
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 9
    invoke-virtual {v0}, Laeh;->i()V

    return-object v2

    .line 7
    :catchall_0
    move-exception v1

    .line 8
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 9
    invoke-virtual {v0}, Laeh;->i()V

    .line 10
    throw v1
.end method

.method public final c(Lajx;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lakx;->a:Laee;

    invoke-virtual {v0}, Laee;->e()V

    iget-object v0, p0, Lakx;->a:Laee;

    .line 2
    invoke-virtual {v0}, Laee;->f()V

    :try_start_0
    iget-object v0, p0, Lakx;->b:Lady;

    .line 3
    invoke-virtual {v0, p1}, Lady;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lakx;->a:Laee;

    .line 4
    invoke-virtual {p1}, Laee;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object p1, p0, Lakx;->a:Laee;

    .line 5
    invoke-virtual {p1}, Laee;->g()V

    return-void

    .line 4
    :catchall_0
    move-exception p1

    iget-object v0, p0, Lakx;->a:Laee;

    .line 5
    invoke-virtual {v0}, Laee;->g()V

    .line 6
    throw p1
.end method

.method public final d(Ljava/lang/String;)Ljava/util/List;
    .locals 3

    .line 1
    const-string v0, "SELECT work_spec_id FROM dependency WHERE prerequisite_id=?"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Laeh;->a(Ljava/lang/String;I)Laeh;

    move-result-object v0

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Laeh;->e(I)V

    goto :goto_0

    .line 12
    :cond_0
    nop

    .line 3
    invoke-virtual {v0, v1, p1}, Laeh;->f(ILjava/lang/String;)V

    .line 2
    :goto_0
    iget-object p1, p0, Lakx;->a:Laee;

    .line 4
    invoke-virtual {p1}, Laee;->e()V

    iget-object p1, p0, Lakx;->a:Laee;

    .line 5
    invoke-virtual {p1, v0}, Laee;->k(Laff;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 8
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 10
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 11
    invoke-virtual {v0}, Laeh;->i()V

    return-object v1

    :catchall_0
    move-exception v1

    .line 10
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 11
    invoke-virtual {v0}, Laeh;->i()V

    .line 12
    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method
