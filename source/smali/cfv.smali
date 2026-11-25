.class final Lcfv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Ldai;

.field final synthetic c:J

.field final synthetic d:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ldai;JLjava/util/concurrent/TimeUnit;)V
    .locals 0

    iput-object p1, p0, Lcfv;->a:Ljava/lang/Runnable;

    iput-object p2, p0, Lcfv;->b:Ldai;

    iput-wide p3, p0, Lcfv;->c:J

    iput-object p5, p0, Lcfv;->d:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcfv;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcfv;->b:Ldai;

    iget-wide v1, p0, Lcfv;->c:J

    iget-object v3, p0, Lcfv;->d:Ljava/util/concurrent/TimeUnit;

    .line 2
    invoke-interface {v0, p0, v1, v2, v3}, Ldai;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ldak;

    move-result-object v0

    invoke-static {v0}, Laoj;->e(Ldag;)V

    return-void
.end method
