.class public final Lcaa;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lcaa;


# instance fields
.field public volatile b:Z

.field public volatile c:J

.field public volatile d:J

.field public volatile e:J

.field public volatile f:J

.field public volatile g:J

.field public volatile h:J

.field public volatile i:J

.field public volatile j:J

.field public volatile k:Lbtx;

.field public final l:Lbzz;

.field public final m:Lbzs;

.field public final n:Lbzs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcaa;

    invoke-direct {v0}, Lcaa;-><init>()V

    sput-object v0, Lcaa;->a:Lcaa;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbzz;

    invoke-direct {v0}, Lbzz;-><init>()V

    iput-object v0, p0, Lcaa;->l:Lbzz;

    new-instance v0, Lbzs;

    invoke-direct {v0}, Lbzs;-><init>()V

    iput-object v0, p0, Lcaa;->m:Lbzs;

    new-instance v0, Lbzs;

    invoke-direct {v0}, Lbzs;-><init>()V

    iput-object v0, p0, Lcaa;->n:Lbzs;

    return-void
.end method

.method public static b(Ljava/lang/String;J)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-static {}, Landroid/os/Process;->getStartElapsedRealtime()J

    move-result-wide v0

    sub-long/2addr p1, v0

    invoke-static {p0, p1, p2}, Landroid/os/Trace;->setCounter(Ljava/lang/String;J)V

    const-wide/16 p1, 0x0

    .line 2
    invoke-static {p0, p1, p2}, Landroid/os/Trace;->setCounter(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2
    invoke-static {}, Lbjq;->h()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcaa;->c:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v6, v0, v2

    if-gtz v6, :cond_1

    iget-object v2, p0, Lcaa;->m:Lbzs;

    iget-object v2, v2, Lbzs;->b:Ljava/lang/Long;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcaa;->m:Lbzs;

    iget-object v2, v2, Lbzs;->b:Ljava/lang/Long;

    .line 4
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v6, v0, v2

    if-gtz v6, :cond_1

    :cond_0
    iget-wide v2, p0, Lcaa;->e:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    iput-wide v0, p0, Lcaa;->e:J

    iget-object v0, p0, Lcaa;->l:Lbzz;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lbzz;->f:Z

    :cond_1
    return-void
.end method
