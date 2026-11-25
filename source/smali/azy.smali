.class public final Lazy;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lcsz;

.field public static final sSessionStarting:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field public final b:Lazw;

.field public final c:Landroid/os/Handler;

.field public d:Lawo;

.field public e:Landroid/util/Size;

.field public f:Z

.field public final g:Lj$/util/concurrent/ConcurrentHashMap;

.field final h:Lcqk;

.field public final i:Lbah;

.field public final j:Landroid/content/Context;

.field public final k:Lbfe;

.field public final l:Lazi;

.field public final m:Lj$/util/Optional;

.field private final n:Lbbm;

.field private final o:Ldhq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/auto/aareceiver/service/AndroidAutoHeadunitProjectionHandler"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Lazy;->a:Lcsz;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lazy;->sSessionStarting:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lbah;Lbbm;Lbfe;Lazi;Ldhq;Lj$/util/Optional;[B[B[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p8, Lazw;

    invoke-direct {p8}, Lazw;-><init>()V

    iput-object p8, p0, Lazy;->b:Lazw;

    new-instance p8, Landroid/os/Handler;

    invoke-direct {p8}, Landroid/os/Handler;-><init>()V

    iput-object p8, p0, Lazy;->c:Landroid/os/Handler;

    const/4 p8, 0x0

    iput-boolean p8, p0, Lazy;->f:Z

    .line 2
    new-instance p8, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {p8}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p8, p0, Lazy;->g:Lj$/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Lazy;->j:Landroid/content/Context;

    iput-object p2, p0, Lazy;->i:Lbah;

    iput-object p3, p0, Lazy;->n:Lbbm;

    iput-object p4, p0, Lazy;->k:Lbfe;

    .line 3
    invoke-static {}, Lcqk;->e()Lcqi;

    move-result-object p1

    .line 4
    sget-object p2, Lckb;->a:Lckb;

    new-instance p3, Lazx;

    sget-object p8, Lckb;->a:Lckb;

    invoke-direct {p3, p8, p0}, Lazx;-><init>(Lckb;Lazy;)V

    invoke-virtual {p1, p2, p3}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p4}, Lbfe;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lckb;->b:Lckb;

    new-instance p3, Lazx;

    sget-object p4, Lckb;->b:Lckb;

    .line 6
    invoke-direct {p3, p4, p0}, Lazx;-><init>(Lckb;Lazy;)V

    invoke-virtual {p1, p2, p3}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcqi;->c()Lcqk;

    move-result-object p1

    iput-object p1, p0, Lazy;->h:Lcqk;

    iput-object p5, p0, Lazy;->l:Lazi;

    iput-object p6, p0, Lazy;->o:Ldhq;

    iput-object p7, p0, Lazy;->m:Lj$/util/Optional;

    return-void
.end method


# virtual methods
.method public final a(Lckb;II)D
    .locals 4

    .line 1
    iget-object v0, p0, Lazy;->i:Lbah;

    iget-object v0, v0, Lbah;->h:Lbbl;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-eqz v0, :cond_0

    iget-object v3, v0, Lbbl;->q:Lcqk;

    invoke-virtual {v3, p1}, Lcqk;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, v0, Lbbl;->q:Lcqk;

    .line 2
    invoke-virtual {v0, p1}, Lcqk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 3
    invoke-static {p1, p2, p3}, Lbhc;->a(Ljava/util/List;II)D

    move-result-wide p1

    return-wide p1

    :cond_0
    return-wide v1
.end method

