.class public final Ldhi;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldht;


# instance fields
.field private final a:Laaj;

.field private final b:Ljava/lang/Object;

.field private volatile c:Last;


# direct methods
.method public constructor <init>(Ltk;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ldhi;->b:Ljava/lang/Object;

    new-instance v0, Laaj;

    new-instance v1, Ldhd;

    invoke-direct {v1, p1}, Ldhd;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-interface {p1}, Laak;->ai()Laed;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Laaj;-><init>(Laed;Laag;[B)V

    iput-object v0, p0, Ldhi;->a:Laaj;

    return-void
.end method


# virtual methods
.method public final bridge synthetic aT()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Ldhi;->c:Last;

    if-nez v0, :cond_1

    iget-object v0, p0, Ldhi;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ldhi;->c:Last;

    if-nez v1, :cond_0

    iget-object v1, p0, Ldhi;->a:Laaj;

    const-class v2, Ldhf;

    invoke-virtual {v1, v2}, Laaj;->a(Ljava/lang/Class;)Laaf;

    move-result-object v1

    check-cast v1, Ldhf;

    iget-object v1, v1, Ldhf;->a:Last;

    iput-object v1, p0, Ldhi;->c:Last;

    .line 2
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    iget-object v0, p0, Ldhi;->c:Last;

    return-object v0
.end method
