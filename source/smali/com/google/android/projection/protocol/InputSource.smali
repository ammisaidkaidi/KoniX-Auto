.class public Lcom/google/android/projection/protocol/InputSource;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/google/android/projection/protocol/InputSourceCallbacks;
.implements Lclk;


# instance fields
.field private mNativeInputSource:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native nativeInit(IJ)I
.end method

.method private native nativeSendKeyEvent(JIZI)I
.end method

.method private native nativeSendTouchEvent(J[I[I[III)I
.end method

.method private native nativeShutdown()V
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/projection/protocol/InputSource;->mNativeInputSource:J

    return-wide v0
.end method

.method public final b()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/protocol/InputSource;->nativeShutdown()V

    return-void
.end method

.method public final c(IJ)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/projection/protocol/InputSource;->nativeInit(IJ)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final d(Landroid/view/KeyEvent;)V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    .line 2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v4, 0x1

    goto :goto_0

    .line 4
    :cond_0
    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/projection/protocol/InputSource;->nativeSendKeyEvent(JIZI)I

    return-void
.end method

.method public final declared-synchronized e(Landroid/view/MotionEvent;)V
    .locals 9

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_1

    const/4 v0, 0x5

    if-eq v6, v0, :cond_1

    const/4 v0, 0x2

    if-eq v6, v0, :cond_1

    const/4 v0, 0x6

    if-eq v6, v0, :cond_1

    const/4 v0, 0x1

    if-ne v6, v0, :cond_0

    goto :goto_1

    .line 11
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 3
    :cond_1
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 4
    new-array v4, v0, [I

    .line 5
    new-array v5, v0, [I

    .line 6
    new-array v3, v0, [I

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v0, :cond_2

    .line 7
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    float-to-int v8, v8

    aput v8, v4, v7

    .line 8
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v8, v8

    aput v8, v5, v7

    .line 9
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    aput v8, v3, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 10
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    .line 11
    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/projection/protocol/InputSource;->nativeSendTouchEvent(J[I[I[III)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 0
    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public native nativeRegisterKeyCodes([I)V
.end method

.method public native nativeRegisterTouchScreen(III)V
.end method

.method public native nativeSendKeyLongEvent(JII)I
.end method

.method public native nativeSetDisplayId(I)V
.end method

.method public final onInputFeedback(I)V
    .locals 0

    return-void
.end method
