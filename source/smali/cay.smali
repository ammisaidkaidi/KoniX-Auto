.class public final Lcay;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field static final a:Lcay;


# instance fields
.field b:Ljava/lang/String;

.field public final c:J

.field d:J

.field final e:J

.field public volatile f:Ljava/util/List;

.field final g:I

.field final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v9, Lcay;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    const-string v1, ""

    const-wide/16 v4, -0x1

    const/4 v8, 0x3

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcay;-><init>(Ljava/lang/String;JJJI)V

    sput-object v9, Lcay;->a:Lcay;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 9

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 4
    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v6, p2

    move v8, p4

    invoke-direct/range {v0 .. v8}, Lcay;-><init>(Ljava/lang/String;JJJI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJJI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcay;->b:Ljava/lang/String;

    const/4 p1, 0x1

    iput p1, p0, Lcay;->g:I

    iput-wide p2, p0, Lcay;->c:J

    iput-wide p4, p0, Lcay;->d:J

    iput-wide p6, p0, Lcay;->e:J

    iput p8, p0, Lcay;->h:I

    if-ne p8, p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcay;->f:Ljava/util/List;

    return-void

    .line 2
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcay;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 5

    iget-wide v0, p0, Lcay;->d:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    :cond_0
    iget-wide v2, p0, Lcay;->c:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method final b(Ljava/util/List;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcay;->f:Ljava/util/List;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcay;->f:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcay;->f:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcay;->f:Ljava/util/List;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-void
.end method

.method final c()Z
    .locals 2

    iget v0, p0, Lcay;->h:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final close()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcbm;->a(Lcay;)V

    return-void
.end method
