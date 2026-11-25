.class public Lcom/google/android/apps/auto/aareceiver/cluster/ClusterImageProvider;
.super Landroid/content/ContentProvider;
.source "PG"


# static fields
.field static final a:[B

.field public static final b:Landroid/net/Uri;

.field private static final c:Lcsz;

.field private static final d:Lcrd;

.field private static final e:Lcrd;

.field private static final f:Lcqw;

.field private static final g:Lcqw;

.field private static final h:Lcqw;


# instance fields
.field private final i:Ljava/lang/Object;

.field private j:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    sget-object v0, Lcxe;->d:Lcxe;

    :try_start_0
    const-string v1, "89504E470D0A1A0A"

    move-object v2, v0

    check-cast v2, Lcxd;

    iget-object v2, v2, Lcxd;->c:Ljava/lang/Character;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    .line 3
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_0
    if-ltz v5, :cond_2

    .line 4
    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-eq v6, v2, :cond_1

    goto :goto_1

    .line 39
    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 4
    :cond_2
    :goto_1
    add-int/2addr v5, v3

    .line 5
    invoke-interface {v1, v4, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 6
    :goto_2
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 1
    move-object v5, v0

    check-cast v5, Lcxd;

    iget-object v5, v5, Lcxd;->b:Lcwz;

    iget v5, v5, Lcwz;->d:I

    int-to-long v5, v5

    int-to-long v7, v2

    mul-long v5, v5, v7

    const-wide/16 v7, 0x7

    add-long/2addr v5, v7

    const-wide/16 v7, 0x8

    div-long/2addr v5, v7

    long-to-int v2, v5

    .line 6
    new-array v5, v2, [B

    .line 7
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    rem-int/lit8 v6, v6, 0x2

    if-eq v6, v3, :cond_5

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 8
    :goto_3
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v3, v7, :cond_3

    .line 1
    move-object v7, v0

    check-cast v7, Lcxa;

    iget-object v7, v7, Lcxa;->b:Lcwz;

    .line 9
    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Lcwz;->b(C)I

    move-result v7

    shl-int/lit8 v7, v7, 0x4

    .line 1
    move-object v8, v0

    check-cast v8, Lcxa;

    iget-object v8, v8, Lcxa;->b:Lcwz;

    add-int/lit8 v9, v3, 0x1

    .line 9
    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Lcwz;->b(C)I

    move-result v8

    add-int/lit8 v9, v6, 0x1

    or-int/2addr v7, v8

    int-to-byte v7, v7

    .line 10
    aput-byte v7, v5, v6

    add-int/lit8 v3, v3, 0x2

    move v6, v9

    goto :goto_3

    :cond_3
    if-ne v6, v2, :cond_4

    goto :goto_4

    .line 11
    :cond_4
    new-array v0, v6, [B

    .line 12
    invoke-static {v5, v4, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Lcxb; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v0

    .line 10
    :goto_4
    sput-object v5, Lcom/google/android/apps/auto/aareceiver/cluster/ClusterImageProvider;->a:[B

    const-string v0, "com/google/android/apps/auto/aareceiver/cluster/ClusterImageProvider"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/auto/aareceiver/cluster/ClusterImageProvider;->c:Lcsz;

    .line 13
    const-string v0, "content://com.google.android.apps.auto.aareceiver.cluster.clusterimageprovider/images"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/auto/aareceiver/cluster/ClusterImageProvider;->b:Landroid/net/Uri;

    new-instance v0, Lcrb;

    sget-object v1, Lbup;->b:Lbup;

    .line 14
    invoke-direct {v0, v1}, Lcrb;-><init>(Ljava/util/Comparator;)V

    const/16 v1, 0x43

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ccw_roundabout_1_67"

    invoke-virtual {v0, v1, v2}, Lcrb;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x70

    .line 16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "ccw_roundabout_68_112"

    invoke-virtual {v0, v2, v3}, Lcrb;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v3, 0x9d

    .line 17
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "ccw_roundabout_113_157"

    invoke-virtual {v0, v3, v5}, Lcrb;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v5, 0xca

    .line 18
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "ccw_roundabout_158_202"

    invoke-virtual {v0, v5, v6}, Lcrb;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v6, 0xf7

    .line 19
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ccw_roundabout_203_247"

    invoke-virtual {v0, v6, v7}, Lcrb;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v7, 0x124

    .line 20
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "ccw_roundabout_248_292"

    invoke-virtual {v0, v7, v8}, Lcrb;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v8, 0x151

    .line 21
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "ccw_roundabout_293_337"

    invoke-virtual {v0, v8, v9}, Lcrb;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v9, 0x168

    .line 22
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "ccw_roundabout_338_360"

    invoke-virtual {v0, v9, v10}, Lcrb;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    invoke-virtual {v0}, Lcrb;->a()Lcrd;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/auto/aareceiver/cluster/ClusterImageProvider;->d:Lcrd;

    new-instance v0, Lcrb;

    sget-object v10, Lbup;->b:Lbup;

    .line 24
    invoke-direct {v0, v10}, Lcrb;-><init>(Ljava/util/Comparator;)V

    .line 25
    const-string v10, "cw_roundabout_1_67"

    invoke-virtual {v0, v1, v10}, Lcrb;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    const-string v1, "cw_roundabout_68_112"

    invoke-virtual {v0, v2, v1}, Lcrb;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    const-string v1, "cw_roundabout_113_157"

    invoke-virtual {v0, v3, v1}, Lcrb;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28
    const-string v1, "cw_roundabout_158_202"

    invoke-virtual {v0, v5, v1}, Lcrb;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    const-string v1, "cw_roundabout_203_247"

    invoke-virtual {v0, v6, v1}, Lcrb;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 30
    const-string v1, "cw_roundabout_248_292"

    invoke-virtual {v0, v7, v1}, Lcrb;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    const-string v1, "cw_roundabout_293_337"

    invoke-virtual {v0, v8, v1}, Lcrb;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 32
    const-string v1, "cw_roundabout_338_360"

    invoke-virtual {v0, v9, v1}, Lcrb;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 33
    invoke-virtual {v0}, Lcrb;->a()Lcrd;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/auto/aareceiver/cluster/ClusterImageProvider;->e:Lcrd;

    .line 34
    sget-object v5, Li;->R:Li;

    sget-object v6, Li;->Q:Li;

    sget-object v7, Li;->S:Li;

    sget-object v8, Li;->T:Li;

    sget-object v9, Li;->X:Li;

    sget-object v10, Li;->P:Li;

    new-array v11, v4, [Li;

    .line 35
    invoke-static/range {v5 .. v11}, Lcqw;->r(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcqw;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/auto/aareceiver/cluster/ClusterImageProvider;->f:Lcqw;

    sget-object v5, Li;->M:Li;

    sget-object v6, Li;->L:Li;

    sget-object v7, Li;->N:Li;

    sget-object v8, Li;->K:Li;

    sget-object v9, Li;->O:Li;

    sget-object v10, Li;->G:Li;

    new-array v11, v4, [Li;

    .line 36
    invoke-static/range {v5 .. v11}, Lcqw;->r(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcqw;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/auto/aareceiver/cluster/ClusterImageProvider;->g:Lcqw;

    sget-object v5, Li;->V:Li;

    sget-object v6, Li;->U:Li;

    sget-object v7, Li;->W:Li;

    sget-object v8, Li;->I:Li;

    sget-object v9, Li;->H:Li;

    sget-object v10, Li;->J:Li;

    new-array v11, v4, [Li;

    .line 37
    invoke-static/range {v5 .. v11}, Lcqw;->r(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcqw;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/auto/aareceiver/cluster/ClusterImageProvider;->h:Lcqw;

    return-void

    .line 5
    :cond_5
    :try_start_1
    new-instance v0, Lcxb;

    .line 38
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Invalid input length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcxb;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lcxb; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 39
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_6

    :goto_5
    throw v1

    :goto_6
    goto :goto_5
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/auto/aareceiver/cluster/ClusterImageProvider;->i:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .line 1
    sget-object p2, Lcom/google/android/apps/auto/aareceiver/cluster/ClusterImageProvider;->b:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/apps/auto/aareceiver/cluster/ClusterImageProvider;->i:Ljava/lang/Object;

    .line 2
    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/google/android/apps/auto/aareceiver/cluster/ClusterImageProvider;->j:Ljava/util/Map;

    .line 3
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    iget-object p3, p0, Lcom/google/android/apps/auto/aareceiver/cluster/ClusterImageProvider;->j:Ljava/util/Map;

    .line 4
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 9
    :catch_0
    move-exception v0

    goto :goto_0

    .line 6
    :cond_2
    :try_start_2
    iget-object p3, p0, Lcom/google/android/apps/auto/aareceiver/cluster/ClusterImageProvider;->j:Ljava/util/Map;

    .line 7
    invoke-interface {p3}, Ljava/util/Map;->clear()V

    .line 8
    monitor-exit p1

    return p2

    :catchall_0
    move-exception p2

    .line 9
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 7

    .line 1
    sget-object v0, Lcom/google/android/apps/auto/aareceiver/cluster/ClusterImageProvider;->b:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "maneuver"

    .line 2
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 3
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Li;->b(I)Li;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    const-string v2, "image"

    .line 4
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "turnangle"

    .line 5
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    sget-object v3, Lcom/google/android/apps/auto/aareceiver/cluster/ClusterImageProvider;->g:Lcqw;

    .line 6
    invoke-virtual {v3, v0}, Lcqw;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/16 v4, 0x168

    if-eqz v3, :cond_5

    if-eqz p2, :cond_4

    .line 7
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt v0, v4, :cond_4

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_3

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/google/android/apps/auto/aareceiver/cluster/ClusterImageProvider;->e:Lcrd;

    .line 8
    invoke-virtual {v0, p2}, Lcrd;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    goto :goto_2

    .line 7
    :cond_4
    :goto_0
    return-object v1

    .line 38
    :cond_5
    sget-object v3, Lcom/google/android/apps/auto/aareceiver/cluster/ClusterImageProvider;->f:Lcqw;

    .line 10
    invoke-virtual {v3, v0}, Lcqw;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz p2, :cond_7

    .line 11
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt v0, v4, :cond_7

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_6

    goto :goto_1

    :cond_6
    sget-object v0, Lcom/google/android/apps/auto/aareceiver/cluster/ClusterImageProvider;->d:Lcrd;

    .line 12
    invoke-virtual {v0, p2}, Lcrd;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    goto :goto_2

    .line 11
    :cond_7
    :goto_1
    return-object v1

    .line 13
    :cond_8
    sget-object p2, Lcom/google/android/apps/auto/aareceiver/cluster/ClusterImageProvider;->h:Lcqw;

    .line 14
    invoke-virtual {p2, v0}, Lcqw;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    return-object v1

    :cond_9
    new-instance p2, Ljava/text/DecimalFormat;

    const-string v3, "################000"

    .line 15
    invoke-direct {p2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0}, Li;->a()I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {p2, v3, v4}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object p2

    .line 17
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 9
    :goto_2
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/cluster/ClusterImageProvider;->i:Ljava/lang/Object;

    .line 18
    monitor-enter v0

    :try_start_0
    iget-object v3, p0, Lcom/google/android/apps/auto/aareceiver/cluster/ClusterImageProvider;->j:Ljava/util/Map;

    .line 19
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    if-eqz v3, :cond_a

    .line 20
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 41
    monitor-exit v0

    return-object p1

    :cond_a
    if-nez v2, :cond_b

    sget-object p1, Lcom/google/android/apps/auto/aareceiver/cluster/ClusterImageProvider;->c:Lcsz;

    invoke-virtual {p1}, Lcsv;->c()Lctq;

    move-result-object p1

    const-string p2, "com/google/android/apps/auto/aareceiver/cluster/ClusterImageProvider"

    const-string v2, "insert"

    const/16 v3, 0xee

    const-string v4, "ClusterImageProvider.java"

    .line 21
    invoke-interface {p1, p2, v2, v3, v4}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string p2, "No image to insert provided"

    invoke-interface {p1, p2}, Lcsx;->n(Ljava/lang/String;)V

    .line 22
    monitor-exit v0

    return-object v1

    :cond_b
    array-length v3, v2

    sget-object v4, Lcom/google/android/apps/auto/aareceiver/cluster/ClusterImageProvider;->a:[B

    .line 23
    array-length v5, v4

    if-lt v3, v5, :cond_f

    array-length v5, v4

    .line 24
    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    invoke-static {v5, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_c

    goto/16 :goto_3

    .line 26
    :cond_c
    const v4, 0x801019

    if-le v3, v4, :cond_d

    sget-object p1, Lcom/google/android/apps/auto/aareceiver/cluster/ClusterImageProvider;->c:Lcsz;

    invoke-virtual {p1}, Lcsv;->c()Lctq;

    move-result-object p1

    const-string p2, "com/google/android/apps/auto/aareceiver/cluster/ClusterImageProvider"

    const-string v2, "insert"

    const/16 v5, 0xf5

    const-string v6, "ClusterImageProvider.java"

    .line 39
    invoke-interface {p1, p2, v2, v5, v6}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string p2, "Image too large. File size is: %d, the maximum file size is%d"

    invoke-interface {p1, p2, v3, v4}, Lcsx;->q(Ljava/lang/String;II)V

    .line 40
    monitor-exit v0

    return-object v1

    :cond_d
    const/4 v4, 0x0

    .line 27
    invoke-static {v2, v4, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_e

    sget-object p1, Lcom/google/android/apps/auto/aareceiver/cluster/ClusterImageProvider;->c:Lcsz;

    invoke-virtual {p1}, Lcsv;->c()Lctq;

    move-result-object p1

    const-string p2, "com/google/android/apps/auto/aareceiver/cluster/ClusterImageProvider"

    const-string v2, "insert"

    const/16 v3, 0xfb

    const-string v4, "ClusterImageProvider.java"

    .line 28
    invoke-interface {p1, p2, v2, v3, v4}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string p2, "Image provided is not a valid PNG file"

    invoke-interface {p1, p2}, Lcsx;->n(Ljava/lang/String;)V

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :cond_e
    :try_start_1
    const-string v3, ".png"

    .line 30
    invoke-static {p2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    .line 31
    invoke-virtual {p2}, Ljava/io/File;->deleteOnExit()V

    new-instance v3, Ljava/io/FileOutputStream;

    .line 32
    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 33
    invoke-virtual {v3, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 34
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lcom/google/android/apps/auto/aareceiver/cluster/ClusterImageProvider;->j:Ljava/util/Map;

    .line 37
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    monitor-exit v0

    return-object p1

    :catch_0
    move-exception p1

    sget-object p2, Lcom/google/android/apps/auto/aareceiver/cluster/ClusterImageProvider;->c:Lcsz;

    invoke-virtual {p2}, Lcsv;->b()Lctq;

    move-result-object p2

    .line 35
    invoke-interface {p2, p1}, Lcsx;->g(Ljava/lang/Throwable;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string p2, "com/google/android/apps/auto/aareceiver/cluster/ClusterImageProvider"

    const-string v2, "insert"

    const/16 v3, 0x109

    const-string v4, "ClusterImageProvider.java"

    invoke-interface {p1, p2, v2, v3, v4}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string p2, "Failed to create temp file for cluster image"

    invoke-interface {p1, p2}, Lcsx;->n(Ljava/lang/String;)V

    .line 36
    monitor-exit v0

    return-object v1

    .line 24
    :cond_f
    :goto_3
    sget-object p1, Lcom/google/android/apps/auto/aareceiver/cluster/ClusterImageProvider;->c:Lcsz;

    invoke-virtual {p1}, Lcsv;->c()Lctq;

    move-result-object p1

    const-string p2, "com/google/android/apps/auto/aareceiver/cluster/ClusterImageProvider"

    const-string v2, "insert"

    const/16 v3, 0xf2

    const-string v4, "ClusterImageProvider.java"

    .line 25
    invoke-interface {p1, p2, v2, v3, v4}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string p2, "Invalid image to insert provided"

    invoke-interface {p1, p2}, Lcsx;->n(Ljava/lang/String;)V

    .line 26
    monitor-exit v0

    return-object v1

    .line 17
    :catchall_0
    move-exception p1

    .line 38
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final onCreate()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/cluster/ClusterImageProvider;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/auto/aareceiver/cluster/ClusterImageProvider;->j:Ljava/util/Map;

    .line 3
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p2

    const-string v0, ""

    invoke-virtual {p2, v0}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/cluster/ClusterImageProvider;->i:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/auto/aareceiver/cluster/ClusterImageProvider;->j:Ljava/util/Map;

    .line 3
    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/google/android/apps/auto/aareceiver/cluster/ClusterImageProvider;->j:Ljava/util/Map;

    .line 5
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    const/high16 p2, 0x10000000

    .line 6
    invoke-static {p1, p2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 3
    :cond_0
    new-instance p2, Ljava/io/FileNotFoundException;

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x19

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Request for invalid URI: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
