.class public final Lbeq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;)V
    .locals 0

    iput-object p1, p0, Lbeq;->a:Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 20

    .line 1
    move-object/from16 v1, p0

    move-object/from16 v0, p2

    iget-object v2, v1, Lbeq;->a:Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;

    iget-object v2, v2, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->w:Lbgz;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    .line 2
    new-array v10, v9, [Landroid/view/MotionEvent$PointerProperties;

    .line 3
    new-array v11, v9, [Landroid/view/MotionEvent$PointerCoords;

    :goto_0
    if-ge v3, v9, :cond_1

    new-instance v4, Landroid/view/MotionEvent$PointerProperties;

    .line 4
    invoke-direct {v4}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v4, v10, v3

    .line 5
    invoke-virtual {v0, v3, v4}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    new-instance v4, Landroid/view/MotionEvent$PointerCoords;

    .line 6
    invoke-direct {v4}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v4, v11, v3

    .line 7
    invoke-virtual {v0, v3, v4}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 8
    aget-object v4, v11, v3

    iget v5, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    float-to-double v5, v5

    iget-wide v7, v2, Lbgz;->m:D

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v7

    double-to-float v5, v5

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 9
    aget-object v4, v11, v3

    iget v5, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    float-to-double v5, v5

    iget-wide v7, v2, Lbgz;->m:D

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v7

    double-to-float v5, v5

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 10
    aget-object v4, v11, v3

    iget-object v5, v2, Lbgz;->f:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    aget-object v6, v11, v3

    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 11
    aget-object v4, v11, v3

    iget-object v5, v2, Lbgz;->f:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    aget-object v6, v11, v3

    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    sget-object v4, Lcsz;->b:Lcsy;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 12
    invoke-interface {v4, v5}, Lcsx;->y(Ljava/util/concurrent/TimeUnit;)V

    aget-object v4, v11, v3

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 13
    aget-object v4, v11, v3

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    .line 15
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    .line 16
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    .line 17
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v12

    .line 18
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v13

    .line 19
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v14

    .line 20
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v15

    .line 21
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v16

    .line 22
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v17

    .line 23
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v18

    .line 24
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getFlags()I

    move-result v19

    .line 25
    invoke-static/range {v4 .. v19}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v2

    iget-object v3, v1, Lbeq;->a:Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;

    iget-object v3, v3, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->q:Lj$/util/Optional;

    .line 26
    new-instance v4, Lbep;

    invoke-direct {v4, v0}, Lbep;-><init>(Landroid/view/MotionEvent;)V

    invoke-virtual {v3, v4}, Lj$/util/Optional;->ifPresent(Lj$/util/function/Consumer;)V

    iget-object v0, v1, Lbeq;->a:Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;

    iget-object v0, v0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->v:Lazy;

    .line 27
    sget-object v3, Lckb;->a:Lckb;

    iget-object v4, v0, Lazy;->i:Lbah;

    iget-object v4, v4, Lbah;->h:Lbbl;

    if-eqz v4, :cond_3

    iget-object v4, v4, Lbbl;->v:Laxl;

    sget-object v5, Lcsz;->b:Lcsy;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 28
    invoke-interface {v5, v6}, Lcsx;->y(Ljava/util/concurrent/TimeUnit;)V

    .line 29
    monitor-enter v4

    :try_start_0
    iget-boolean v5, v4, Laxl;->f:Z

    if-nez v5, :cond_2

    sget-object v3, Laxl;->a:Lcsz;

    invoke-virtual {v3}, Lcsv;->c()Lctq;

    move-result-object v3

    const-string v5, "com/google/android/apps/auto/aareceiver/input/InputManager"

    const-string v6, "onTouchEvent"

    const/16 v7, 0x119

    const-string v8, "InputManager.java"

    .line 30
    invoke-interface {v3, v5, v6, v7, v8}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v3

    check-cast v3, Lcsx;

    const-string v5, "onTouchEvent called on uninitialized object"

    invoke-interface {v3, v5}, Lcsx;->n(Ljava/lang/String;)V

    .line 31
    monitor-exit v4

    goto :goto_1

    .line 32
    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, v4, Laxl;->d:Lcqk;

    .line 33
    invoke-virtual {v4, v3}, Lcqk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/projection/protocol/InputSource;

    invoke-virtual {v3, v2}, Lcom/google/android/projection/protocol/InputSource;->e(Landroid/view/MotionEvent;)V

    .line 31
    :goto_1
    iget-object v0, v0, Lazy;->b:Lazw;

    iget-wide v3, v0, Lazw;->b:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, v0, Lazw;->b:J

    goto :goto_2

    .line 33
    :catchall_0
    move-exception v0

    .line 32
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 34
    :cond_3
    :goto_2
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x1

    return v0
.end method
