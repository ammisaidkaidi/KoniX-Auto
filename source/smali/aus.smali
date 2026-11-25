.class public final Laus;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lauj;

.field public final b:Lauj;

.field public final c:Lauj;

.field public final d:Lauj;

.field public final e:Laun;


# direct methods
.method public constructor <init>(Ldhq;Ldny;Lcbv;Lbcj;Latt;Landroid/content/Context;Ldgq;[B[B[B)V
    .locals 12

    .line 1
    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/media/AudioFormat$Builder;

    invoke-direct {v1}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 2
    const v2, 0xbb80

    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    .line 3
    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v1

    new-instance v3, Landroid/media/AudioFormat$Builder;

    .line 5
    invoke-direct {v3}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 6
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v3

    .line 7
    sget-object v4, Ldie;->a:Ldie;

    .line 8
    invoke-virtual {v4}, Ldie;->b()Ldif;

    move-result-object v4

    invoke-interface {v4}, Ldif;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 9
    invoke-virtual {v3, v2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    goto :goto_0

    .line 18
    :cond_0
    const/16 v2, 0x3e80

    .line 10
    invoke-virtual {v3, v2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    .line 11
    :goto_0
    invoke-virtual {v3}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v5, 0x3

    .line 12
    move-object v4, p3

    move-object v6, v1

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-static/range {v3 .. v9}, Laus;->b(ILcbv;ILandroid/media/AudioFormat;Latt;Landroid/content/Context;Ldgq;)Lauj;

    move-result-object v3

    iput-object v3, v0, Laus;->a:Lauj;

    const/4 v4, 0x1

    const/4 v6, 0x1

    .line 13
    move-object v5, p3

    move-object v7, v2

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-static/range {v4 .. v10}, Laus;->b(ILcbv;ILandroid/media/AudioFormat;Latt;Landroid/content/Context;Ldgq;)Lauj;

    move-result-object v3

    iput-object v3, v0, Laus;->c:Lauj;

    .line 14
    invoke-interface/range {p4 .. p4}, Lbcj;->e()Z

    move-result v3

    const/4 v11, 0x0

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    const/4 v5, 0x3

    .line 15
    move-object v4, p3

    move-object v6, v1

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-static/range {v3 .. v9}, Laus;->b(ILcbv;ILandroid/media/AudioFormat;Latt;Landroid/content/Context;Ldgq;)Lauj;

    move-result-object v1

    iput-object v1, v0, Laus;->b:Lauj;

    const/4 v4, 0x2

    const/4 v6, 0x1

    .line 16
    move-object v5, p3

    move-object v7, v2

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-static/range {v4 .. v10}, Laus;->b(ILcbv;ILandroid/media/AudioFormat;Latt;Landroid/content/Context;Ldgq;)Lauj;

    move-result-object v1

    iput-object v1, v0, Laus;->d:Lauj;

    goto :goto_1

    .line 18
    :cond_1
    iput-object v11, v0, Laus;->b:Lauj;

    iput-object v11, v0, Laus;->d:Lauj;

    .line 16
    :goto_1
    move-object v1, p1

    iget-object v1, v1, Ldhq;->a:Landroid/content/Context;

    .line 17
    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 18
    invoke-interface {p2}, Ldny;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laun;

    iput-object v1, v0, Laus;->e:Laun;

    return-void

    :cond_2
    iput-object v11, v0, Laus;->e:Laun;

    return-void
.end method

.method private static a(ILauc;Landroid/media/AudioFormat;)Latq;
    .locals 1

    .line 1
    new-instance v0, Laue;

    invoke-direct {v0, p1, p2}, Laue;-><init>(Lauc;Landroid/media/AudioFormat;)V

    add-int/lit8 p0, p0, -0x1

    packed-switch p0, :pswitch_data_0

    new-instance p0, Latp;

    .line 2
    invoke-direct {p0, v0}, Latp;-><init>(Laue;)V

    return-object p0

    :pswitch_0
    new-instance p0, Laur;

    invoke-direct {p0, v0}, Laur;-><init>(Laue;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private static b(ILcbv;ILandroid/media/AudioFormat;Latt;Landroid/content/Context;Ldgq;)Lauj;
    .locals 9

    .line 1
    new-instance v1, Ljava/util/EnumMap;

    const-class v0, Lauc;

    invoke-direct {v1, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    invoke-static {p2}, Lbxr;->b(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Deprecated stream type "

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 3
    :pswitch_1
    sget-object v0, Lauc;->a:Lauc;

    sget-object v2, Lauc;->a:Lauc;

    .line 4
    invoke-static {p0, v2, p3}, Laus;->a(ILauc;Landroid/media/AudioFormat;)Latq;

    move-result-object p0

    .line 3
    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :pswitch_2
    sget-object v0, Lauc;->b:Lauc;

    sget-object v2, Lauc;->b:Lauc;

    .line 6
    invoke-static {p0, v2, p3}, Laus;->a(ILauc;Landroid/media/AudioFormat;)Latq;

    move-result-object v2

    .line 5
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lauc;->c:Lauc;

    sget-object v2, Lauc;->c:Lauc;

    .line 7
    invoke-static {p0, v2, p3}, Laus;->a(ILauc;Landroid/media/AudioFormat;)Latq;

    move-result-object p0

    .line 8
    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :goto_0
    new-instance p0, Lauj;

    .line 9
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcbv;->a:Ldny;

    check-cast p1, Ldhy;

    iget-object p1, p1, Ldhy;->a:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Lbbl;

    .line 10
    invoke-static {}, Lcde;->c()Lcxz;

    move-result-object v5

    .line 9
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lauj;-><init>(Ljava/util/Map;ILandroid/media/AudioFormat;Lbbl;Lcxz;Latt;Landroid/content/Context;Ldgq;)V

    return-object p0

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/String;

    .line 2
    invoke-direct {p0, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
