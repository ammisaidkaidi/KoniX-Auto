.class final Lbyu;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbvd;


# instance fields
.field final synthetic a:Ldai;

.field final synthetic b:Lbyy;


# direct methods
.method public constructor <init>(Lbyy;Ldai;)V
    .locals 0

    iput-object p1, p0, Lbyu;->b:Lbyy;

    iput-object p2, p0, Lbyu;->a:Ldai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Landroid/app/Activity;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lbyu;->b:Lbyy;

    iget-object v0, v0, Lbyy;->a:Lbyx;

    .line 2
    const/4 v1, 0x3

    invoke-interface {v0, v1, p1}, Lbyx;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lbyu;->b:Lbyy;

    .line 3
    invoke-virtual {v0}, Lbyy;->a()V

    iget-object v0, p0, Lbyu;->b:Lbyy;

    iget-object v1, p0, Lbyu;->a:Ldai;

    new-instance v2, Lbyt;

    invoke-direct {v2, p0, p1}, Lbyt;-><init>(Lbyu;Ljava/lang/String;)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 4
    const-wide/16 v3, 0xa

    invoke-interface {v1, v2, v3, v4, p1}, Ldai;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ldak;

    move-result-object p1

    iput-object p1, v0, Lbyy;->c:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method
