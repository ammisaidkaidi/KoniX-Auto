.class public final Lbln;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final a:Lcom/google/android/gms/common/api/Status;

.field public static final b:Lcom/google/android/gms/common/api/Status;

.field public static final c:Ljava/lang/Object;

.field private static n:Lbln;


# instance fields
.field public d:J

.field public e:Z

.field public final f:Landroid/content/Context;

.field public final g:Lbjd;

.field public final h:Lbnf;

.field public final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final j:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final k:Ljava/util/Map;

.field public final l:Landroid/os/Handler;

.field public volatile m:Z

.field private o:Lbnr;

.field private final p:Ljava/util/Set;

.field private q:Lbny;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x4

    const-string v2, "Sign-out occurred while this API call was in progress."

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lbln;->a:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v2, "The user must be signed in to make this API call."

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lbln;->b:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lbln;->c:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lbjd;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lbln;->d:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbln;->e:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lbln;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lbln;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap;

    const/4 v3, 0x5

    const/high16 v4, 0x3f400000    # 0.75f

    invoke-direct {v1, v3, v4, v2}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v1, p0, Lbln;->k:Ljava/util/Map;

    new-instance v1, Lvd;

    invoke-direct {v1}, Lvd;-><init>()V

    iput-object v1, p0, Lbln;->p:Ljava/util/Set;

    iput-boolean v2, p0, Lbln;->m:Z

    iput-object p1, p0, Lbln;->f:Landroid/content/Context;

    new-instance v1, Lboh;

    .line 4
    invoke-direct {v1, p2, p0}, Lboh;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lbln;->l:Landroid/os/Handler;

    iput-object p3, p0, Lbln;->g:Lbjd;

    new-instance p2, Lbnf;

    .line 5
    invoke-direct {p2, p3}, Lbnf;-><init>(Lbje;)V

    iput-object p2, p0, Lbln;->h:Lbnf;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    sget-object p2, Lir;->b:Ljava/lang/Boolean;

    if-nez p2, :cond_0

    .line 7
    const-string p2, "android.hardware.type.automotive"

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Lir;->b:Ljava/lang/Boolean;

    :cond_0
    sget-object p1, Lir;->b:Ljava/lang/Boolean;

    .line 8
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iput-boolean v0, p0, Lbln;->m:Z

    :cond_1
    const/4 p1, 0x6

    .line 9
    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static a(Lbks;Lbiz;)Lcom/google/android/gms/common/api/Status;
    .locals 7

    .line 1
    new-instance v6, Lcom/google/android/gms/common/api/Status;

    iget-object p0, p0, Lbks;->a:Lbjy;

    iget-object p0, p0, Lbjy;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x3f

    add-int/2addr v3, v1

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "API: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not available on this device. Connection failed with: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lbiz;->d:Landroid/app/PendingIntent;

    const/4 v1, 0x1

    const/16 v2, 0x11

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/api/Status;-><init>(IILjava/lang/String;Landroid/app/PendingIntent;Lbiz;)V

    return-object v6
.end method