.method final b(Lckb;)Lj$/util/Optional;
    .locals 1

    .line 1
    iget-object v0, p0, Lazy;->g:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbaw;

    invoke-static {p1}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lckb;Lbaw;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lazy;->g:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final d(Landroid/content/Context;Lawp;Lawo;IIZ)V
    .locals 27

    .line 1
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v0, p4

    move/from16 v7, p5

    move/from16 v6, p6

    const-string v5, "ProjectionSession.java"

    const-string v4, "openTransport"

    const-string v13, "com/google/android/apps/auto/aareceiver/session/ProjectionSession"

    const-string v15, "AHU.TRANSPORT_FACTORY"

    const-string v3, "AndroidAutoHeadunitProjectionHandler.java"

    const-string v8, "init"

    const-string v9, "com/google/android/apps/auto/aareceiver/service/AndroidAutoHeadunitProjectionHandler"

    if-lez v0, :cond_d

    if-gtz v7, :cond_0

    goto/16 :goto_5

    .line 3
    :cond_0
    iget-object v10, v1, Lazy;->o:Ldhq;

    .line 4
    invoke-virtual {v10}, Ldhq;->d()Z

    move-result v10

    if-nez v10, :cond_2

    sget-object v0, Lazy;->a:Lcsz;

    invoke-virtual {v0}, Lcsv;->b()Lctq;

    move-result-object v0

    const/16 v2, 0x91

    .line 5
    invoke-interface {v0, v9, v8, v2, v3}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v2, "Missing permissions"

    invoke-interface {v0, v2}, Lcsx;->n(Ljava/lang/String;)V

    iget-object v0, v1, Lazy;->g:Lj$/util/concurrent/ConcurrentHashMap;

    .line 6
    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbaw;

    new-instance v3, Ljava/lang/IllegalStateException;

    .line 7
    const-string v4, "Necessary permissions not granted"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lbaw;->g(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    iget-object v10, v1, Lazy;->i:Lbah;

    iget-object v10, v10, Lbah;->h:Lbbl;

    if-nez v10, :cond_3

    sget-object v10, Lazy;->sSessionStarting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v10

    if-nez v10, :cond_4

    :cond_3
    const-string v10, "AATweaks"

    const-string v11, "session gate: blocked duplicate init"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/achour/tweaks/V5;->logGateBlock()V

    return-void

    :cond_4
    move-object/from16 v14, p3

    iput-object v14, v1, Lazy;->d:Lawo;

    .line 8
    new-instance v3, Landroid/util/Size;

    invoke-direct {v3, v0, v7}, Landroid/util/Size;-><init>(II)V

    iput-object v3, v1, Lazy;->e:Landroid/util/Size;

    iget-object v12, v1, Lazy;->n:Lbbm;

    iget-object v9, v1, Lazy;->h:Lcqk;

    move-object v8, v9

    new-instance v11, Lbbl;

    move-object v3, v11

    .line 9
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v12, Lbbm;->a:Ldny;

    check-cast v9, Ldhr;

    .line 10
    invoke-virtual {v9}, Ldhr;->b()Landroid/content/Context;

    move-result-object v9

    iget-object v10, v12, Lbbm;->b:Ldny;

    .line 9
    invoke-interface {v10}, Ldny;->a()Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v16, v10

    check-cast v16, Landroid/car/Car;

    move-object/from16 v10, v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v22, v4

    iget-object v4, v12, Lbbm;->c:Ldny;

    invoke-interface {v4}, Ldny;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbah;

    move-object v2, v11

    move-object v11, v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v12, Lbbm;->d:Ldny;

    invoke-interface {v4}, Ldny;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbby;

    move-object/from16 v23, v5

    move-object v5, v12

    move-object v12, v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v5, Lbbm;->e:Ldny;

    invoke-interface {v4}, Ldny;->a()Ljava/lang/Object;

    move-result-object v4

    iget-object v6, v5, Lbbm;->f:Ldny;

    invoke-interface {v6}, Ldny;->a()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lawx;

    move-object v14, v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v5, Lbbm;->g:Ldny;

    invoke-interface {v6}, Ldny;->a()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lawt;

    move-object v0, v15

    move-object v15, v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v5, Lbbm;->h:Ldny;

    invoke-interface {v6}, Ldny;->a()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laxc;

    move-object/from16 v16, v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v5, Lbbm;->i:Ldny;

    invoke-interface {v6}, Ldny;->a()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laxf;

    move-object/from16 v17, v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v5, Lbbm;->j:Ldny;

    invoke-interface {v6}, Ldny;->a()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lbbs;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v5, Lbbm;->k:Ldny;

    invoke-interface {v6}, Ldny;->a()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lbbu;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v5, Lbbm;->l:Ldny;

    invoke-interface {v6}, Ldny;->a()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lbbt;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v5, Lbbm;->m:Ldny;

    check-cast v6, Lbff;

    .line 11
    invoke-virtual {v6}, Lbff;->b()Lbfe;

    move-result-object v18

    iget-object v6, v5, Lbbm;->n:Ldny;

    check-cast v6, Lbfd;

    .line 12
    invoke-virtual {v6}, Lbfd;->b()Lbfc;

    move-result-object v19

    iget-object v6, v5, Lbbm;->o:Ldny;

    .line 9
    invoke-interface {v6}, Ldny;->a()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    iget-object v5, v5, Lbbm;->p:Ldny;

    invoke-interface {v5}, Ldny;->a()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbde;

    move-object/from16 v21, v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v4, Lati;

    move-object v6, v13

    move-object v13, v4

    move-object/from16 v5, v22

    move-object/from16 v4, p2

    move-object/from16 v24, v5

    move-object/from16 v25, v23

    move-object/from16 v5, p3

    move-object/from16 v26, v6

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v3 .. v21}, Lbbl;-><init>(Lawp;Lawo;IILcqk;Landroid/content/Context;Landroid/car/Car;Lbah;Lbby;Lati;Lawx;Lawt;Laxc;Laxf;Lbfe;Lbfc;ZLbde;)V

    iget-object v3, v1, Lazy;->b:Lazw;

    iget-wide v4, v3, Lazw;->g:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v3, Lazw;->g:J

    const/4 v3, 0x0

    iput-boolean v3, v1, Lazy;->f:Z

    iget-object v3, v2, Lbbl;->F:Lzn;

    new-instance v4, Lcom/google/android/apps/auto/aareceiver/service/AndroidAutoHeadunitProjectionHandler$1;

    move/from16 v5, p6

    move-object v6, v2

    move-object/from16 v2, p1

    invoke-direct {v4, v1, v6, v5, v2}, Lcom/google/android/apps/auto/aareceiver/service/AndroidAutoHeadunitProjectionHandler$1;-><init>(Lazy;Lbbl;ZLandroid/content/Context;)V

    .line 13
    invoke-virtual {v3, v4}, Lzn;->b(Lzp;)V

    iget-object v3, v6, Lbbl;->w:Lbde;

    .line 14
    sget-object v4, Lbdf;->e:Lbdf;

    invoke-virtual {v3, v4}, Lbde;->a(Lbdf;)V

    .line 15
    :try_start_0
    invoke-static {}, Ldas;->e()Ldas;

    move-result-object v3

    new-instance v4, Lbbd;

    .line 16
    invoke-direct {v4, v3}, Lbbd;-><init>(Ldas;)V

    iget-object v7, v6, Lbbl;->i:Landroid/os/Handler;

    const-wide/16 v8, 0x61a8

    .line 17
    invoke-virtual {v7, v4, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v7, Lbbj;

    invoke-direct {v7, v6, v4, v3}, Lbbj;-><init>(Lbbl;Ljava/lang/Runnable;Ldas;)V

    iget-object v8, v6, Lbbl;->f:Landroid/content/Context;

    iget-object v9, v6, Lbbl;->h:Lawo;

    .line 18
    invoke-static {v8, v9}, Lbeh;->a(Landroid/content/Context;Lawo;)Landroid/hardware/usb/UsbDevice;

    move-result-object v8

    iget-object v9, v6, Lbbl;->g:Lawp;

    sget-object v10, Lawp;->b:Lawp;

    if-ne v9, v10, :cond_6

    if-eqz v8, :cond_6

    iget-object v9, v1, Lazy;->i:Lbah;

    iget-object v9, v9, Lbah;->h:Lbbl;

    if-eqz v9, :cond_5

    iget-object v9, v9, Lbbl;->g:Lawp;

    sget-object v10, Lawp;->a:Lawp;

    if-ne v9, v10, :cond_5

    const-string v9, "AATweaks"

    const-string v10, "session gate: skipping USB reset (USB session active)"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    iget-object v9, v6, Lbbl;->f:Landroid/content/Context;

    .line 19
    invoke-static {v9, v8}, Lbeh;->e(Landroid/content/Context;Landroid/hardware/usb/UsbDevice;)Z

    :cond_6
    :goto_1
    iget-object v9, v6, Lbbl;->c:Lcmj;

    iget-object v10, v6, Lbbl;->g:Lawp;

    sget-object v11, Lawp;->a:Lawp;

    const/4 v12, 0x0

    if-eq v10, v11, :cond_7

    move-object v8, v12

    :cond_7
    const-string v10, "Starting..."

    .line 20
    invoke-static {v0, v10}, Lcjz;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, v9, Lcmj;->c:Ljava/util/List;

    .line 21
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcmi;

    .line 22
    invoke-interface {v10, v8, v7}, Lcmi;->b(Landroid/os/Parcelable;Lbbj;)Lcmh;

    move-result-object v10

    if-eqz v10, :cond_8

    const-string v7, "Start sequence finished."

    .line 23
    invoke-static {v0, v7}, Lcjz;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v12, v10

    goto :goto_2

    .line 24
    :cond_9
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    const-string v8, "Unable to handle "

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcjz;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    :goto_2
    if-nez v12, :cond_a

    sget-object v0, Lbbl;->a:Lcsz;

    invoke-virtual {v0}, Lcsv;->c()Lctq;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v3, 0x24e

    .line 25
    move-object/from16 v8, v24

    move-object/from16 v9, v25

    move-object/from16 v7, v26

    :try_start_1
    invoke-interface {v0, v7, v8, v3, v9}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v3, "Factory Handle is null, openTransport failed"

    invoke-interface {v0, v3}, Lcsx;->n(Ljava/lang/String;)V

    iget-object v0, v6, Lbbl;->i:Landroid/os/Handler;

    .line 26
    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    new-instance v0, Ljava/lang/NullPointerException;

    .line 27
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v0}, Lhh;->i(Ljava/lang/Throwable;)Ldag;

    move-result-object v3

    goto :goto_4

    .line 40
    :cond_a
    move-object/from16 v8, v24

    move-object/from16 v9, v25

    move-object/from16 v7, v26

    new-instance v0, Lbbe;

    invoke-direct {v0, v3, v12}, Lbbe;-><init>(Ldas;Lcmh;)V

    .line 28
    sget-object v4, Lczj;->a:Lczj;

    .line 29
    invoke-virtual {v3, v0, v4}, Ldas;->aW(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 24
    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v8, v24

    move-object/from16 v9, v25

    move-object/from16 v7, v26

    :goto_3
    sget-object v3, Lbbl;->a:Lcsz;

    invoke-virtual {v3}, Lcsv;->b()Lctq;

    move-result-object v3

    .line 30
    invoke-interface {v3, v0}, Lcsx;->g(Ljava/lang/Throwable;)Lctq;

    move-result-object v3

    check-cast v3, Lcsx;

    const/16 v4, 0x261

    invoke-interface {v3, v7, v8, v4, v9}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v3

    check-cast v3, Lcsx;

    const-string v4, "Error opening transport"

    invoke-interface {v3, v4}, Lcsx;->n(Ljava/lang/String;)V

    .line 31
    invoke-static {v0}, Lhh;->i(Ljava/lang/Throwable;)Ldag;

    move-result-object v3

    .line 27
    :goto_4
    new-instance v0, Lbbb;

    invoke-direct {v0, v6}, Lbbb;-><init>(Lbbl;)V

    iget-object v4, v6, Lbbl;->i:Landroid/os/Handler;

    new-instance v7, Lbld;

    const/4 v8, 0x1

    invoke-direct {v7, v4, v8}, Lbld;-><init>(Landroid/os/Handler;I)V

    .line 32
    invoke-static {v3, v0, v7}, Lcyt;->o(Ldag;Lcny;Ljava/util/concurrent/Executor;)Ldag;

    move-result-object v0

    .line 33
    invoke-static {}, Ldkm;->c()Z

    move-result v3

    if-eqz v3, :cond_b

    new-instance v3, Lbbk;

    invoke-direct {v3, v6}, Lbbk;-><init>(Lbbl;)V

    .line 34
    sget-object v4, Lczj;->a:Lczj;

    .line 35
    invoke-static {v0, v3, v4}, Lhh;->p(Ldag;Lczv;Ljava/util/concurrent/Executor;)V

    :cond_b
    new-instance v3, Lazv;

    invoke-direct {v3, v1}, Lazv;-><init>(Lazy;)V

    .line 36
    sget-object v4, Lczj;->a:Lczj;

    .line 37
    invoke-static {v0, v3, v4}, Lhh;->p(Ldag;Lczv;Ljava/util/concurrent/Executor;)V

    sget-object v3, Lawp;->b:Lawp;

    .line 38
    move-object/from16 v4, p2

    invoke-virtual {v3, v4}, Lawp;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 39
    invoke-interface {v0}, Ldag;->isDone()Z

    move-result v3

    if-nez v3, :cond_c

    if-nez v5, :cond_c

    .line 40
    invoke-static {v2, v0}, Lcom/google/android/apps/auto/aareceiver/ui/WaitingForConnectionActivity;->b(Landroid/content/Context;Ldag;)V

    :cond_c
    return-void

    .line 1
    :cond_d
    :goto_5
    sget-object v0, Lazy;->a:Lcsz;

    invoke-virtual {v0}, Lcsv;->b()Lctq;

    move-result-object v0

    const/16 v2, 0x88

    invoke-interface {v0, v9, v8, v2, v3}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v2, "Please provide valid display size: w=%d, h=%d"

    move/from16 v3, p4

    invoke-interface {v0, v2, v3, v7}, Lcsx;->q(Ljava/lang/String;II)V

    iget-object v0, v1, Lazy;->g:Lj$/util/concurrent/ConcurrentHashMap;

    .line 2
    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbaw;

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x32

    .line 3
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Invalid display size: w="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", h="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Lbaw;->g(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_e
    return-void
.end method

.method public final e(Lckb;Landroid/view/KeyEvent;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lazy;->i:Lbah;

    iget-object v0, v0, Lbah;->h:Lbbl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lbbl;->c(Lckb;Landroid/view/KeyEvent;)V

    iget-object p1, p0, Lazy;->b:Lazw;

    iget-wide v0, p1, Lazw;->c:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p1, Lazw;->c:J

    :cond_0
    return-void
.end method

.method public final f(Lckb;Lbaw;)V
    .locals 1

    .line 1
    invoke-static {}, Ldkj;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lazy;->g:Lj$/util/concurrent/ConcurrentHashMap;

    .line 2
    invoke-virtual {v0, p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object p2, p0, Lazy;->g:Lj$/util/concurrent/ConcurrentHashMap;

    .line 3
    invoke-virtual {p2, p1}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final g(Lckb;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lazy;->i:Lbah;

    iget-object v0, v0, Lbah;->h:Lbbl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lbbl;->d(Lckb;I)V

    iget-object p1, p0, Lazy;->b:Lazw;

    iput p2, p1, Lazw;->d:I

    :cond_0
    return-void
.end method
