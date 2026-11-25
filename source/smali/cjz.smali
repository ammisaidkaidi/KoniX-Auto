.class public final Lcjz;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Lcjz;


# instance fields
.field private final b:Ljava/lang/Object;

.field private final c:Ljava/util/ArrayDeque;

.field private final d:Ljava/util/ArrayDeque;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcjz;

    invoke-direct {v0}, Lcjz;-><init>()V

    sput-object v0, Lcjz;->a:Lcjz;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcjz;->b:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcjz;->c:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/ArrayDeque;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcjz;->d:Ljava/util/ArrayDeque;

    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcjz;->a:Lcjz;

    invoke-static {}, Landroid/os/Process;->myTid()I

    .line 2
    invoke-static {}, Landroid/os/Process;->myPid()I

    new-instance v1, Lcjy;

    new-instance v2, Ljava/util/Date;

    .line 3
    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    invoke-direct {v1, p0, p1, p2}, Lcjy;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iget p0, v1, Lcjy;->a:I

    packed-switch p0, :pswitch_data_0

    iget-object p0, v1, Lcjy;->b:Ljava/lang/String;

    iget-object p1, v1, Lcjy;->c:Ljava/lang/String;

    .line 4
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 8
    :pswitch_0
    iget-object p0, v1, Lcjy;->b:Ljava/lang/String;

    iget-object p1, v1, Lcjy;->c:Ljava/lang/String;

    .line 5
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :goto_0
    :pswitch_1
    iget-object p0, v0, Lcjz;->b:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget-object p1, v0, Lcjz;->c:Ljava/util/ArrayDeque;

    const/16 p2, 0x64

    .line 6
    invoke-static {v1, p1, p2}, Lcjz;->e(Lcjy;Ljava/util/ArrayDeque;I)V

    iget p1, v1, Lcjy;->a:I

    const/4 p2, 0x5

    if-lt p1, p2, :cond_0

    iget-object p1, v0, Lcjz;->d:Ljava/util/ArrayDeque;

    const/16 p2, 0xa

    .line 7
    invoke-static {v1, p1, p2}, Lcjz;->e(Lcjy;Ljava/util/ArrayDeque;I)V

    .line 8
    :cond_0
    monitor-exit p0

    return-void

    .line 5
    :catchall_0
    move-exception p1

    .line 8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lcjz;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lcjz;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x5

    invoke-static {v0, p0, p1}, Lcjz;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static e(Lcjy;Ljava/util/ArrayDeque;I)V
    .locals 1

    .line 1
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    if-lt v0, p2, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    return-void
.end method
