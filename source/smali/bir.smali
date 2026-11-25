.class public final Lbir;
.super Lbku;
.source "PG"


# instance fields
.field final synthetic a:Lbkc;

.field private final k:Lbih;


# direct methods
.method public constructor <init>(Lbkc;Lbih;Lbkf;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbir;->a:Lbkc;

    sget-object p1, Lbik;->a:Lbjy;

    invoke-direct {p0, p3}, Lbku;-><init>(Lbkf;)V

    iput-object p2, p0, Lbir;->k:Lbih;

    return-void
.end method


# virtual methods
.method protected final g(Lbis;)V
    .locals 32

    .line 1
    move-object/from16 v1, p0

    new-instance v2, Lbiq;

    invoke-direct {v2, v1}, Lbiq;-><init>(Lbir;)V

    :try_start_0
    iget-object v0, v1, Lbir;->k:Lbih;

    iget-object v4, v0, Lbih;->a:Lbik;

    iget-object v4, v4, Lbik;->i:Ljava/util/List;

    .line 2
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbig;

    .line 3
    invoke-interface {v0}, Lbig;->a()Lbih;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    .line 17
    :cond_1
    sget-object v4, Lbik;->c:Ljava/util/List;

    .line 4
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbig;

    .line 5
    invoke-interface {v0}, Lbig;->a()Lbih;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_c

    if-nez v0, :cond_2

    const/4 v4, 0x0

    goto :goto_0

    .line 4
    :cond_3
    move-object v4, v0

    .line 3
    :goto_0
    if-nez v4, :cond_4

    sget-object v0, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    .line 8
    invoke-virtual {v2, v0}, Lbit;->c(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :cond_4
    iget-object v0, v4, Lbih;->a:Lbik;

    iget-object v0, v0, Lbik;->h:Lbii;

    iget-object v5, v4, Lbih;->f:Ljava/lang/String;

    iget-object v7, v4, Lbih;->j:Lddh;

    iget-object v7, v7, Lddh;->b:Lddk;

    .line 9
    check-cast v7, Ldgt;

    iget v7, v7, Ldgt;->e:I

    if-eqz v5, :cond_5

    .line 10
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v5, 0x0

    goto :goto_1

    .line 17
    :cond_5
    const/4 v5, 0x0

    .line 10
    :cond_6
    :goto_1
    const/4 v8, 0x1

    if-nez v5, :cond_7

    new-instance v5, Ljava/util/ArrayList;

    .line 11
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    goto :goto_5

    .line 68
    :cond_7
    move-object v9, v0

    check-cast v9, Lbiv;

    iget-object v9, v9, Lbiv;->f:Landroid/content/Context;

    if-nez v9, :cond_8

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    goto :goto_3

    .line 20
    :cond_8
    sget-object v9, Lbiv;->c:Lj$/util/concurrent/ConcurrentHashMap;

    .line 13
    invoke-virtual {v9, v5}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcei;

    if-nez v9, :cond_a

    sget-object v9, Lbiv;->b:Lceg;

    .line 14
    sget-object v10, Ldgv;->b:Ldgv;

    sget-object v11, Lbpu;->b:Lbpu;

    .line 15
    invoke-virtual {v9, v5, v10, v11}, Lceg;->d(Ljava/lang/String;Ljava/lang/Object;Lcef;)Lcei;

    move-result-object v9

    sget-object v10, Lbiv;->c:Lj$/util/concurrent/ConcurrentHashMap;

    .line 16
    invoke-virtual {v10, v5, v9}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcei;

    if-nez v5, :cond_9

    goto :goto_2

    :cond_9
    move-object v9, v5

    goto :goto_2

    .line 17
    :cond_a
    nop

    :goto_2
    invoke-virtual {v9}, Lcei;->c()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ldgv;

    iget-object v5, v5, Ldgv;->a:Lddr;

    .line 12
    :goto_3
    new-instance v9, Ljava/util/ArrayList;

    .line 18
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 19
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_b
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ldgu;

    iget v11, v10, Ldgu;->a:I

    and-int/2addr v11, v8

    if-eqz v11, :cond_c

    iget v11, v10, Ldgu;->b:I

    if-eqz v11, :cond_c

    if-ne v11, v7, :cond_b

    .line 20
    :cond_c
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_d
    move-object v5, v9

    .line 21
    :goto_5
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/16 v9, 0x8

    const/4 v10, 0x0

    if-eqz v7, :cond_18

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ldgu;

    iget-object v11, v7, Ldgu;->c:Ljava/lang/String;

    move-object v12, v0

    check-cast v12, Lbiv;

    iget-object v12, v12, Lbiv;->f:Landroid/content/Context;

    .line 22
    invoke-static {v12}, Lbtj;->b(Landroid/content/Context;)Z

    move-result v13

    const-wide/16 v14, 0x0

    if-eqz v13, :cond_f

    move-wide v12, v14

    goto :goto_8

    .line 35
    :cond_f
    sget-object v13, Lbiv;->e:Ljava/lang/Long;

    if-nez v13, :cond_14

    if-eqz v12, :cond_13

    sget-object v13, Lbiv;->d:Ljava/lang/Boolean;

    if-nez v13, :cond_11

    .line 23
    invoke-static {v12}, Lboc;->b(Landroid/content/Context;)Ldhq;

    move-result-object v13

    iget-object v13, v13, Ldhq;->a:Landroid/content/Context;

    const-string v3, "com.google.android.providers.gsf.permission.READ_GSERVICES"

    .line 24
    invoke-virtual {v13, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_10

    const/4 v10, 0x1

    goto :goto_6

    .line 27
    :cond_10
    nop

    .line 23
    :goto_6
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lbiv;->d:Ljava/lang/Boolean;

    :cond_11
    sget-object v3, Lbiv;->d:Ljava/lang/Boolean;

    .line 25
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 26
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lbrr;->a(Landroid/content/ContentResolver;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sput-object v3, Lbiv;->e:Ljava/lang/Long;

    goto :goto_7

    .line 28
    :cond_12
    nop

    .line 27
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sput-object v3, Lbiv;->e:Ljava/lang/Long;

    goto :goto_7

    :cond_13
    move-wide v12, v14

    goto :goto_8

    .line 26
    :cond_14
    :goto_7
    sget-object v3, Lbiv;->e:Ljava/lang/Long;

    .line 28
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 22
    :goto_8
    if-eqz v11, :cond_16

    .line 29
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_15

    goto :goto_9

    .line 37
    :cond_15
    sget-object v3, Lbiv;->a:Ljava/nio/charset/Charset;

    .line 31
    invoke-virtual {v11, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    .line 32
    array-length v10, v3

    add-int/2addr v10, v9

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 33
    invoke-virtual {v9, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 34
    invoke-virtual {v9, v12, v13}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 35
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-static {v3}, Lhn;->d([B)J

    move-result-wide v9

    goto :goto_a

    .line 29
    :cond_16
    :goto_9
    nop

    .line 30
    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-static {v3}, Lhn;->d([B)J

    move-result-wide v9

    :goto_a
    iget-wide v11, v7, Ldgu;->d:J

    iget-wide v6, v7, Ldgu;->e:J

    cmp-long v13, v11, v14

    if-ltz v13, :cond_e

    cmp-long v13, v6, v14

    if-lez v13, :cond_e

    cmp-long v13, v9, v14

    if-ltz v13, :cond_17

    .line 36
    rem-long/2addr v9, v6

    goto :goto_b

    .line 197
    :cond_17
    nop

    .line 37
    const-wide v13, 0x7fffffffffffffffL

    rem-long v16, v13, v6

    const-wide/16 v18, 0x1

    add-long v16, v16, v18

    and-long/2addr v9, v13

    rem-long/2addr v9, v6

    add-long v16, v16, v9

    rem-long v9, v16, v6

    .line 36
    :goto_b
    cmp-long v6, v9, v11

    if-ltz v6, :cond_e

    sget-object v0, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    .line 197
    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->n(Lbki;)V

    return-void

    .line 27
    :cond_18
    :try_start_1
    new-instance v5, Lbin;

    new-instance v6, Lbiw;

    iget-object v0, v4, Lbih;->a:Lbik;

    iget-object v7, v0, Lbik;->f:Ljava/lang/String;

    iget-object v0, v0, Lbik;->e:Landroid/content/Context;

    sget v11, Lbik;->d:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_1a

    const-class v11, Lbik;

    monitor-enter v11
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_b

    :try_start_2
    sget v13, Lbik;->d:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v13, v12, :cond_19

    .line 38
    :try_start_3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 39
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v0, Lbik;->d:I
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_c

    .line 41
    :catch_0
    move-exception v0

    :try_start_4
    const-string v12, "ClearcutLogger"

    const-string v13, "This can\'t happen."

    .line 40
    invoke-static {v12, v13, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    :cond_19
    :goto_c
    monitor-exit v11

    goto :goto_d

    .line 58
    :catchall_0
    move-exception v0

    .line 41
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    :cond_1a
    :goto_d
    sget v18, Lbik;->d:I

    iget-object v0, v4, Lbih;->f:Ljava/lang/String;

    iget-object v11, v4, Lbih;->e:Ljava/lang/String;

    iget v12, v4, Lbih;->h:I

    iget-object v13, v4, Lbih;->a:Lbik;

    iget-object v13, v13, Lbik;->g:Ljava/util/EnumSet;

    .line 42
    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v19, v0

    move-object/from16 v20, v11

    move/from16 v21, v12

    move-object/from16 v22, v13

    invoke-direct/range {v16 .. v22}, Lbiw;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/util/EnumSet;)V

    iget-object v0, v4, Lbih;->j:Lddh;

    .line 43
    invoke-virtual {v0}, Lddf;->f()Lddk;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Ldgt;

    iget-object v0, v4, Lbih;->g:Lbie;

    .line 44
    const/4 v3, 0x0

    invoke-static {v3}, Lbik;->d(Ljava/util/ArrayList;)[I

    move-result-object v20

    iget-object v7, v4, Lbih;->c:Ljava/util/ArrayList;

    if-eqz v7, :cond_1b

    sget-object v11, Lbik;->b:[Ljava/lang/String;

    .line 45
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    move-object/from16 v21, v7

    goto :goto_e

    .line 68
    :cond_1b
    const/16 v21, 0x0

    .line 45
    :goto_e
    iget-object v7, v4, Lbih;->d:Ljava/util/ArrayList;

    .line 46
    invoke-static {v7}, Lbik;->d(Ljava/util/ArrayList;)[I

    move-result-object v22

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v19, v0

    invoke-direct/range {v16 .. v22}, Lbin;-><init>(Lbiw;Ldgt;Lbie;[I[Ljava/lang/String;[I)V

    iget-object v0, v5, Lbin;->j:Ldgt;

    .line 47
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Lddk;->E(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lddf;

    .line 49
    invoke-virtual {v7, v0}, Lddf;->n(Lddk;)V

    .line 50
    check-cast v7, Lddh;

    iget-object v11, v5, Lbin;->k:Lbie;

    if-eqz v11, :cond_1d

    iget-object v0, v0, Ldgt;->f:Ldcl;

    .line 51
    invoke-virtual {v0}, Ldcl;->d()I

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, v5, Lbin;->k:Lbie;

    iget-object v0, v0, Lbie;->a:Lder;

    .line 52
    invoke-interface {v0}, Lder;->e()Ldcl;

    move-result-object v0

    iget-boolean v11, v7, Lddf;->c:Z

    if-eqz v11, :cond_1c

    .line 53
    invoke-virtual {v7}, Lddf;->k()V

    iput-boolean v10, v7, Lddf;->c:Z

    :cond_1c
    iget-object v11, v7, Lddh;->b:Lddk;

    .line 54
    check-cast v11, Ldgt;

    iget v12, v11, Ldgt;->a:I

    or-int/lit16 v12, v12, 0x400

    iput v12, v11, Ldgt;->a:I

    iput-object v0, v11, Ldgt;->f:Ldcl;

    .line 55
    :cond_1d
    invoke-virtual {v7}, Lddf;->f()Lddk;

    move-result-object v0

    check-cast v0, Ldgt;

    iput-object v0, v5, Lbin;->j:Ldgt;

    iget-object v0, v5, Lbin;->j:Ldgt;

    .line 56
    invoke-virtual {v0}, Ldbv;->h()[B

    move-result-object v0

    iput-object v0, v5, Lbin;->c:[B
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_b

    iget-object v7, v4, Lbih;->i:Lbtc;

    if-eqz v7, :cond_5f

    iget-object v0, v5, Lbin;->j:Ldgt;

    .line 59
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Ldgt;->f:Ldcl;

    iget-object v11, v7, Lbtc;->a:Lbsa;

    .line 60
    invoke-virtual {v0}, Ldcl;->C()[B

    move-result-object v12

    .line 61
    sget-object v0, Lbsd;->a:Lbse;

    .line 62
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v13

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5e

    .line 61
    move-object v13, v0

    check-cast v13, Lbsf;

    iget-object v13, v13, Lbsf;->f:Lbsz;

    iget-object v13, v11, Lbsa;->a:Landroid/content/Context;

    sget-object v14, Lbsf;->c:Lbta;

    sget-boolean v15, Lbsz;->b:Z

    if-nez v15, :cond_21

    sget-object v15, Lbsz;->c:Ljava/lang/Object;

    monitor-enter v15

    :try_start_6
    sget-boolean v16, Lbsz;->b:Z

    if-nez v16, :cond_20

    sput-boolean v8, Lbsz;->b:Z

    .line 64
    invoke-static {v13}, Lcdz;->e(Landroid/content/Context;)V

    .line 65
    invoke-static {v13}, Lcei;->f(Landroid/content/Context;)V

    const-string v3, "com.google.android.gms"

    .line 66
    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    const/4 v14, 0x0

    goto :goto_10

    .line 67
    :cond_1e
    invoke-static {v13}, Lbos;->a(Landroid/content/Context;)Lbkc;

    move-result-object v3

    const-string v6, "com.google.android.libraries.consentverifier#"

    .line 68
    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v17

    if-eqz v17, :cond_1f

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_f

    .line 71
    :cond_1f
    new-instance v8, Ljava/lang/String;

    .line 68
    invoke-direct {v8, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v6, v8

    .line 69
    :goto_f
    invoke-virtual {v14, v13}, Lbta;->a(Landroid/content/Context;)I

    move-result v8

    sget-object v13, Lbsz;->a:[Ljava/lang/String;

    .line 70
    const/4 v14, 0x0

    invoke-virtual {v3, v6, v8, v13, v14}, Lbkc;->f(Ljava/lang/String;I[Ljava/lang/String;[B)Lbrh;

    move-result-object v8

    new-instance v13, Lbsx;

    invoke-direct {v13, v3, v6}, Lbsx;-><init>(Lbkc;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v8, v13}, Lbrh;->e(Lbrc;)V

    goto :goto_10

    .line 61
    :cond_20
    const/4 v14, 0x0

    .line 72
    :goto_10
    monitor-exit v15

    goto :goto_11

    .line 40
    :catchall_1
    move-exception v0

    .line 72
    monitor-exit v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    .line 61
    :cond_21
    const/4 v14, 0x0

    .line 73
    :goto_11
    sget-object v3, Ldlk;->a:Ldlk;

    .line 74
    invoke-virtual {v3}, Ldlk;->b()Ldll;

    move-result-object v3

    invoke-interface {v3}, Ldll;->d()Z

    move-result v3

    if-nez v3, :cond_22

    move-object/from16 v22, v2

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v31, v7

    const/4 v10, 0x1

    goto/16 :goto_29

    .line 196
    :cond_22
    iget-object v3, v11, Lbsa;->a:Landroid/content/Context;

    sget-object v6, Lbsf;->c:Lbta;

    sget-object v8, Lbte;->a:Lbtd;

    if-eqz v8, :cond_23

    sget-boolean v8, Lbte;->c:Z

    .line 75
    invoke-static {v3, v6}, Lbte;->a(Landroid/content/Context;Lbta;)Z

    move-result v13

    if-eq v8, v13, :cond_27

    :cond_23
    sget-object v8, Lbte;->b:Ljava/lang/Object;

    monitor-enter v8

    .line 76
    :try_start_7
    invoke-static {v3, v6}, Lbte;->a(Landroid/content/Context;Lbta;)Z

    move-result v6

    sget-object v13, Lbte;->a:Lbtd;

    if-eqz v13, :cond_24

    sget-boolean v13, Lbte;->c:Z

    if-eq v13, v6, :cond_26

    :cond_24
    if-eqz v6, :cond_25

    new-instance v13, Lbtb;

    new-instance v15, Lbik;

    const-string v14, "COLLECTION_BASIS_VERIFIER"

    .line 77
    invoke-direct {v15, v3, v14}, Lbik;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v13, v15}, Lbtb;-><init>(Lbik;)V

    sput-object v13, Lbte;->a:Lbtd;

    goto :goto_12

    .line 166
    :cond_25
    new-instance v3, Lbth;

    invoke-direct {v3}, Lbth;-><init>()V

    sput-object v3, Lbte;->a:Lbtd;

    .line 77
    :goto_12
    sput-boolean v6, Lbte;->c:Z

    .line 78
    :cond_26
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_27
    sget-object v3, Lbte;->a:Lbtd;

    .line 79
    invoke-static {v3}, Lcoc;->e(Ljava/lang/Object;)Lcoc;

    move-result-object v3

    .line 80
    :try_start_8
    new-instance v8, Lbsc;

    iget-object v13, v11, Lbsa;->a:Landroid/content/Context;

    .line 61
    move-object v14, v0

    check-cast v14, Lbsf;

    iget-object v14, v14, Lbsf;->d:Landroid/util/LruCache;

    check-cast v0, Lbsf;

    iget-object v0, v0, Lbsf;->e:Landroid/util/LruCache;

    .line 81
    invoke-direct {v8, v13, v14, v0}, Lbsc;-><init>(Landroid/content/Context;Landroid/util/LruCache;Landroid/util/LruCache;)V

    .line 79
    move-object v0, v3

    check-cast v0, Lcof;

    iget-object v0, v0, Lcof;->a:Ljava/lang/Object;

    .line 82
    move-object/from16 v19, v0

    check-cast v19, Lbtd;

    .line 83
    invoke-static {v12}, Ldcp;->I([B)Ldcp;

    move-result-object v13

    new-instance v14, Ljava/util/ArrayDeque;

    .line 84
    invoke-direct {v14}, Ljava/util/ArrayDeque;-><init>()V

    new-instance v15, Lbtg;

    sget-object v17, Lbsf;->c:Lbta;

    sget-object v18, Lbsf;->b:Ljava/util/Map;

    .line 85
    array-length v0, v12

    move-object/from16 v16, v15

    move-object/from16 v20, v11

    move/from16 v21, v0

    move-object/from16 v22, v14

    invoke-direct/range {v16 .. v22}, Lbtg;-><init>(Lbta;Ljava/util/Map;Lbtd;Lbsa;ILjava/util/ArrayDeque;)V

    .line 86
    const v0, 0x7b2090af

    invoke-virtual {v8, v0}, Lbsc;->a(I)Ldqg;

    move-result-object v16

    if-nez v16, :cond_29

    .line 87
    invoke-static {}, Ldlk;->c()Z

    move-result v0

    if-eqz v0, :cond_28

    const/4 v0, 0x7

    .line 88
    invoke-virtual {v15, v0}, Lbtg;->b(I)Lddf;

    move-result-object v0

    invoke-virtual {v15, v0}, Lbtg;->a(Lddf;)V

    :cond_28
    move-object/from16 v22, v2

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v31, v7

    goto/16 :goto_29

    :cond_29
    invoke-virtual {v13}, Ldcp;->C()Z

    move-result v17

    if-nez v17, :cond_2a

    .line 89
    invoke-static/range {v16 .. v16}, Lbsf;->e(Ldqg;)Ldqd;

    move-result-object v0

    sget-object v10, Lcns;->a:Lcns;

    .line 90
    invoke-static {v11, v0, v15, v10}, Lbsf;->c(Lbsa;Ldqd;Lbtg;Lcoc;)Z

    move-result v0

    if-nez v0, :cond_2a

    move-object/from16 v22, v2

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v31, v7

    const/4 v10, 0x0

    goto/16 :goto_29

    .line 91
    :cond_2a
    invoke-static/range {v16 .. v16}, Lbsf;->e(Ldqg;)Ldqd;

    move-result-object v0

    invoke-static {v0}, Lbsf;->a(Ldqd;)Z

    move-result v0

    move/from16 v17, v0

    move-object/from16 v6, v16

    const v0, 0x7b2090af

    const/4 v10, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    :goto_13
    invoke-virtual {v13}, Ldcp;->C()Z

    move-result v19

    if-nez v19, :cond_57

    .line 92
    invoke-virtual {v13}, Ldcp;->m()I

    move-result v9
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9

    move-object/from16 v20, v4

    :try_start_9
    invoke-static {v9}, Ldge;->a(I)I

    move-result v4
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    move-object/from16 v21, v5

    :try_start_a
    invoke-static {v9}, Ldge;->b(I)I

    move-result v5
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    move-object/from16 v22, v2

    :try_start_b
    iget-object v2, v6, Ldqg;->b:Ldem;

    .line 93
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    move-object/from16 v29, v11

    move-object/from16 v30, v12

    int-to-long v11, v4

    .line 94
    :try_start_c
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    move-object/from16 v31, v7

    if-nez v2, :cond_2d

    if-eqz v17, :cond_2b

    .line 95
    :try_start_d
    invoke-virtual {v13, v9}, Ldcp;->E(I)Z

    move-object/from16 v2, v29

    const/16 v17, 0x1

    goto/16 :goto_20

    .line 143
    :cond_2b
    invoke-static {}, Ldlk;->c()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 144
    const/16 v1, 0x8

    invoke-virtual {v15, v1}, Lbtg;->b(I)Lddf;

    move-result-object v0

    .line 145
    invoke-virtual {v0, v11, v12}, Lddf;->A(J)V

    .line 146
    invoke-virtual {v15, v0}, Lbtg;->a(Lddf;)V

    :cond_2c
    const/4 v10, 0x0

    goto/16 :goto_29

    :cond_2d
    iget-object v2, v6, Ldqg;->b:Ldem;

    .line 96
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_56

    .line 97
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldqc;

    const/4 v2, 0x3

    const/4 v7, 0x2

    if-eq v5, v7, :cond_2f

    if-eq v5, v2, :cond_2f

    const/4 v7, 0x4

    if-eq v5, v7, :cond_2e

    const/4 v7, 0x1

    goto :goto_15

    .line 166
    :cond_2e
    const/4 v5, 0x4

    goto :goto_14

    :cond_2f
    nop

    :goto_14
    const/4 v7, 0x0

    .line 97
    :goto_15
    if-nez v7, :cond_46

    iget v7, v1, Ldqc;->a:I

    const/16 v16, 0x2

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_30

    goto :goto_16

    .line 110
    :cond_30
    if-eqz v10, :cond_45

    invoke-static {v0, v4}, Lbsf;->b(II)Z

    move-result v7

    if-nez v7, :cond_31

    move-object/from16 v2, v29

    goto/16 :goto_1e

    .line 97
    :cond_31
    :goto_16
    const/4 v7, 0x2

    if-eq v5, v7, :cond_33

    if-ne v5, v2, :cond_32

    const/4 v5, 0x3

    const/4 v7, 0x3

    goto :goto_17

    .line 110
    :cond_32
    move-object/from16 v2, v29

    goto/16 :goto_20

    :cond_33
    move v7, v5

    .line 97
    :goto_17
    iget v11, v1, Ldqc;->b:I

    .line 98
    invoke-virtual {v8, v11}, Lbsc;->d(I)Z

    move-result v11

    if-nez v11, :cond_35

    invoke-static {v0, v4}, Lbsf;->b(II)Z

    move-result v11

    if-nez v11, :cond_35

    .line 123
    invoke-static {v1}, Lbsf;->d(Ldqc;)Ldqd;

    move-result-object v1

    .line 124
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcoc;->e(Ljava/lang/Object;)Lcoc;

    move-result-object v2
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    .line 125
    move-object/from16 v11, v29

    :try_start_e
    invoke-static {v11, v1, v15, v2}, Lbsf;->c(Lbsa;Ldqd;Lbtg;Lcoc;)Z

    move-result v1

    if-nez v1, :cond_34

    const/4 v10, 0x0

    goto/16 :goto_29

    .line 126
    :cond_34
    invoke-virtual {v13, v9}, Ldcp;->E(I)Z

    move-object v2, v11

    goto/16 :goto_20

    .line 98
    :cond_35
    move-object/from16 v11, v29

    .line 126
    new-instance v5, Lbsg;

    move-object/from16 v23, v5

    move/from16 v24, v0

    move/from16 v27, v17

    move/from16 v28, v4

    invoke-direct/range {v23 .. v28}, Lbsg;-><init>(ILjava/lang/Integer;IZI)V

    .line 99
    invoke-virtual {v14, v5}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    invoke-static {v0, v4}, Lbsf;->b(II)Z

    move-result v0

    if-eqz v0, :cond_3e

    if-nez v10, :cond_36

    const/4 v0, 0x0

    goto :goto_19

    .line 113
    :cond_36
    const-string v0, "type.googleapis.com/"

    .line 100
    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_37

    const/4 v0, 0x0

    goto :goto_19

    :cond_37
    const/16 v0, 0x14

    .line 101
    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-static {v0}, Lr;->g(Ljava/lang/String;)I

    move-result v0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2

    :try_start_f
    iget-object v5, v8, Lbsc;->a:Landroid/util/LruCache;

    .line 103
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-nez v5, :cond_3a

    iget-object v5, v8, Lbsc;->b:Ldqj;

    if-nez v5, :cond_38

    .line 104
    invoke-virtual {v8}, Lbsc;->c()Ldqj;

    move-result-object v5

    iput-object v5, v8, Lbsc;->b:Ldqj;

    :cond_38
    iget-object v5, v8, Lbsc;->b:Ldqj;

    iget-object v5, v5, Ldqj;->b:Ldem;

    .line 105
    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    .line 106
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 107
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v8, Lbsc;->a:Landroid/util/LruCache;

    .line 108
    invoke-virtual {v6, v0, v5}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    .line 167
    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 111
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 110
    :cond_3a
    nop

    .line 109
    :goto_18
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 110
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2

    goto :goto_19

    .line 167
    :catch_1
    move-exception v0

    const/4 v0, 0x0

    .line 99
    :goto_19
    if-nez v0, :cond_3d

    .line 147
    :try_start_10
    invoke-static {}, Ldlk;->c()Z

    move-result v0

    if-eqz v0, :cond_3c

    const/16 v0, 0x9

    .line 148
    invoke-virtual {v15, v0}, Lbtg;->b(I)Lddf;

    move-result-object v0

    .line 149
    invoke-static {v10}, Lcoe;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lddf;->c:Z

    if-eqz v2, :cond_3b

    .line 150
    invoke-virtual {v0}, Lddf;->k()V

    const/4 v2, 0x0

    iput-boolean v2, v0, Lddf;->c:Z

    :cond_3b
    iget-object v2, v0, Lddf;->b:Lddk;

    .line 151
    check-cast v2, Ldgn;

    sget-object v4, Ldgn;->m:Ldgn;

    iget v4, v2, Ldgn;->a:I

    or-int/lit8 v4, v4, 0x20

    iput v4, v2, Ldgn;->a:I

    iput-object v1, v2, Ldgn;->g:Ljava/lang/String;

    .line 152
    invoke-virtual {v15, v0}, Lbtg;->a(Lddf;)V

    :cond_3c
    const/4 v10, 0x0

    goto/16 :goto_29

    .line 112
    :cond_3d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1a

    .line 110
    :cond_3e
    iget v0, v1, Ldqc;->b:I

    .line 112
    :goto_1a
    if-ne v7, v2, :cond_3f

    const/4 v2, 0x0

    goto :goto_1b

    .line 113
    :cond_3f
    invoke-virtual {v13}, Ldcp;->j()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 112
    :goto_1b
    invoke-virtual {v13}, Ldcp;->d()I

    move-result v26

    .line 114
    invoke-virtual {v8, v0}, Lbsc;->b(I)Ldqg;

    move-result-object v6

    if-nez v17, :cond_41

    .line 115
    invoke-static {v1}, Lbsf;->d(Ldqc;)Ldqd;

    move-result-object v5

    invoke-static {v5}, Lbsf;->a(Ldqd;)Z

    move-result v5

    if-nez v5, :cond_41

    .line 116
    invoke-static {v6}, Lbsf;->e(Ldqg;)Ldqd;

    move-result-object v5

    invoke-static {v5}, Lbsf;->a(Ldqd;)Z

    move-result v5

    if-eqz v5, :cond_40

    const/4 v5, 0x1

    goto :goto_1c

    .line 122
    :cond_40
    const/4 v5, 0x0

    goto :goto_1c

    :cond_41
    const/4 v5, 0x1

    .line 116
    :goto_1c
    if-eqz v2, :cond_43

    .line 117
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-lez v9, :cond_42

    goto :goto_1d

    .line 122
    :cond_42
    move-object/from16 v25, v2

    move/from16 v17, v5

    move v5, v7

    move-object v2, v11

    const/4 v10, 0x0

    goto/16 :goto_20

    .line 118
    :cond_43
    :goto_1d
    invoke-static {v1}, Lbsf;->d(Ldqc;)Ldqd;

    move-result-object v1

    .line 119
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcoc;->e(Ljava/lang/Object;)Lcoc;

    move-result-object v4

    .line 120
    invoke-static {v11, v1, v15, v4}, Lbsf;->c(Lbsa;Ldqd;Lbtg;Lcoc;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 121
    invoke-static {v6}, Lbsf;->e(Ldqg;)Ldqd;

    move-result-object v1

    sget-object v4, Lcns;->a:Lcns;

    .line 122
    invoke-static {v11, v1, v15, v4}, Lbsf;->c(Lbsa;Ldqd;Lbtg;Lcoc;)Z

    move-result v1
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_2

    if-nez v1, :cond_42

    :cond_44
    const/4 v10, 0x0

    goto/16 :goto_29

    .line 168
    :catch_2
    move-exception v0

    move-object v2, v11

    goto/16 :goto_28

    .line 110
    :cond_45
    move-object/from16 v2, v29

    goto :goto_1e

    .line 132
    :cond_46
    move-object/from16 v2, v29

    :try_start_11
    iget v7, v1, Ldqc;->a:I

    const/4 v10, 0x2

    and-int/2addr v7, v10

    if-eqz v7, :cond_48

    iget v7, v1, Ldqc;->b:I

    .line 127
    invoke-virtual {v8, v7}, Lbsc;->d(I)Z

    move-result v7

    if-eqz v7, :cond_48

    .line 163
    invoke-static {}, Ldlk;->c()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 164
    const/16 v1, 0xa

    invoke-virtual {v15, v1}, Lbtg;->b(I)Lddf;

    move-result-object v0

    .line 165
    invoke-virtual {v0, v11, v12}, Lddf;->A(J)V

    .line 166
    invoke-virtual {v15, v0}, Lbtg;->a(Lddf;)V

    :cond_47
    const/4 v10, 0x0

    goto/16 :goto_29

    .line 128
    :cond_48
    :goto_1e
    invoke-static {v1}, Lbsf;->d(Ldqc;)Ldqd;

    move-result-object v1

    if-nez v17, :cond_4a

    .line 129
    invoke-static {v1}, Lbsf;->a(Ldqd;)Z

    move-result v7

    if-nez v7, :cond_4a

    .line 159
    invoke-static {}, Ldlk;->c()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 160
    const/16 v1, 0x8

    invoke-virtual {v15, v1}, Lbtg;->b(I)Lddf;

    move-result-object v0

    .line 161
    invoke-virtual {v0, v11, v12}, Lddf;->A(J)V

    .line 162
    invoke-virtual {v15, v0}, Lbtg;->a(Lddf;)V

    :cond_49
    const/4 v10, 0x0

    goto/16 :goto_29

    .line 130
    :cond_4a
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Lcoc;->e(Ljava/lang/Object;)Lcoc;

    move-result-object v7

    .line 131
    invoke-static {v2, v1, v15, v7}, Lbsf;->c(Lbsa;Ldqd;Lbtg;Lcoc;)Z

    move-result v1

    if-nez v1, :cond_4b

    const/4 v10, 0x0

    goto/16 :goto_29

    :cond_4b
    sget v1, Lbsf;->a:I

    if-ne v0, v1, :cond_4c

    const/4 v1, 0x1

    if-ne v4, v1, :cond_4c

    .line 133
    invoke-virtual {v13}, Ldcp;->x()Ljava/lang/String;

    move-result-object v1

    goto :goto_1f

    .line 132
    :cond_4c
    invoke-virtual {v13, v9}, Ldcp;->E(I)Z

    const/4 v1, 0x0

    .line 133
    :goto_1f
    move-object v10, v1

    .line 95
    :goto_20
    if-nez v25, :cond_4e

    const/4 v1, 0x4

    if-ne v5, v1, :cond_4d

    goto :goto_21

    .line 134
    :cond_4d
    goto/16 :goto_24

    .line 95
    :cond_4e
    :goto_21
    if-nez v25, :cond_4f

    invoke-virtual {v13}, Ldcp;->d()I

    move-result v1

    goto :goto_22

    .line 134
    :cond_4f
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int v1, v26, v1

    .line 95
    :goto_22
    nop

    :goto_23
    invoke-virtual {v13}, Ldcp;->d()I

    move-result v4

    if-lt v4, v1, :cond_55

    invoke-virtual {v13}, Ldcp;->d()I

    move-result v0

    const/16 v4, 0xb

    if-le v0, v1, :cond_51

    .line 153
    invoke-static {}, Ldlk;->c()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 154
    invoke-virtual {v15, v4}, Lbtg;->b(I)Lddf;

    move-result-object v0

    .line 155
    invoke-virtual {v15, v0}, Lbtg;->a(Lddf;)V

    :cond_50
    const/4 v10, 0x0

    goto/16 :goto_29

    .line 135
    :cond_51
    invoke-virtual {v14}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 156
    invoke-static {}, Ldlk;->c()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 157
    invoke-virtual {v15, v4}, Lbtg;->b(I)Lddf;

    move-result-object v0

    .line 158
    invoke-virtual {v15, v0}, Lbtg;->a(Lddf;)V

    :cond_52
    const/4 v10, 0x0

    goto/16 :goto_29

    .line 136
    :cond_53
    invoke-virtual {v14}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsg;

    .line 137
    iget v1, v0, Lbsg;->a:I

    .line 138
    iget-object v4, v0, Lbsg;->b:Ljava/lang/Integer;

    .line 139
    iget v5, v0, Lbsg;->c:I

    .line 140
    iget-boolean v0, v0, Lbsg;->d:Z

    .line 141
    invoke-virtual {v8, v1}, Lbsc;->b(I)Ldqg;

    move-result-object v6

    if-nez v4, :cond_54

    move/from16 v17, v0

    move v0, v1

    move-object/from16 v25, v4

    move/from16 v26, v5

    goto :goto_24

    .line 142
    :cond_54
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v7, v5

    move/from16 v17, v0

    move v0, v1

    move-object/from16 v25, v4

    move/from16 v26, v5

    move v1, v7

    goto :goto_23

    :cond_55
    nop

    .line 141
    :goto_24
    move-object/from16 v1, p0

    move-object v11, v2

    move-object/from16 v4, v20

    move-object/from16 v5, v21

    move-object/from16 v2, v22

    move-object/from16 v12, v30

    move-object/from16 v7, v31

    const/16 v9, 0x8

    goto/16 :goto_13

    .line 183
    :cond_56
    move-object/from16 v2, v29

    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 167
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_3

    .line 168
    :catch_3
    move-exception v0

    goto :goto_28

    :catch_4
    move-exception v0

    goto :goto_25

    :catch_5
    move-exception v0

    move-object/from16 v31, v7

    :goto_25
    move-object/from16 v2, v29

    goto :goto_28

    :catch_6
    move-exception v0

    goto :goto_27

    :catch_7
    move-exception v0

    move-object/from16 v22, v2

    goto :goto_27

    :catch_8
    move-exception v0

    move-object/from16 v22, v2

    goto :goto_26

    .line 166
    :cond_57
    move-object/from16 v22, v2

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v31, v7

    const/4 v10, 0x1

    goto/16 :goto_29

    .line 168
    :catch_9
    move-exception v0

    move-object/from16 v22, v2

    move-object/from16 v20, v4

    :goto_26
    move-object/from16 v21, v5

    :goto_27
    move-object/from16 v31, v7

    move-object v2, v11

    move-object/from16 v30, v12

    :goto_28
    invoke-static {}, Ldlk;->c()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 169
    sget-object v0, Ldgn;->m:Ldgn;

    .line 170
    invoke-virtual {v0}, Lddk;->n()Lddf;

    move-result-object v0

    iget-object v1, v2, Lbsa;->a:Landroid/content/Context;

    .line 171
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-boolean v4, v0, Lddf;->c:Z

    if-eqz v4, :cond_58

    invoke-virtual {v0}, Lddf;->k()V

    const/4 v4, 0x0

    iput-boolean v4, v0, Lddf;->c:Z

    :cond_58
    iget-object v4, v0, Lddf;->b:Lddk;

    .line 172
    check-cast v4, Ldgn;

    .line 173
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v5, v4, Ldgn;->a:I

    const/4 v6, 0x1

    or-int/2addr v5, v6

    iput v5, v4, Ldgn;->a:I

    iput-object v1, v4, Ldgn;->b:Ljava/lang/String;

    sget-object v1, Lbsf;->c:Lbta;

    iget-object v2, v2, Lbsa;->a:Landroid/content/Context;

    .line 174
    invoke-virtual {v1, v2}, Lbta;->a(Landroid/content/Context;)I

    move-result v1

    iget-boolean v2, v0, Lddf;->c:Z

    if-eqz v2, :cond_59

    .line 175
    invoke-virtual {v0}, Lddf;->k()V

    const/4 v2, 0x0

    iput-boolean v2, v0, Lddf;->c:Z

    :cond_59
    iget-object v2, v0, Lddf;->b:Lddk;

    .line 176
    check-cast v2, Ldgn;

    iget v4, v2, Ldgn;->a:I

    const/4 v5, 0x2

    or-int/2addr v4, v5

    iput v4, v2, Ldgn;->a:I

    iput v1, v2, Ldgn;->c:I

    .line 177
    invoke-static {v2}, Ldgn;->k(Ldgn;)V

    iget-boolean v1, v0, Lddf;->c:Z

    if-eqz v1, :cond_5a

    .line 178
    invoke-virtual {v0}, Lddf;->k()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lddf;->c:Z

    :cond_5a
    iget-object v1, v0, Lddf;->b:Lddk;

    .line 179
    check-cast v1, Ldgn;

    iget v2, v1, Ldgn;->a:I

    const/16 v4, 0x8

    or-int/2addr v2, v4

    iput v2, v1, Ldgn;->a:I

    const-wide/32 v4, -0x79209ddf

    iput-wide v4, v1, Ldgn;->e:J

    .line 180
    move-object/from16 v4, v30

    array-length v4, v4

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Ldgn;->a:I

    int-to-long v4, v4

    iput-wide v4, v1, Ldgn;->f:J

    .line 181
    const/4 v2, 0x5

    invoke-static {v2}, Ldpx;->u(I)I

    move-result v2

    iput v2, v1, Ldgn;->h:I

    iget v2, v1, Ldgn;->a:I

    or-int/lit8 v2, v2, 0x40

    iput v2, v1, Ldgn;->a:I

    .line 182
    invoke-virtual {v0}, Lddf;->f()Lddk;

    move-result-object v0

    check-cast v0, Ldgn;

    .line 79
    check-cast v3, Lcof;

    iget-object v1, v3, Lcof;->a:Ljava/lang/Object;

    .line 183
    check-cast v1, Lbtd;

    invoke-interface {v1, v0}, Lbtd;->a(Ldgn;)V

    const/4 v10, 0x0

    goto :goto_29

    .line 111
    :cond_5b
    const/4 v10, 0x0

    .line 74
    :goto_29
    sget-object v0, Ldlk;->a:Ldlk;

    .line 184
    invoke-virtual {v0}, Ldlk;->b()Ldll;

    move-result-object v0

    invoke-interface {v0}, Ldll;->f()Z

    move-result v0

    if-eqz v0, :cond_5d

    if-eqz v10, :cond_5c

    move-object/from16 v1, p0

    goto :goto_2a

    .line 189
    :cond_5c
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    .line 196
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lbku;->j(Lcom/google/android/gms/common/api/Status;)V

    return-void

    .line 184
    :cond_5d
    move-object/from16 v1, p0

    goto :goto_2a

    .line 195
    :catchall_2
    move-exception v0

    .line 78
    :try_start_12
    monitor-exit v8
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    throw v0

    .line 63
    :cond_5e
    new-instance v0, Landroid/os/NetworkOnMainThreadException;

    invoke-direct {v0}, Landroid/os/NetworkOnMainThreadException;-><init>()V

    throw v0

    .line 56
    :cond_5f
    move-object/from16 v22, v2

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    .line 185
    :goto_2a
    :try_start_13
    invoke-virtual/range {p1 .. p1}, Lbmn;->w()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lbiu;

    .line 186
    invoke-virtual {v0}, Lasp;->a()Landroid/os/Parcel;

    move-result-object v2

    .line 187
    move-object/from16 v3, v22

    invoke-static {v2, v3}, Lasr;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 188
    move-object/from16 v3, v21

    invoke-static {v2, v3}, Lasr;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 189
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Lasp;->d(ILandroid/os/Parcel;)V
    :try_end_13
    .catch Landroid/os/TransactionTooLargeException; {:try_start_13 .. :try_end_13} :catch_a

    return-void

    .line 72
    :catch_a
    move-exception v0

    const-string v2, "ClearcutLoggerApiImpl"

    const-string v3, "Log event caused a TransactionTooLargeException"

    .line 190
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lbim;

    move-object/from16 v6, v20

    iget-object v2, v6, Lbih;->f:Ljava/lang/String;

    const/16 v3, 0x791c

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4}, Lbim;-><init>(Ljava/lang/String;II)V

    iget-object v2, v1, Lbir;->a:Lbkc;

    new-instance v3, Lbid;

    new-array v5, v4, [Lbim;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    .line 191
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Lbid;-><init>(Ljava/util/List;)V

    invoke-static {}, Lbmc;->a()Lbmb;

    move-result-object v0

    new-instance v5, Lbio;

    invoke-direct {v5, v3}, Lbio;-><init>(Lbid;)V

    iput-object v5, v0, Lbmb;->a:Lblx;

    new-array v3, v4, [Lbjb;

    .line 192
    sget-object v4, Lbil;->a:Lbjb;

    aput-object v4, v3, v6

    iput-object v3, v0, Lbmb;->b:[Lbjb;

    .line 193
    invoke-virtual {v0}, Lbmb;->b()V

    .line 194
    invoke-virtual {v0}, Lbmb;->a()Lbmc;

    move-result-object v0

    .line 195
    invoke-virtual {v2, v0}, Lbkc;->i(Lbmc;)V

    return-void

    .line 7
    :catch_b
    move-exception v0

    const-string v2, "ClearcutLoggerApiImpl"

    const-string v3, "derived ClearcutLogger.MessageProducer "

    .line 57
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v2, "MessageProducer"

    const/16 v3, 0xa

    invoke-direct {v0, v3, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 58
    invoke-virtual {v1, v0}, Lbku;->j(Lcom/google/android/gms/common/api/Status;)V

    return-void

    .line 5
    :catch_c
    move-exception v0

    const-string v2, "ClearcutLoggerApiImpl"

    const-string v3, "derived ClearcutLogger.EventModifier "

    .line 6
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v2, "EventModifier"

    const/16 v3, 0xa

    invoke-direct {v0, v3, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 7
    invoke-virtual {v1, v0}, Lbku;->j(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method protected final bridge synthetic h(Lbjs;)V
    .locals 0

    .line 1
    check-cast p1, Lbis;

    invoke-virtual {p0, p1}, Lbir;->g(Lbis;)V

    return-void
.end method
