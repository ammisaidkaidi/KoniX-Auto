.class public final Lbjd;
.super Lbje;
.source "PG"


# static fields
.field public static final a:Lbjd;

.field private static final d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lbjd;->d:Ljava/lang/Object;

    new-instance v0, Lbjd;

    invoke-direct {v0}, Lbjd;-><init>()V

    sput-object v0, Lbjd;->a:Lbjd;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lbje;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;ILandroid/app/PendingIntent;)V
    .locals 9

    .line 1
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x0

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "GMS core API Availability. ConnectionResult=%s, tag=%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 2
    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    const-string v5, "GoogleApiAvailability"

    invoke-static {v5, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v1, 0x12

    if-ne p2, v1, :cond_0

    new-instance p2, Lbjc;

    .line 3
    invoke-direct {p2, p0, p1}, Lbjc;-><init>(Lbjd;Landroid/content/Context;)V

    const-wide/32 v0, 0x1d4c0

    .line 4
    invoke-virtual {p2, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_0
    const/4 v1, 0x6

    if-nez p3, :cond_2

    if-ne p2, v1, :cond_1

    const-string p1, "GoogleApiAvailability"

    const-string p2, "Missing resolution for ConnectionResult.RESOLUTION_REQUIRED. Call GoogleApiAvailability#showErrorNotification(Context, ConnectionResult) instead."

    .line 5
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    if-ne p2, v1, :cond_3

    const-string v2, "common_google_play_services_resolution_required_title"

    .line 6
    invoke-static {p1, v2}, Lbmq;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 7
    :cond_3
    invoke-static {p1, p2}, Lbmq;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 6
    :goto_0
    const v5, 0x7f10003b

    if-nez v2, :cond_4

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 9
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_4
    if-eq p2, v1, :cond_6

    const/16 v1, 0x13

    if-ne p2, v1, :cond_5

    goto :goto_1

    .line 12
    :cond_5
    invoke-static {p1, p2}, Lbmq;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 9
    :cond_6
    :goto_1
    const-string v1, "common_google_play_services_resolution_required_text"

    .line 10
    invoke-static {p1}, Lbmq;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 11
    invoke-static {p1, v1, v6}, Lbmq;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 13
    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "notification"

    .line 14
    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lhr;->d(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v7, Landroid/app/NotificationManager;

    new-instance v8, Ldg;

    .line 15
    invoke-direct {v8, p1}, Ldg;-><init>(Landroid/content/Context;)V

    iput-boolean v4, v8, Ldg;->j:Z

    const/16 v4, 0x10

    .line 16
    invoke-virtual {v8, v4}, Ldg;->f(I)V

    .line 17
    invoke-virtual {v8, v2}, Ldg;->e(Ljava/lang/CharSequence;)V

    new-instance v2, Ldf;

    invoke-direct {v2}, Ldf;-><init>()V

    .line 18
    invoke-static {v1}, Ldg;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v2, Ldf;->a:Ljava/lang/CharSequence;

    .line 19
    invoke-virtual {v8, v2}, Ldg;->h(Ldh;)V

    .line 20
    invoke-static {p1}, Lir;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v8, v1}, Ldg;->g(I)V

    iput v0, v8, Ldg;->h:I

    .line 22
    invoke-static {p1}, Lir;->c(Landroid/content/Context;)V

    iput-object p3, v8, Ldg;->g:Landroid/app/PendingIntent;

    goto :goto_3

    .line 37
    :cond_7
    const v0, 0x108008a

    .line 23
    invoke-virtual {v8, v0}, Ldg;->g(I)V

    .line 24
    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ldg;->i(Ljava/lang/CharSequence;)V

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, v8, Ldg;->m:Landroid/app/Notification;

    .line 26
    iput-wide v4, v0, Landroid/app/Notification;->when:J

    iput-object p3, v8, Ldg;->g:Landroid/app/PendingIntent;

    .line 27
    invoke-virtual {v8, v1}, Ldg;->d(Ljava/lang/CharSequence;)V

    .line 22
    :goto_3
    sget-object p3, Lbjd;->d:Ljava/lang/Object;

    .line 28
    monitor-enter p3

    .line 29
    :try_start_0
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p3, "com.google.android.gms.availability"

    .line 31
    invoke-virtual {v7, p3}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f10003a

    .line 33
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez v0, :cond_8

    .line 34
    new-instance v0, Landroid/app/NotificationChannel;

    const/4 v1, 0x4

    invoke-direct {v0, p3, p1, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v7, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    goto :goto_4

    .line 35
    :cond_8
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 36
    invoke-virtual {v0, p1}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    .line 37
    invoke-virtual {v7, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 34
    :cond_9
    :goto_4
    iput-object p3, v8, Ldg;->l:Ljava/lang/String;

    .line 38
    invoke-virtual {v8}, Ldg;->a()Landroid/app/Notification;

    move-result-object p1

    packed-switch p2, :pswitch_data_0

    const p2, 0x9b6d

    goto :goto_5

    .line 39
    :pswitch_0
    sget-object p2, Lbjp;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 p2, 0x28c4

    .line 40
    :goto_5
    invoke-virtual {v7, p2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    .line 7
    :catchall_0
    move-exception p1

    .line 30
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
