.class public final Lbnp;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static b:Lbnp;

.field private static final c:Lbnq;


# instance fields
.field public a:Lbnq;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x0

    sput-object v0, Lbnp;->b:Lbnp;

    new-instance v0, Lbnq;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lbnq;-><init>(IZZII)V

    sput-object v0, Lbnp;->c:Lbnq;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lbnp;
    .locals 2

    const-class v0, Lbnp;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lbnp;->b:Lbnp;

    if-nez v1, :cond_0

    new-instance v1, Lbnp;

    invoke-direct {v1}, Lbnp;-><init>()V

    sput-object v1, Lbnp;->b:Lbnp;

    :cond_0
    sget-object v1, Lbnp;->b:Lbnp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final declared-synchronized b(Lbnq;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    sget-object p1, Lbnp;->c:Lbnq;

    iput-object p1, p0, Lbnp;->a:Lbnq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lbnp;->a:Lbnq;

    if-eqz v0, :cond_2

    iget v0, v0, Lbnq;->a:I

    iget v1, p1, Lbnq;->a:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ge v0, v1, :cond_1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :goto_0
    :try_start_2
    iput-object p1, p0, Lbnp;->a:Lbnq;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
