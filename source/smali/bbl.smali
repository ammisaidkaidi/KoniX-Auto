.class public final Lbbl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lzq;


# static fields
.field public static final a:Lcsz;


# instance fields
.field public final A:Ldas;

.field public B:Z

.field public C:Z

.field public final D:Landroid/content/ServiceConnection;

.field final E:Lbbh;

.field public final F:Lzn;

.field public G:I

.field public H:I

.field final I:Lbbh;

.field private final J:Lbbp;

.field private final K:Lclp;

.field private final L:Lbbh;

.field public b:Lcom/google/android/apps/auto/aareceiver/media/MediaBrowserService;

.field public final c:Lcmj;

.field public final d:Lbah;

.field public final e:Lbby;

.field public final f:Landroid/content/Context;

.field public final g:Lawp;

.field public h:Lawo;

.field public final i:Landroid/os/Handler;

.field public final j:Lcom/google/android/projection/protocol/GalReceiver;

.field public final k:Laxs;

.field public final l:Ljava/util/Map;

.field public final m:Ljava/util/Set;

.field public final n:Ljava/util/Set;

.field public final o:Ljava/util/Set;

.field public final p:Lcqk;

.field public final q:Lcqk;

.field public final r:Landroid/view/Display;

.field public s:Z

.field public final t:Laxf;

.field public final u:Laxc;

.field public final v:Laxl;

.field public final w:Lbde;

.field public final x:Latu;

.field public final y:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public z:Lcly;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/auto/aareceiver/session/ProjectionSession"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Lbbl;->a:Lcsz;

    return-void
.end method

