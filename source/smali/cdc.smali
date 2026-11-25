.class final Lcdc;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcct;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Z

.field private final d:Lccl;

.field private final e:Lcco;

.field private final f:Lccz;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcoc;Lcoc;Lcoc;Lcoc;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lccl;->b:Lccl;

    .line 2
    invoke-virtual {p2, v0}, Lcoc;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lccl;

    sget-object v0, Lcco;->b:Lcco;

    .line 3
    invoke-virtual {p3, v0}, Lcoc;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcco;

    sget-object v0, Lccz;->b:Lccz;

    .line 4
    invoke-virtual {p4, v0}, Lcoc;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lccz;

    .line 5
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p5, v0}, Lcoc;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AARECEIVER_ANDROID_PRIMES"

    iput-object v0, p0, Lcdc;->b:Ljava/lang/String;

    iput-object p2, p0, Lcdc;->d:Lccl;

    iput-object p3, p0, Lcdc;->e:Lcco;

    iput-object p4, p0, Lcdc;->f:Lccz;

    iput-boolean p5, p0, Lcdc;->c:Z

    .line 6
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const-string p3, "com.google.android.libraries.performance.primes#"

    if-eqz p2, :cond_0

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object p1, p0, Lcdc;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ldag;
    .locals 5

    .line 1
    iget-object v0, p0, Lcdc;->d:Lccl;

    invoke-interface {v0}, Lccl;->a()Ldag;

    move-result-object v0

    iget-object v1, p0, Lcdc;->e:Lcco;

    .line 2
    invoke-interface {v1}, Lcco;->a()Ldag;

    move-result-object v1

    iget-object v2, p0, Lcdc;->f:Lccz;

    .line 3
    invoke-interface {v2}, Lccz;->a()Ldag;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ldag;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v4, 0x2

    aput-object v2, v3, v4

    .line 4
    invoke-static {v3}, Lhh;->f([Ldag;)Lczz;

    move-result-object v3

    new-instance v4, Lcdb;

    invoke-direct {v4, p0, v0, v1, v2}, Lcdb;-><init>(Lcdc;Ldag;Ldag;Ldag;)V

    .line 5
    sget-object v0, Lczj;->a:Lczj;

    .line 6
    invoke-virtual {v3, v4, v0}, Lczz;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Ldag;

    move-result-object v0

    return-object v0
.end method