.method public static c(Landroid/content/Context;)Lbln;
    .locals 5

    .line 1
    sget-object v0, Lbln;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lbln;->n:Lbln;

    if-nez v1, :cond_1

    sget-object v1, Lbna;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v2, Lbna;->b:Landroid/os/HandlerThread;

    if-eqz v2, :cond_0

    sget-object v2, Lbna;->b:Landroid/os/HandlerThread;

    .line 2
    monitor-exit v1

    goto :goto_0

    .line 9
    :cond_0
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "GoogleApiHandler"

    const/16 v4, 0x9

    .line 3
    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lbna;->b:Landroid/os/HandlerThread;

    sget-object v2, Lbna;->b:Landroid/os/HandlerThread;

    .line 4
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    sget-object v2, Lbna;->b:Landroid/os/HandlerThread;

    .line 5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lbln;

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v3, Lbjd;->a:Lbjd;

    invoke-direct {v2, p0, v1, v3}, Lbln;-><init>(Landroid/content/Context;Landroid/os/Looper;Lbjd;)V

    sput-object v2, Lbln;->n:Lbln;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 10
    :catchall_0
    move-exception p0

    .line 6
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    .line 8
    :cond_1
    :goto_1
    sget-object p0, Lbln;->n:Lbln;

    .line 9
    monitor-exit v0

    return-object p0

    .line 5
    :catchall_1
    move-exception p0

    .line 10
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method private final g(Lbkc;)Lblj;
    .locals 2

    .line 1
    iget-object v0, p1, Lbkc;->e:Lbks;

    iget-object v1, p0, Lbln;->k:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lblj;

    if-nez v1, :cond_0

    new-instance v1, Lblj;

    .line 2
    invoke-direct {v1, p0, p1}, Lblj;-><init>(Lbln;Lbkc;)V

    iget-object p1, p0, Lbln;->k:Ljava/util/Map;

    .line 3
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    nop

    .line 4
    :goto_0
    invoke-virtual {v1}, Lblj;->o()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lbln;->p:Ljava/util/Set;

    .line 5
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_1
    invoke-virtual {v1}, Lblj;->d()V

    return-object v1
.end method

