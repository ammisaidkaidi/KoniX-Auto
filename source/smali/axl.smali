.class public final Laxl;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lcsz;

.field static final b:Landroid/view/KeyEvent;

.field static final c:Landroid/view/KeyEvent;

.field private static final g:Lcqw;

.field private static final h:Lcqw;

.field private static final i:Lcqw;


# instance fields
.field public final d:Lcqk;

.field public e:Z

.field public f:Z

.field private final j:Landroid/car/CarProjectionManager;

.field private final k:I

.field private final l:I

.field private final m:Z

.field private final n:[I

.field private final o:Landroid/car/CarProjectionManager$ProjectionKeyEventHandler;

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    const-string v0, "com/google/android/apps/auto/aareceiver/input/InputManager"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Laxl;->a:Lcsz;

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    const/16 v2, 0x54

    invoke-direct {v0, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    sput-object v0, Laxl;->b:Landroid/view/KeyEvent;

    new-instance v0, Landroid/view/KeyEvent;

    .line 2
    const/4 v3, 0x1

    invoke-direct {v0, v3, v2}, Landroid/view/KeyEvent;-><init>(II)V

    sput-object v0, Laxl;->c:Landroid/view/KeyEvent;

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 4
    const/16 v0, 0x56

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 5
    const/16 v0, 0x57

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 6
    const/16 v0, 0x58

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 7
    const/16 v0, 0x7e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 8
    const/16 v0, 0x7f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-array v10, v3, [Ljava/lang/Integer;

    .line 9
    const v0, 0x10001

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v10, v1

    .line 10
    invoke-static/range {v4 .. v10}, Lcqw;->r(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcqw;

    move-result-object v0

    sput-object v0, Laxl;->g:Lcqw;

    .line 11
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 12
    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 13
    invoke-static {v2, v5}, Lcqw;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcqw;

    move-result-object v6

    sput-object v6, Laxl;->h:Lcqw;

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 15
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 16
    const/4 v8, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-array v10, v4, [Ljava/lang/Object;

    aput-object v6, v10, v1

    aput-object v7, v10, v3

    aput-object v2, v10, v0

    aput-object v9, v10, v8

    const/4 v0, 0x4

    aput-object v5, v10, v0

    .line 17
    invoke-static {v4, v10}, Lcqw;->l(I[Ljava/lang/Object;)Lcqw;

    move-result-object v0

    sput-object v0, Laxl;->i:Lcqw;

    return-void
.end method

.method public constructor <init>(Landroid/car/CarProjectionManager;Lbfe;IIZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Laxh;

    invoke-direct {v0, p0}, Laxh;-><init>(Laxl;)V

    iput-object v0, p0, Laxl;->o:Landroid/car/CarProjectionManager$ProjectionKeyEventHandler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Laxl;->e:Z

    iput-boolean v0, p0, Laxl;->p:Z

    iput-boolean v0, p0, Laxl;->f:Z

    iput-object p1, p0, Laxl;->j:Landroid/car/CarProjectionManager;

    iput p3, p0, Laxl;->k:I

    iput p4, p0, Laxl;->l:I

    iput-boolean p5, p0, Laxl;->m:Z

    .line 2
    invoke-static {}, Lckf;->values()[Lckf;

    move-result-object p1

    invoke-static {p1}, Lj$/util/DesugarArrays;->stream([Ljava/lang/Object;)Lj$/util/stream/Stream;

    move-result-object p1

    sget-object p3, Laxk;->b:Laxk;

    invoke-interface {p1, p3}, Lj$/util/stream/Stream;->mapToInt(Lj$/util/function/ToIntFunction;)Lj$/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Lj$/util/stream/IntStream;->toArray()[I

    move-result-object p1

    new-instance p3, Ljava/util/HashSet;

    sget-object p4, Laxl;->g:Lcqw;

    .line 3
    invoke-direct {p3, p4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 4
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object p4

    invoke-static {p4}, Lj$/util/DesugarArrays;->stream([I)Lj$/util/stream/IntStream;

    move-result-object p4

    sget-object p5, Laws;->f:Laws;

    .line 5
    invoke-interface {p4, p5}, Lj$/util/stream/IntStream;->mapToObj(Lj$/util/function/IntFunction;)Lj$/util/stream/Stream;

    move-result-object p4

    new-instance p5, Laxj;

    invoke-direct {p5, p1}, Laxj;-><init>([I)V

    .line 6
    invoke-interface {p4, p5}, Lj$/util/stream/Stream;->map(Lj$/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p4

    new-instance p5, Laxi;

    invoke-direct {p5, p1, p3}, Laxi;-><init>([ILjava/util/Set;)V

    .line 7
    invoke-interface {p4, p5}, Lj$/util/stream/Stream;->forEach(Lj$/util/function/Consumer;)V

    .line 8
    invoke-static {p3}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    sget-object p3, Laxk;->a:Laxk;

    invoke-interface {p1, p3}, Lj$/util/stream/Stream;->mapToInt(Lj$/util/function/ToIntFunction;)Lj$/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Lj$/util/stream/IntStream;->toArray()[I

    move-result-object p1

    iput-object p1, p0, Laxl;->n:[I

    .line 9
    invoke-static {}, Lcqk;->e()Lcqi;

    move-result-object p1

    .line 10
    sget-object p3, Lckb;->a:Lckb;

    new-instance p4, Lcom/google/android/projection/protocol/InputSource;

    invoke-direct {p4}, Lcom/google/android/projection/protocol/InputSource;-><init>()V

    invoke-virtual {p1, p3, p4}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p2}, Lbfe;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lckb;->b:Lckb;

    new-instance p3, Lcom/google/android/projection/protocol/InputSource;

    invoke-direct {p3}, Lcom/google/android/projection/protocol/InputSource;-><init>()V

    .line 12
    invoke-virtual {p1, p2, p3}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    :cond_0
    invoke-virtual {p1}, Lcqi;->c()Lcqk;

    move-result-object p1

    iput-object p1, p0, Laxl;->d:Lcqk;

    return-void
.end method

.method private final f()Lcqw;
    .locals 2

    .line 1
    iget-boolean v0, p0, Laxl;->m:Z

    if-eqz v0, :cond_0

    sget-object v0, Laxl;->h:Lcqw;

    return-object v0

    :cond_0
    invoke-static {}, Lcqw;->k()Lcqu;

    move-result-object v0

    sget-object v1, Laxl;->h:Lcqw;

    .line 2
    invoke-virtual {v0, v1}, Lcqu;->g(Ljava/lang/Iterable;)V

    const/4 v1, 0x1

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcqu;->h(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v0}, Lcqu;->f()Lcqw;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lckb;)Lcom/google/android/projection/protocol/InputSource;
    .locals 1

    .line 1
    iget-object v0, p0, Laxl;->d:Lcqk;

    invoke-virtual {v0, p1}, Lcqk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/protocol/InputSource;

    return-object p1
.end method

.method public final declared-synchronized b(I)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Laxl;->f:Z

    if-nez v0, :cond_0

    sget-object p1, Laxl;->a:Lcsz;

    invoke-virtual {p1}, Lcsv;->c()Lctq;

    move-result-object p1

    const-string v0, "com/google/android/apps/auto/aareceiver/input/InputManager"

    const-string v1, "handleProjectionKeyEvent"

    const/16 v2, 0xb5

    const-string v3, "InputManager.java"

    invoke-interface {p1, v0, v1, v2, v3}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string v0, "handleProjectionKeyEvent called on uninitialized object"

    invoke-interface {p1, v0}, Lcsx;->n(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    :try_start_1
    iget-object p1, p0, Laxl;->d:Lcqk;

    .line 2
    sget-object v0, Lckb;->a:Lckb;

    .line 3
    invoke-virtual {p1, v0}, Lcqk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/protocol/InputSource;

    new-instance v0, Landroid/view/KeyEvent;

    const v3, 0x10004

    invoke-direct {v0, v1, v3}, Landroid/view/KeyEvent;-><init>(II)V

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/projection/protocol/InputSource;->d(Landroid/view/KeyEvent;)V

    iget-object p1, p0, Laxl;->d:Lcqk;

    sget-object v0, Lckb;->a:Lckb;

    .line 5
    invoke-virtual {p1, v0}, Lcqk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/protocol/InputSource;

    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    .line 6
    invoke-virtual {p1, v0}, Lcom/google/android/projection/protocol/InputSource;->d(Landroid/view/KeyEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-object v0, p0, Laxl;->d:Lcqk;

    .line 7
    sget-object v3, Lckb;->a:Lckb;

    invoke-virtual {v0, v3}, Lcqk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/protocol/InputSource;

    iget-boolean v3, p0, Laxl;->e:Z

    const/4 v4, 0x2

    if-nez v3, :cond_4

    if-ne p1, v4, :cond_2

    sget-object p1, Laxl;->b:Landroid/view/KeyEvent;

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    .line 9
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 10
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result p1

    .line 11
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/projection/protocol/InputSource;->nativeSendKeyLongEvent(JII)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_3
    iget-boolean v1, p0, Laxl;->m:Z

    if-nez v1, :cond_3

    if-ne p1, v2, :cond_3

    sget-object p1, Laxl;->b:Landroid/view/KeyEvent;

    .line 13
    invoke-virtual {v0, p1}, Lcom/google/android/projection/protocol/InputSource;->d(Landroid/view/KeyEvent;)V

    sget-object p1, Laxl;->c:Landroid/view/KeyEvent;

    .line 14
    invoke-virtual {v0, p1}, Lcom/google/android/projection/protocol/InputSource;->d(Landroid/view/KeyEvent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_4
    sget-object v0, Laxl;->a:Lcsz;

    invoke-virtual {v0}, Lcsv;->c()Lctq;

    move-result-object v0

    const-string v1, "com/google/android/apps/auto/aareceiver/input/InputManager"

    const-string v2, "handleProjectionKeyEvent"

    const/16 v3, 0xdd

    const-string v4, "InputManager.java"

    .line 12
    invoke-interface {v0, v1, v2, v3, v4}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v1, "Unexpected key event %d"

    invoke-interface {v0, v1, p1}, Lcsx;->o(Ljava/lang/String;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    if-ne p1, v4, :cond_5

    :try_start_5
    sget-object p1, Laxl;->b:Landroid/view/KeyEvent;

    .line 15
    invoke-virtual {v0, p1}, Lcom/google/android/projection/protocol/InputSource;->d(Landroid/view/KeyEvent;)V

    iput-boolean v2, p0, Laxl;->p:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_5
    const/4 v3, 0x3

    if-ne p1, v3, :cond_7

    :try_start_6
    iget-boolean p1, p0, Laxl;->p:Z

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    sget-object p1, Laxl;->c:Landroid/view/KeyEvent;

    .line 16
    invoke-virtual {v0, p1}, Lcom/google/android/projection/protocol/InputSource;->d(Landroid/view/KeyEvent;)V

    iput-boolean v1, p0, Laxl;->p:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-void

    :cond_7
    if-nez p1, :cond_8

    monitor-exit p0

    return-void

    :cond_8
    if-ne p1, v2, :cond_9

    :try_start_7
    sget-object p1, Laxl;->b:Landroid/view/KeyEvent;

    .line 17
    invoke-virtual {v0, p1}, Lcom/google/android/projection/protocol/InputSource;->d(Landroid/view/KeyEvent;)V

    sget-object p1, Laxl;->c:Landroid/view/KeyEvent;

    .line 18
    invoke-virtual {v0, p1}, Lcom/google/android/projection/protocol/InputSource;->d(Landroid/view/KeyEvent;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-void

    :cond_9
    :try_start_8
    sget-object v0, Laxl;->a:Lcsz;

    invoke-virtual {v0}, Lcsv;->c()Lctq;

    move-result-object v0

    const-string v1, "com/google/android/apps/auto/aareceiver/input/InputManager"

    const-string v2, "handleProjectionKeyEvent"

    const/16 v3, 0x103

    const-string v4, "InputManager.java"

    .line 19
    invoke-interface {v0, v1, v2, v3, v4}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v1, "Unexpected key event %d"

    invoke-interface {v0, v1, p1}, Lcsx;->o(Ljava/lang/String;I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return-void

    .line 0
    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final declared-synchronized c()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Laxl;->f:Z

    if-eqz v0, :cond_0

    sget-object v0, Laxl;->a:Lcsz;

    invoke-virtual {v0}, Lcsv;->c()Lctq;

    move-result-object v0

    const-string v1, "com/google/android/apps/auto/aareceiver/input/InputManager"

    const-string v2, "initialize"

    const/16 v3, 0x85

    const-string v4, "InputManager.java"

    invoke-interface {v0, v1, v2, v3, v4}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v1, "initialize called twice on the object"

    invoke-interface {v0, v1}, Lcsx;->n(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Laxl;->f:Z

    iget-object v1, p0, Laxl;->d:Lcqk;

    .line 2
    sget-object v2, Lckb;->a:Lckb;

    .line 3
    invoke-virtual {v1, v2}, Lcqk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/projection/protocol/InputSource;

    iget v2, p0, Laxl;->k:I

    iget v3, p0, Laxl;->l:I

    .line 4
    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/projection/protocol/InputSource;->nativeRegisterTouchScreen(III)V

    iget-object v1, p0, Laxl;->d:Lcqk;

    sget-object v2, Lckb;->a:Lckb;

    .line 5
    invoke-virtual {v1, v2}, Lcqk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/projection/protocol/InputSource;

    .line 6
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/projection/protocol/InputSource;->nativeSetDisplayId(I)V

    iget-object v1, p0, Laxl;->d:Lcqk;

    sget-object v3, Lckb;->a:Lckb;

    .line 7
    invoke-virtual {v1, v3}, Lcqk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/projection/protocol/InputSource;

    iget-object v3, p0, Laxl;->n:[I

    .line 8
    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 9
    aget v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v1, v3}, Lcom/google/android/projection/protocol/InputSource;->nativeRegisterKeyCodes([I)V

    iget-object v1, p0, Laxl;->d:Lcqk;

    sget-object v2, Lckb;->b:Lckb;

    .line 10
    invoke-virtual {v1, v2}, Lcqk;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Laxl;->d:Lcqk;

    sget-object v2, Lckb;->b:Lckb;

    .line 11
    invoke-virtual {v1, v2}, Lcqk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/projection/protocol/InputSource;

    .line 12
    invoke-virtual {v1, v0}, Lcom/google/android/projection/protocol/InputSource;->nativeSetDisplayId(I)V

    :cond_2
    iget-object v0, p0, Laxl;->j:Landroid/car/CarProjectionManager;

    .line 13
    invoke-direct {p0}, Laxl;->f()Lcqw;

    move-result-object v1

    iget-object v2, p0, Laxl;->o:Landroid/car/CarProjectionManager$ProjectionKeyEventHandler;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->addKeyEventHandler(Landroid/car/CarProjectionManager;Ljava/util/Set;Landroid/car/CarProjectionManager$ProjectionKeyEventHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 0
    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final declared-synchronized d(I)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Laxl;->f:Z

    if-nez v0, :cond_0

    sget-object p1, Laxl;->a:Lcsz;

    invoke-virtual {p1}, Lcsv;->c()Lctq;

    move-result-object p1

    const-string v0, "com/google/android/apps/auto/aareceiver/input/InputManager"

    const-string v1, "onVoiceSessionNotification"

    const/16 v2, 0x109

    const-string v3, "InputManager.java"

    invoke-interface {p1, v0, v1, v2, v3}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string v0, "onNavigationFocusRequest called on uninitialized object"

    invoke-interface {p1, v0}, Lcsx;->n(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    const/4 v1, 0x0

    .line 2
    :goto_0
    :try_start_1
    sget p1, Lcom/google/android/projection/protocol/GalReceiver;->a:I

    iput-boolean v1, p0, Laxl;->e:Z

    iput-boolean v0, p0, Laxl;->p:Z

    iget-object p1, p0, Laxl;->j:Landroid/car/CarProjectionManager;

    if-eqz v1, :cond_2

    sget-object v0, Laxl;->i:Lcqw;

    goto :goto_1

    .line 3
    :cond_2
    invoke-direct {p0}, Laxl;->f()Lcqw;

    move-result-object v0

    .line 2
    :goto_1
    iget-object v1, p0, Laxl;->o:Landroid/car/CarProjectionManager$ProjectionKeyEventHandler;

    .line 4
    invoke-static {p1, v0, v1}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->addKeyEventHandler(Landroid/car/CarProjectionManager;Ljava/util/Set;Landroid/car/CarProjectionManager$ProjectionKeyEventHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 0
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized e()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Laxl;->j:Landroid/car/CarProjectionManager;

    iget-object v1, p0, Laxl;->o:Landroid/car/CarProjectionManager$ProjectionKeyEventHandler;

    invoke-static {v0, v1}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->removeKeyEventHandler(Landroid/car/CarProjectionManager;Landroid/car/CarProjectionManager$ProjectionKeyEventHandler;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Laxl;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 1
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
