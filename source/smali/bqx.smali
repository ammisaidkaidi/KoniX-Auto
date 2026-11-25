.class final Lbqx;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbri;


# instance fields
.field public final a:Lbro;

.field private final b:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lbro;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbqx;->b:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lbqx;->a:Lbro;

    return-void
.end method


# virtual methods
.method public final a(Lbrh;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lbqx;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lbqw;

    invoke-direct {v1, p0, p1}, Lbqw;-><init>(Lbqx;Lbrh;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
