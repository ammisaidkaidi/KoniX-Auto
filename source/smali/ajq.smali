.class public final Lajq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroidx/work/impl/WorkDatabase;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lajs;


# direct methods
.method public constructor <init>(Lajs;Landroidx/work/impl/WorkDatabase;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lajq;->c:Lajs;

    iput-object p2, p0, Lajq;->a:Landroidx/work/impl/WorkDatabase;

    iput-object p3, p0, Lajq;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lajq;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->n()Lakl;

    move-result-object v0

    iget-object v1, p0, Lajq;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lakl;->a(Ljava/lang/String;)Lakk;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lakk;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lajq;->c:Lajs;

    iget-object v1, v1, Lajs;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lajq;->c:Lajs;

    iget-object v2, v2, Lajs;->f:Ljava/util/Map;

    iget-object v3, p0, Lajq;->b:Ljava/lang/String;

    .line 3
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lajq;->c:Lajs;

    iget-object v2, v2, Lajs;->g:Ljava/util/Set;

    .line 4
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lajq;->c:Lajs;

    iget-object v2, v0, Lajs;->h:Laiv;

    iget-object v0, v0, Lajs;->g:Ljava/util/Set;

    .line 5
    invoke-virtual {v2, v0}, Laiv;->a(Ljava/lang/Iterable;)V

    .line 6
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    return-void
.end method
