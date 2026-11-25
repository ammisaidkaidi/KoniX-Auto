.class public Lcom/google/android/projection/common/BufferPool;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static a:Lcom/google/android/projection/common/BufferPool;


# instance fields
.field private final b:Ljava/util/List;

.field private final c:Ljava/util/List;

.field private final d:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/projection/common/BufferPool;

    invoke-direct {v0}, Lcom/google/android/projection/common/BufferPool;-><init>()V

    sput-object v0, Lcom/google/android/projection/common/BufferPool;->a:Lcom/google/android/projection/common/BufferPool;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/projection/common/BufferPool;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    const/16 v2, 0x14

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/projection/common/BufferPool;->c:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    .line 3
    const/16 v2, 0x78

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/projection/common/BufferPool;->d:Ljava/util/List;

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/google/android/projection/common/BufferPool;->b:Ljava/util/List;

    const/high16 v4, 0x40000

    .line 4
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/google/android/projection/common/BufferPool;->c:Ljava/util/List;

    const/16 v4, 0x4000

    .line 5
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    nop

    :goto_2
    const/16 v1, 0x3c

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/google/android/projection/common/BufferPool;->d:Ljava/util/List;

    const/16 v2, 0x200

    .line 6
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static getBuffer(I)Ljava/nio/ByteBuffer;
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/projection/common/BufferPool;->a:Lcom/google/android/projection/common/BufferPool;

    invoke-virtual {v0, p0}, Lcom/google/android/projection/common/BufferPool;->a(I)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 5
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    if-lt v4, p0, :cond_0

    move-object v2, v3

    goto :goto_2

    .line 12
    :cond_0
    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    if-lt v4, p0, :cond_1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 8
    invoke-interface {v0, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 9
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    nop

    .line 8
    :goto_1
    if-nez v2, :cond_4

    .line 9
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    nop

    .line 5
    :cond_4
    :goto_2
    if-nez v2, :cond_5

    .line 10
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 11
    :cond_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object p0

    check-cast p0, Ljava/nio/ByteBuffer;

    return-object v2

    .line 9
    :catchall_0
    move-exception p0

    .line 11
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method


# virtual methods
.method public final a(I)Ljava/util/List;
    .locals 1

    const/16 v0, 0x200

    if-gt p1, v0, :cond_0

    iget-object p1, p0, Lcom/google/android/projection/common/BufferPool;->d:Ljava/util/List;

    return-object p1

    :cond_0
    const/16 v0, 0x4000

    if-gt p1, v0, :cond_1

    iget-object p1, p0, Lcom/google/android/projection/common/BufferPool;->c:Ljava/util/List;

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/google/android/projection/common/BufferPool;->b:Ljava/util/List;

    return-object p1
.end method
