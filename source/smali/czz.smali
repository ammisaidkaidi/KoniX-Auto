.class public final Lczz;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private final a:Z

.field private final b:Lcqh;


# direct methods
.method public constructor <init>(ZLcqh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lczz;->a:Z

    iput-object p2, p0, Lczz;->b:Lcqh;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Ldag;
    .locals 3

    .line 1
    new-instance v0, Lczi;

    iget-object v1, p0, Lczz;->b:Lcqh;

    iget-boolean v2, p0, Lczz;->a:Z

    invoke-direct {v0, v1, v2, p2, p1}, Lczi;-><init>(Lcqa;ZLjava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method public final b(Lczb;Ljava/util/concurrent/Executor;)Ldag;
    .locals 3

    .line 1
    new-instance v0, Lczi;

    iget-object v1, p0, Lczz;->b:Lcqh;

    iget-boolean v2, p0, Lczz;->a:Z

    invoke-direct {v0, v1, v2, p2, p1}, Lczi;-><init>(Lcqa;ZLjava/util/concurrent/Executor;Lczb;)V

    return-object v0
.end method