.method public constructor <init>(Lawp;Lawo;IILcqk;Landroid/content/Context;Landroid/car/Car;Lbah;Lbby;Lati;Lawx;Lawt;Laxc;Laxf;Lbfe;Lbfc;ZLbde;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v13, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v13, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v13, v0, Lbbl;->i:Landroid/os/Handler;

    new-instance v9, Lzn;

    .line 2
    invoke-direct {v9, v0}, Lzn;-><init>(Lzq;)V

    iput-object v9, v0, Lbbl;->F:Lzn;

    const/4 v15, 0x0

    iput-boolean v15, v0, Lbbl;->s:Z

    new-instance v9, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    invoke-direct {v9, v15}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v9, v0, Lbbl;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    invoke-static {}, Ldas;->e()Ldas;

    move-result-object v9

    iput-object v9, v0, Lbbl;->A:Ldas;

    iput-boolean v15, v0, Lbbl;->B:Z

    iput-boolean v15, v0, Lbbl;->C:Z

    new-instance v10, Lbba;

    invoke-direct {v10, v0}, Lbba;-><init>(Lbbl;)V

    iput-object v10, v0, Lbbl;->K:Lclp;

    new-instance v11, Lbbh;

    const/4 v14, 0x0

    invoke-direct {v11, v0, v14}, Lbbh;-><init>(Lbbl;[B)V

    iput-object v11, v0, Lbbl;->L:Lbbh;

    new-instance v9, Lbbh;

    invoke-direct {v9, v0}, Lbbh;-><init>(Lbbl;)V

    iput-object v9, v0, Lbbl;->I:Lbbh;

    new-instance v12, Lbbh;

    invoke-direct {v12, v0}, Lbbh;-><init>(Lbbl;)V

    iput-object v12, v0, Lbbl;->E:Lbbh;

    new-instance v14, Lbbi;

    invoke-direct {v14, v0}, Lbbi;-><init>(Lbbl;)V

    iput-object v14, v0, Lbbl;->D:Landroid/content/ServiceConnection;

    iput-object v1, v0, Lbbl;->g:Lawp;

    iput-object v2, v0, Lbbl;->h:Lawo;

    iput-object v6, v0, Lbbl;->f:Landroid/content/Context;

    move-object/from16 v14, p8

    iput-object v14, v0, Lbbl;->d:Lbah;

    move-object/from16 v14, p9

    iput-object v14, v0, Lbbl;->e:Lbby;

    move-object/from16 v14, p14

    iput-object v14, v0, Lbbl;->t:Laxf;

    move-object/from16 v14, p13

    iput-object v14, v0, Lbbl;->u:Laxc;

    move-object/from16 v14, p18

    iput-object v14, v0, Lbbl;->w:Lbde;

    .line 5
    invoke-virtual/range {p12 .. p12}, Lawt;->a()Lcom/google/android/projection/protocol/GalReceiver$CarInfo;

    move-result-object v14

    iget-object v15, v8, Lawx;->a:Ljava/util/Map;

    .line 6
    const-string v5, "root_certificate"

    invoke-interface {v15, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8, v5}, Lawx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iget-object v5, v8, Lawx;->a:Ljava/util/Map;

    .line 7
    const-string v6, "certificate"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    const-string v6, "c1"

    invoke-virtual {v8, v6, v5}, Lawx;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v8, Lawx;->a:Ljava/util/Map;

    .line 9
    const-string v3, "key"

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    const-string v6, "p1"

    invoke-virtual {v8, v6, v3}, Lawx;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 11
    new-instance v6, Lcom/google/android/projection/protocol/GalReceiver;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v8, v6

    move-object/from16 v16, v5

    move-object/from16 v17, v3

    invoke-direct/range {v8 .. v19}, Lcom/google/android/projection/protocol/GalReceiver;-><init>(Lbbh;Lclp;Lbbh;Lbbh;Landroid/os/Handler;Lcom/google/android/projection/protocol/GalReceiver$CarInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    iput-object v6, v0, Lbbl;->j:Lcom/google/android/projection/protocol/GalReceiver;

    iput-object v0, v7, Lati;->b:Lbbl;

    .line 12
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v6, v7, Lati;->e:Lcom/google/android/projection/protocol/GalReceiver;

    iput-object v2, v7, Lati;->d:Lawo;

    iput-object v1, v7, Lati;->c:Lawp;

    .line 13
    new-instance v1, Landroid/util/Size;

    move/from16 v2, p3

    invoke-direct {v1, v2, v4}, Landroid/util/Size;-><init>(II)V

    iput-object v1, v7, Lati;->f:Landroid/util/Size;

    iget-object v1, v7, Lati;->b:Lbbl;

    const-class v3, Lbbl;

    .line 14
    invoke-static {v1, v3}, Ldpx;->l(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v1, v7, Lati;->c:Lawp;

    const-class v3, Lawp;

    .line 15
    invoke-static {v1, v3}, Ldpx;->l(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v1, v7, Lati;->d:Lawo;

    const-class v3, Lawo;

    .line 16
    invoke-static {v1, v3}, Ldpx;->l(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v1, v7, Lati;->e:Lcom/google/android/projection/protocol/GalReceiver;

    const-class v3, Lcom/google/android/projection/protocol/GalReceiver;

    .line 17
    invoke-static {v1, v3}, Ldpx;->l(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v1, v7, Lati;->f:Landroid/util/Size;

    const-class v3, Landroid/util/Size;

    .line 18
    invoke-static {v1, v3}, Ldpx;->l(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v1, Lasw;

    iget-object v3, v7, Lati;->a:Latj;

    iget-object v5, v7, Lati;->b:Lbbl;

    iget-object v6, v7, Lati;->d:Lawo;

    iget-object v7, v7, Lati;->e:Lcom/google/android/projection/protocol/GalReceiver;

    .line 19
    invoke-direct {v1, v3, v5, v6, v7}, Lasw;-><init>(Latj;Lbbl;Lawo;Lcom/google/android/projection/protocol/GalReceiver;)V

    iput-object v1, v0, Lbbl;->J:Lbbp;

    const-class v3, Lbbq;

    .line 20
    invoke-static {v1, v3}, Ldpx;->s(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbbq;

    .line 21
    invoke-interface {v1}, Lbbq;->d()Ljava/util/Map;

    move-result-object v3

    iput-object v3, v0, Lbbl;->l:Ljava/util/Map;

    .line 22
    invoke-interface {v1}, Lbbq;->b()Laxs;

    move-result-object v3

    iput-object v3, v0, Lbbl;->k:Laxs;

    .line 23
    invoke-interface {v1}, Lbbq;->e()Ljava/util/Set;

    move-result-object v3

    iput-object v3, v0, Lbbl;->m:Ljava/util/Set;

    .line 24
    invoke-interface {v1}, Lbbq;->f()Ljava/util/Set;

    move-result-object v3

    iput-object v3, v0, Lbbl;->n:Ljava/util/Set;

    .line 25
    invoke-interface {v1}, Lbbq;->c()Lcmj;

    move-result-object v3

    iput-object v3, v0, Lbbl;->c:Lcmj;

    .line 26
    invoke-interface {v1}, Lbbq;->g()Ljava/util/Set;

    move-result-object v3

    iput-object v3, v0, Lbbl;->o:Ljava/util/Set;

    .line 27
    const-string v3, "projection"

    move-object/from16 v5, p7

    invoke-virtual {v5, v3}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/car/CarProjectionManager;

    .line 28
    new-instance v5, Laxl;

    move-object/from16 p7, v5

    move-object/from16 p8, v3

    move-object/from16 p9, p15

    move/from16 p10, p3

    move/from16 p11, p4

    move/from16 p12, p17

    invoke-direct/range {p7 .. p12}, Laxl;-><init>(Landroid/car/CarProjectionManager;Lbfe;IIZ)V

    iput-object v5, v0, Lbbl;->v:Laxl;

    .line 29
    invoke-interface {v1}, Lbbq;->a()Latu;

    move-result-object v1

    iput-object v1, v0, Lbbl;->x:Latu;

    const-class v1, Landroid/view/WindowManager;

    .line 30
    move-object/from16 v3, p6

    invoke-virtual {v3, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 31
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 32
    invoke-static {v2, v4, v1}, Lbhc;->b(IILandroid/view/Display;)Ljava/util/List;

    move-result-object v1

    .line 33
    sget-object v2, Lckb;->a:Lckb;

    .line 34
    move-object/from16 v3, p5

    invoke-virtual {v3, v2}, Lcqk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbzv;

    .line 35
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbhc;

    iget-object v5, v5, Lbhc;->a:Lckz;

    iget v5, v5, Lckz;->h:I

    .line 36
    invoke-static {v2, v5}, Lbbu;->a(Lbzv;I)Lcom/google/android/projection/protocol/VideoSink;

    move-result-object v2

    .line 37
    invoke-virtual/range {p15 .. p15}, Lbfe;->a()Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v3, Lckb;->a:Lckb;

    .line 38
    invoke-static {v3, v2}, Lcqk;->g(Ljava/lang/Object;Ljava/lang/Object;)Lcqk;

    move-result-object v2

    iput-object v2, v0, Lbbl;->p:Lcqk;

    sget-object v2, Lckb;->a:Lckb;

    .line 39
    invoke-static {v2, v1}, Lcqk;->g(Ljava/lang/Object;Ljava/lang/Object;)Lcqk;

    move-result-object v1

    iput-object v1, v0, Lbbl;->q:Lcqk;

    const/4 v1, 0x0

    iput-object v1, v0, Lbbl;->r:Landroid/view/Display;

    return-void

    .line 40
    :cond_0
    invoke-virtual/range {p16 .. p16}, Lbfc;->a()Lj$/util/Optional;

    move-result-object v5

    invoke-virtual {v5}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/Display;

    iput-object v5, v0, Lbbl;->r:Landroid/view/Display;

    .line 41
    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v7

    .line 42
    invoke-static {v6, v7, v5}, Lbhc;->b(IILandroid/view/Display;)Ljava/util/List;

    move-result-object v5

    sget-object v6, Lckb;->b:Lckb;

    .line 43
    invoke-virtual {v3, v6}, Lcqk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbzv;

    .line 44
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbhc;

    iget-object v4, v4, Lbhc;->a:Lckz;

    iget v4, v4, Lckz;->h:I

    .line 45
    invoke-static {v3, v4}, Lbbu;->a(Lbzv;I)Lcom/google/android/projection/protocol/VideoSink;

    move-result-object v3

    sget-object v4, Lckb;->a:Lckb;

    sget-object v6, Lckb;->b:Lckb;

    .line 46
    invoke-static {v4, v2, v6, v3}, Lcqk;->h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcqk;

    move-result-object v2

    iput-object v2, v0, Lbbl;->p:Lcqk;

    sget-object v2, Lckb;->a:Lckb;

    sget-object v3, Lckb;->b:Lckb;

    .line 47
    invoke-static {v2, v1, v3, v5}, Lcqk;->h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcqk;

    move-result-object v1

    iput-object v1, v0, Lbbl;->q:Lcqk;

    return-void
.end method


# virtual methods
.method public final C()Lzn;
    .locals 1

    iget-object v0, p0, Lbbl;->F:Lzn;

    return-object v0
.end method

.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbbl;->B:Z

    return-void
.end method

.method public final b(Lckb;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lbbl;->q:Lcqk;

    invoke-virtual {v2, v1}, Lcqk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbhc;

    iget-object v6, v3, Lbhc;->a:Lckz;

    iget-object v7, v0, Lbbl;->p:Lcqk;

    .line 3
    invoke-virtual {v7, v1}, Lcqk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/google/android/projection/protocol/VideoSink;

    iget-object v7, v8, Lcom/google/android/projection/protocol/VideoSink;->a:Ljava/util/List;

    .line 4
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v7, v6, Lckz;->b:I

    .line 5
    invoke-static {v7}, Lcky;->b(I)Lcky;

    move-result-object v7

    if-nez v7, :cond_0

    sget-object v7, Lcky;->a:Lcky;

    :cond_0
    iget v9, v7, Lcky;->j:I

    iget v7, v6, Lckz;->c:I

    invoke-static {v7}, Lbyl;->e(I)I

    move-result v7

    if-nez v7, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    if-eq v7, v5, :cond_2

    const/16 v7, 0x1e

    const/16 v10, 0x1e

    goto :goto_2

    .line 5
    :cond_2
    :goto_1
    const/16 v7, 0x3c

    const/16 v10, 0x3c

    :goto_2
    iget v11, v6, Lckz;->d:I

    iget v12, v6, Lckz;->e:I

    iget v13, v6, Lckz;->f:I

    iget v14, v6, Lckz;->j:I

    iget v15, v6, Lckz;->g:I

    iget v7, v6, Lckz;->a:I

    and-int/lit16 v5, v7, 0x80

    if-eqz v5, :cond_3

    iget v5, v6, Lckz;->i:I

    goto :goto_3

    .line 8
    :cond_3
    const/16 v5, 0x2710

    .line 5
    :goto_3
    and-int/lit16 v7, v7, 0x200

    if-eqz v7, :cond_5

    iget v4, v6, Lckz;->k:I

    invoke-static {v4}, Lbxx;->c(I)I

    move-result v4

    if-nez v4, :cond_4

    const/16 v17, 0x1

    goto :goto_4

    :cond_4
    move/from16 v17, v4

    goto :goto_4

    .line 8
    :cond_5
    const/16 v17, 0x3

    .line 5
    :goto_4
    iget-object v4, v6, Lckz;->l:Lckx;

    if-nez v4, :cond_6

    .line 6
    sget-object v4, Lckx;->f:Lckx;

    .line 7
    :cond_6
    invoke-virtual {v4}, Ldbv;->h()[B

    move-result-object v18

    .line 3
    move/from16 v16, v5

    invoke-virtual/range {v8 .. v18}, Lcom/google/android/projection/protocol/VideoSink;->nativeAddSupportedConfiguration(IIIIIIIII[B)V

    .line 8
    invoke-virtual/range {p1 .. p1}, Lckb;->name()Ljava/lang/String;

    iget v4, v6, Lckz;->b:I

    iget v4, v6, Lckz;->f:I

    iget v4, v6, Lckz;->c:I

    iget v4, v6, Lckz;->d:I

    iget v4, v6, Lckz;->e:I

    iget-wide v3, v3, Lbhc;->b:D

    goto/16 :goto_0

    :cond_7
    iget-object v2, v0, Lbbl;->p:Lcqk;

    .line 9
    invoke-virtual {v2, v1}, Lcqk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/projection/protocol/VideoSink;

    invoke-virtual {v2, v4}, Lcom/google/android/projection/protocol/VideoSink;->nativeSetCodecType(I)V

    iget-object v2, v0, Lbbl;->p:Lcqk;

    .line 10
    invoke-virtual {v2, v1}, Lcqk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/projection/protocol/VideoSink;

    .line 11
    sget-object v3, Lckb;->a:Lckb;

    if-ne v1, v3, :cond_8

    const/4 v5, 0x0

    goto :goto_5

    :cond_8
    const/4 v5, 0x1

    :goto_5
    iget v1, v1, Lckb;->d:I

    invoke-virtual {v2, v5, v1}, Lcom/google/android/projection/protocol/VideoSink;->nativeSetDisplayIdAndType(II)V

    return-void
.end method

.method public final c(Lckb;Landroid/view/KeyEvent;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lbbl;->v:Laxl;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, v0, Laxl;->f:Z

    if-nez v1, :cond_0

    sget-object p1, Laxl;->a:Lcsz;

    invoke-virtual {p1}, Lcsv;->c()Lctq;

    move-result-object p1

    const-string p2, "com/google/android/apps/auto/aareceiver/input/InputManager"

    const-string v1, "onKeyEvent"

    const/16 v2, 0x125

    const-string v3, "InputManager.java"

    .line 12
    invoke-interface {p1, p2, v1, v2, v3}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string p2, "onKeyEvent called on uninitialized object"

    invoke-interface {p1, p2}, Lcsx;->n(Ljava/lang/String;)V

    .line 13
    monitor-exit v0

    return-void

    .line 2
    :cond_0
    sget-object v1, Ldjc;->a:Ldjc;

    .line 3
    invoke-virtual {v1}, Ldjc;->b()Ldjd;

    move-result-object v1

    invoke-interface {v1}, Ldjd;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Laxl;->e:Z

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x7e

    if-eq v1, v2, :cond_1

    .line 5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x7f

    if-eq v1, v2, :cond_1

    .line 6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x56

    if-eq v1, v2, :cond_1

    .line 7
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x57

    if-eq v1, v2, :cond_1

    .line 8
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x58

    if-ne v1, v2, :cond_2

    .line 11
    :cond_1
    monitor-exit v0

    return-void

    .line 9
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v0, Laxl;->d:Lcqk;

    .line 10
    invoke-virtual {v0, p1}, Lcqk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/protocol/InputSource;

    invoke-virtual {p1, p2}, Lcom/google/android/projection/protocol/InputSource;->d(Landroid/view/KeyEvent;)V

    return-void

    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final d(Lckb;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lbbl;->p:Lcqk;

    invoke-virtual {v0, p1}, Lcqk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/protocol/VideoSink;

    iget-object v0, p1, Lcom/google/android/projection/protocol/VideoSink;->c:Lbzv;

    .line 2
    invoke-virtual {v0, p2}, Lbzv;->e(I)V

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/google/android/projection/protocol/VideoSink;->nativeSetVideoFocus(IZ)V

    return-void
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lbbl;->d:Lbah;

    iget-object v0, v0, Lbah;->h:Lbbl;

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Lbbl;->d:Lbah;

    invoke-virtual {v0}, Lbah;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final f()Ldag;
    .locals 2

    .line 1
    iget v0, p0, Lbbl;->H:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lbbl;->H:I

    iget-object v1, p0, Lbbl;->j:Lcom/google/android/projection/protocol/GalReceiver;

    invoke-virtual {v1, v0}, Lcom/google/android/projection/protocol/GalReceiver;->nativeSendByeByeRequest(I)V

    :cond_0
    iget-object v0, p0, Lbbl;->A:Ldas;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 10

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbbl;->h:Lawo;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lbbl;->g:Lawp;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lbbl;->z:Lcly;

    if-eqz v4, :cond_0

    .line 3
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, " stopReason: "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v4, ""

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x14

    add-int/2addr v5, v6

    add-int/2addr v5, v7

    add-int/2addr v5, v8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " { device: "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mode: "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
