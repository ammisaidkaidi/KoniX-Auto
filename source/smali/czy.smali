.class public final Lczy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Ldag;

.field b:Ljava/util/concurrent/Future;


# direct methods
.method public constructor <init>(Ldag;Ljava/util/concurrent/Future;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lczy;->a:Ldag;

    iput-object p2, p0, Lczy;->b:Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lczy;->a:Ldag;

    iget-object v1, p0, Lczy;->b:Ljava/util/concurrent/Future;

    invoke-static {v0, v1}, Lhh;->q(Ldag;Ljava/util/concurrent/Future;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lczy;->a:Ldag;

    iput-object v0, p0, Lczy;->b:Ljava/util/concurrent/Future;

    return-void
.end method
