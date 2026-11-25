.class public final synthetic Lcjb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lczc;


# instance fields
.field public final synthetic a:Lcjf;

.field public final synthetic b:Ldag;


# direct methods
.method public synthetic constructor <init>(Lcjf;Ldag;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcjb;->a:Lcjf;

    iput-object p2, p0, Lcjb;->b:Ldag;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ldag;
    .locals 3

    .line 1
    iget-object v0, p0, Lcjb;->a:Lcjf;

    iget-object v1, p0, Lcjb;->b:Ldag;

    iget-object v2, v0, Lcjf;->b:Ldag;

    invoke-static {v2}, Lhh;->o(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v0, v2, p1}, Lcjf;->c(Landroid/net/Uri;Ljava/lang/Object;)V

    iget-object p1, v0, Lcjf;->f:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iput-object v1, v0, Lcjf;->g:Ldag;

    .line 2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    sget-object p1, Ldad;->a:Ldag;

    return-object p1

    :catchall_0
    move-exception v0

    .line 2
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