.method private final h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lbln;->o:Lbnr;

    if-eqz v0, :cond_2

    iget v1, v0, Lbnr;->a:I

    if-gtz v1, :cond_0

    invoke-virtual {p0}, Lbln;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    :cond_0
    invoke-direct {p0}, Lbln;->i()Lbny;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbny;->a(Lbnr;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lbln;->o:Lbnr;

    :cond_2
    return-void
.end method

.method private final i()Lbny;
    .locals 3

    .line 1
    iget-object v0, p0, Lbln;->q:Lbny;

    if-nez v0, :cond_0

    iget-object v0, p0, Lbln;->f:Landroid/content/Context;

    sget-object v1, Lbns;->b:Lbns;

    new-instance v2, Lbny;

    invoke-direct {v2, v0, v1}, Lbny;-><init>(Landroid/content/Context;Lbns;)V

    iput-object v2, p0, Lbln;->q:Lbny;

    :cond_0
    iget-object v0, p0, Lbln;->q:Lbny;

    return-object v0
.end method


# virtual methods
.method public final b(Lbks;)Lblj;
    .locals 1

    .line 1
    iget-object v0, p0, Lbln;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lblj;

    return-object p1
.end method

.method public final d(Lbiz;I)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lbln;->f(Lbiz;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbln;->l:Landroid/os/Handler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final e()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lbln;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lbnp;->a()Lbnp;

    move-result-object v0

    iget-object v0, v0, Lbnp;->a:Lbnq;

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lbnq;->b:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    return v1

    .line 1
    :cond_2
    :goto_0
    iget-object v0, p0, Lbln;->h:Lbnf;

    const v2, 0xc1fa340

    .line 2
    invoke-virtual {v0, v2}, Lbnf;->b(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    return v1

    :cond_4
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method final f(Lbiz;I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lbln;->g:Lbjd;

    iget-object v1, p0, Lbln;->f:Landroid/content/Context;

    invoke-static {v1}, Lis;->d(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lbiz;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p1, Lbiz;->d:Landroid/app/PendingIntent;

    goto :goto_0

    .line 3
    :cond_1
    iget v2, p1, Lbiz;->c:I

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v2, v5}, Lbje;->e(Landroid/content/Context;ILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 2
    :goto_0
    if-eqz v2, :cond_2

    iget p1, p1, Lbiz;->c:I

    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/google/android/gms/common/api/GoogleApiActivity;

    .line 4
    invoke-direct {v4, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5
    const-string v5, "pending_intent"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 6
    const-string v2, "failing_client_id"

    invoke-virtual {v4, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7
    const-string p2, "notify_manager"

    invoke-virtual {v4, p2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 8
    sget p2, Lbof;->a:I

    const/high16 v2, 0x8000000

    or-int/2addr p2, v2

    .line 9
    invoke-static {v1, v4, p2}, Lbof;->a(Landroid/content/Context;Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 3
    invoke-virtual {v0, v1, p1, p2}, Lbjd;->a(Landroid/content/Context;ILandroid/app/PendingIntent;)V

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 1
    :goto_1
    return v3
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 9

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/32 v1, 0x493e0

    const/16 v3, 0x11

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    .line 113
    iget p1, p1, Landroid/os/Message;->what:I

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1f

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown message id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "GoogleApiManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 26
    :pswitch_0
    iput-boolean v5, p0, Lbln;->e:Z

    goto/16 :goto_c

    .line 27
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lblt;

    .line 28
    iget-wide v0, p1, Lblt;->c:J

    const-wide/16 v7, 0x0

    cmp-long v2, v0, v7

    if-nez v2, :cond_0

    new-instance v0, Lbnr;

    .line 29
    iget v1, p1, Lblt;->b:I

    new-array v2, v6, [Lbnm;

    iget-object p1, p1, Lblt;->a:Lbnm;

    aput-object p1, v2, v5

    .line 30
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lbnr;-><init>(ILjava/util/List;)V

    .line 31
    invoke-direct {p0}, Lbln;->i()Lbny;

    move-result-object p1

    invoke-virtual {p1, v0}, Lbny;->a(Lbnr;)V

    goto/16 :goto_c

    :cond_0
    iget-object v0, p0, Lbln;->o:Lbnr;

    if-eqz v0, :cond_4

    iget-object v1, v0, Lbnr;->b:Ljava/util/List;

    iget v0, v0, Lbnr;->a:I

    .line 32
    iget v2, p1, Lblt;->b:I

    if-ne v0, v2, :cond_3

    if-eqz v1, :cond_1

    .line 33
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p1, Lblt;->d:I

    if-lt v0, v1, :cond_1

    goto :goto_0

    .line 43
    :cond_1
    iget-object v0, p0, Lbln;->o:Lbnr;

    .line 34
    iget-object v1, p1, Lblt;->a:Lbnm;

    iget-object v2, v0, Lbnr;->b:Ljava/util/List;

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    .line 35
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lbnr;->b:Ljava/util/List;

    :cond_2
    iget-object v0, v0, Lbnr;->b:Ljava/util/List;

    .line 36
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 33
    :cond_3
    :goto_0
    iget-object v0, p0, Lbln;->l:Landroid/os/Handler;

    .line 37
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 38
    invoke-direct {p0}, Lbln;->h()V

    :cond_4
    :goto_1
    iget-object v0, p0, Lbln;->o:Lbnr;

    if-nez v0, :cond_17

    new-instance v0, Ljava/util/ArrayList;

    .line 39
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 40
    iget-object v1, p1, Lblt;->a:Lbnm;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lbnr;

    .line 41
    iget v2, p1, Lblt;->b:I

    invoke-direct {v1, v2, v0}, Lbnr;-><init>(ILjava/util/List;)V

    iput-object v1, p0, Lbln;->o:Lbnr;

    iget-object v0, p0, Lbln;->l:Landroid/os/Handler;

    .line 42
    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p1, Lblt;->c:J

    .line 43
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_c

    .line 44
    :pswitch_2
    invoke-direct {p0}, Lbln;->h()V

    goto/16 :goto_c

    .line 45
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lblk;

    iget-object v0, p0, Lbln;->k:Ljava/util/Map;

    .line 46
    iget-object v1, p1, Lblk;->a:Lbks;

    .line 47
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lbln;->k:Ljava/util/Map;

    .line 48
    iget-object v1, p1, Lblk;->a:Lbks;

    .line 49
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lblj;

    iget-object v1, v0, Lblj;->h:Ljava/util/List;

    .line 50
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, v0, Lblj;->j:Lbln;

    iget-object v1, v1, Lbln;->l:Landroid/os/Handler;

    const/16 v2, 0xf

    .line 51
    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v1, v0, Lblj;->j:Lbln;

    iget-object v1, v1, Lbln;->l:Landroid/os/Handler;

    const/16 v2, 0x10

    .line 52
    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 53
    iget-object p1, p1, Lblk;->b:Lbjb;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lblj;->a:Ljava/util/Queue;

    .line 54
    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, v0, Lblj;->a:Ljava/util/Queue;

    .line 55
    invoke-interface {v2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbkr;

    .line 56
    instance-of v4, v3, Lbkm;

    if-eqz v4, :cond_5

    .line 57
    move-object v4, v3

    check-cast v4, Lbkm;

    invoke-virtual {v4, v0}, Lbkm;->b(Lblj;)[Lbjb;

    move-result-object v4

    if-eqz v4, :cond_5

    const/4 v7, 0x0

    :goto_3
    if-gtz v7, :cond_5

    .line 58
    aget-object v8, v4, v7

    invoke-static {v8, p1}, Lhr;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    if-ltz v7, :cond_5

    .line 59
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 60
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    :goto_4
    if-ge v5, v2, :cond_17

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 61
    check-cast v3, Lbkr;

    iget-object v4, v0, Lblj;->a:Ljava/util/Queue;

    .line 62
    invoke-interface {v4, v3}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    new-instance v4, Lbkl;

    .line 63
    invoke-direct {v4, p1}, Lbkl;-><init>(Lbjb;)V

    invoke-virtual {v3, v4}, Lbkr;->e(Ljava/lang/Exception;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 64
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lblk;

    iget-object v0, p0, Lbln;->k:Ljava/util/Map;

    .line 65
    iget-object v1, p1, Lblk;->a:Lbks;

    .line 66
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lbln;->k:Ljava/util/Map;

    .line 67
    iget-object v1, p1, Lblk;->a:Lbks;

    .line 68
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lblj;

    iget-object v1, v0, Lblj;->h:Ljava/util/List;

    .line 69
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    iget-boolean p1, v0, Lblj;->g:Z

    if-nez p1, :cond_17

    iget-object p1, v0, Lblj;->b:Lbjx;

    .line 70
    invoke-interface {p1}, Lbjx;->m()Z

    move-result p1

    if-nez p1, :cond_8

    .line 71
    invoke-virtual {v0}, Lblj;->d()V

    goto/16 :goto_c

    :cond_8
    invoke-virtual {v0}, Lblj;->g()V

    goto/16 :goto_c

    .line 72
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lhp;

    .line 73
    throw v4

    .line 71
    :pswitch_6
    iget-object v0, p0, Lbln;->k:Ljava/util/Map;

    .line 74
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lbln;->k:Ljava/util/Map;

    .line 75
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lblj;

    iget-object v0, p1, Lblj;->j:Lbln;

    iget-object v0, v0, Lbln;->l:Landroid/os/Handler;

    .line 76
    invoke-static {v0}, Lhr;->g(Landroid/os/Handler;)V

    iget-object v0, p1, Lblj;->b:Lbjx;

    .line 77
    invoke-interface {v0}, Lbjx;->m()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p1, Lblj;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p1, Lblj;->d:Lblb;

    iget-object v1, v0, Lblb;->a:Ljava/util/Map;

    .line 78
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v0, v0, Lblb;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_5

    .line 75
    :cond_9
    iget-object p1, p1, Lblj;->b:Lbjx;

    const-string v0, "Timing out service connection."

    .line 79
    invoke-interface {p1, v0}, Lbjx;->e(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 75
    :cond_a
    :goto_5
    invoke-virtual {p1}, Lblj;->l()V

    goto/16 :goto_c

    .line 79
    :pswitch_7
    iget-object v0, p0, Lbln;->k:Ljava/util/Map;

    .line 80
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lbln;->k:Ljava/util/Map;

    .line 81
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lblj;

    iget-object v0, p1, Lblj;->j:Lbln;

    iget-object v0, v0, Lbln;->l:Landroid/os/Handler;

    .line 82
    invoke-static {v0}, Lhr;->g(Landroid/os/Handler;)V

    iget-boolean v0, p1, Lblj;->g:Z

    if-eqz v0, :cond_17

    .line 81
    invoke-virtual {p1}, Lblj;->n()V

    iget-object v0, p1, Lblj;->j:Lbln;

    iget-object v1, v0, Lbln;->g:Lbjd;

    iget-object v0, v0, Lbln;->f:Landroid/content/Context;

    .line 83
    invoke-virtual {v1, v0}, Lbje;->b(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_b

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x15

    const-string v2, "Connection timed out waiting for Google Play services update to complete."

    .line 84
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    goto :goto_6

    .line 86
    :cond_b
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x16

    const-string v2, "API failed to connect while resuming due to an unknown error."

    .line 85
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 81
    :goto_6
    invoke-virtual {p1, v0}, Lblj;->f(Lcom/google/android/gms/common/api/Status;)V

    iget-object p1, p1, Lblj;->b:Lbjx;

    const-string v0, "Timing out connection while resuming."

    .line 86
    invoke-interface {p1, v0}, Lbjx;->e(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 36
    :pswitch_8
    iget-object p1, p0, Lbln;->p:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 23
    :cond_c
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbks;

    iget-object v1, p0, Lbln;->k:Ljava/util/Map;

    .line 24
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lblj;

    if-eqz v0, :cond_c

    .line 25
    invoke-virtual {v0}, Lblj;->m()V

    goto :goto_7

    :cond_d
    iget-object p1, p0, Lbln;->p:Ljava/util/Set;

    .line 26
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    goto/16 :goto_c

    .line 85
    :pswitch_9
    iget-object v0, p0, Lbln;->k:Ljava/util/Map;

    .line 87
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lbln;->k:Ljava/util/Map;

    .line 88
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lblj;

    iget-object v0, p1, Lblj;->j:Lbln;

    iget-object v0, v0, Lbln;->l:Landroid/os/Handler;

    .line 89
    invoke-static {v0}, Lhr;->g(Landroid/os/Handler;)V

    iget-boolean v0, p1, Lblj;->g:Z

    if-eqz v0, :cond_17

    .line 88
    invoke-virtual {p1}, Lblj;->d()V

    goto/16 :goto_c

    .line 90
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lbkc;

    invoke-direct {p0, p1}, Lbln;->g(Lbkc;)Lblj;

    goto/16 :goto_c

    .line 4
    :pswitch_b
    iget-object p1, p0, Lbln;->f:Landroid/content/Context;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Application;

    if-eqz p1, :cond_17

    iget-object p1, p0, Lbln;->f:Landroid/content/Context;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    .line 7
    sget-object v0, Lbkt;->a:Lbkt;

    .line 8
    monitor-enter v0

    :try_start_0
    sget-object v3, Lbkt;->a:Lbkt;

    .line 9
    iget-boolean v3, v3, Lbkt;->e:Z

    if-nez v3, :cond_e

    sget-object v3, Lbkt;->a:Lbkt;

    .line 10
    invoke-virtual {p1, v3}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    sget-object v3, Lbkt;->a:Lbkt;

    .line 11
    invoke-virtual {p1, v3}, Landroid/app/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    sget-object p1, Lbkt;->a:Lbkt;

    .line 12
    iput-boolean v6, p1, Lbkt;->e:Z

    .line 13
    :cond_e
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sget-object p1, Lbkt;->a:Lbkt;

    new-instance v0, Lble;

    invoke-direct {v0, p0}, Lble;-><init>(Lbln;)V

    sget-object v3, Lbkt;->a:Lbkt;

    .line 14
    monitor-enter v3

    :try_start_1
    iget-object p1, p1, Lbkt;->d:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object p1, Lbkt;->a:Lbkt;

    iget-object v0, p1, Lbkt;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_f

    .line 18
    new-instance v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 19
    invoke-static {v0}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    iget-object v3, p1, Lbkt;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v3

    if-nez v3, :cond_f

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v3, 0x64

    if-le v0, v3, :cond_f

    iget-object v0, p1, Lbkt;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 21
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_f
    iget-object p1, p1, Lbkt;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_17

    iput-wide v1, p0, Lbln;->d:J

    goto/16 :goto_c

    .line 13
    :catchall_0
    move-exception p1

    .line 16
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 73
    :catchall_1
    move-exception p1

    .line 13
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    .line 91
    :pswitch_c
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lbiz;

    iget-object v1, p0, Lbln;->k:Ljava/util/Map;

    .line 92
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lblj;

    iget v5, v2, Lblj;->f:I

    if-ne v5, v0, :cond_10

    move-object v4, v2

    goto :goto_8

    .line 98
    :cond_11
    nop

    .line 92
    :goto_8
    if-eqz v4, :cond_13

    iget v0, p1, Lbiz;->c:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_12

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    .line 95
    invoke-static {}, Lbjp;->e()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Lbiz;->e:Ljava/lang/String;

    .line 96
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x45

    add-int/2addr v7, v2

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Error resolution was canceled by the user, original error message: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v3, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 97
    invoke-virtual {v4, v0}, Lblj;->f(Lcom/google/android/gms/common/api/Status;)V

    goto/16 :goto_c

    :cond_12
    iget-object v0, v4, Lblj;->c:Lbks;

    .line 93
    invoke-static {v0, p1}, Lbln;->a(Lbks;Lbiz;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 94
    invoke-virtual {v4, p1}, Lblj;->f(Lcom/google/android/gms/common/api/Status;)V

    goto/16 :goto_c

    :cond_13
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v1, 0x4c

    .line 98
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Could not find API instance "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " while trying to fail enqueued calls."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v1, "GoogleApiManager"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c

    .line 99
    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lblv;

    iget-object v0, p0, Lbln;->k:Ljava/util/Map;

    .line 100
    iget-object v1, p1, Lblv;->c:Lbkc;

    iget-object v1, v1, Lbkc;->e:Lbks;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lblj;

    if-nez v0, :cond_14

    .line 101
    iget-object v0, p1, Lblv;->c:Lbkc;

    invoke-direct {p0, v0}, Lbln;->g(Lbkc;)Lblj;

    move-result-object v0

    .line 102
    :cond_14
    invoke-virtual {v0}, Lblj;->o()Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lbln;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget v2, p1, Lblv;->b:I

    if-eq v1, v2, :cond_15

    .line 104
    iget-object p1, p1, Lblv;->a:Lbkr;

    sget-object v1, Lbln;->a:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1, v1}, Lbkr;->d(Lcom/google/android/gms/common/api/Status;)V

    .line 105
    invoke-virtual {v0}, Lblj;->m()V

    goto :goto_c

    .line 103
    :cond_15
    iget-object p1, p1, Lblv;->a:Lbkr;

    invoke-virtual {v0, p1}, Lblj;->e(Lbkr;)V

    goto :goto_c

    .line 1
    :pswitch_e
    iget-object p1, p0, Lbln;->k:Ljava/util/Map;

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lblj;

    .line 3
    invoke-virtual {v0}, Lblj;->c()V

    .line 4
    invoke-virtual {v0}, Lblj;->d()V

    goto :goto_9

    .line 106
    :pswitch_f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lhp;

    .line 107
    throw v4

    .line 103
    :pswitch_10
    nop

    .line 108
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eq v6, p1, :cond_16

    goto :goto_a

    .line 112
    :cond_16
    const-wide/16 v1, 0x2710

    .line 108
    :goto_a
    iput-wide v1, p0, Lbln;->d:J

    iget-object p1, p0, Lbln;->l:Landroid/os/Handler;

    .line 109
    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lbln;->k:Ljava/util/Map;

    .line 110
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbks;

    iget-object v2, p0, Lbln;->l:Landroid/os/Handler;

    .line 111
    invoke-virtual {v2, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-wide v3, p0, Lbln;->d:J

    .line 112
    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_b

    .line 4
    :cond_17
    :goto_c
    return v6

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_d
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_d
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
