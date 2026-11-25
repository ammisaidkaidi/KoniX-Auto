.class public final Lald;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroidx/work/impl/WorkDatabase;


# direct methods
.method public constructor <init>(Landroidx/work/impl/WorkDatabase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lald;->a:Landroidx/work/impl/WorkDatabase;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lald;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Laee;->f()V

    :try_start_0
    iget-object v0, p0, Lald;->a:Landroidx/work/impl/WorkDatabase;

    .line 2
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->t()Lakx;

    move-result-object v0

    invoke-virtual {v0, p1}, Lakx;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    const v2, 0x7fffffff

    if-ne v0, v2, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    add-int/lit8 v1, v0, 0x1

    .line 4
    :goto_1
    invoke-virtual {p0, p1, v1}, Lald;->b(Ljava/lang/String;I)V

    iget-object p1, p0, Lald;->a:Landroidx/work/impl/WorkDatabase;

    .line 5
    invoke-virtual {p1}, Laee;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lald;->a:Landroidx/work/impl/WorkDatabase;

    .line 6
    invoke-virtual {p1}, Laee;->g()V

    return v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lald;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Laee;->g()V

    .line 7
    throw p1
.end method

.method public final b(Ljava/lang/String;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lald;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->t()Lakx;

    move-result-object v0

    new-instance v1, Lajx;

    int-to-long v2, p2

    invoke-direct {v1, p1, v2, v3}, Lajx;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Lakx;->c(Lajx;)V

    return-void
.end method
