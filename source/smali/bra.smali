.class final Lbra;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbrh;

.field final synthetic b:Lbrb;


# direct methods
.method public constructor <init>(Lbrb;Lbrh;)V
    .locals 0

    iput-object p1, p0, Lbra;->b:Lbrb;

    iput-object p2, p0, Lbra;->a:Lbrh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lbra;->b:Lbrb;

    iget-object v0, v0, Lbrb;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbra;->b:Lbrb;

    iget-object v1, v1, Lbrb;->b:Lbrc;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lbra;->a:Lbrh;

    invoke-interface {v1, v2}, Lbrc;->a(Lbrh;)V

    .line 2
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
