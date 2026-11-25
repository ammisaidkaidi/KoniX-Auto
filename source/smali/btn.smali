.class public final synthetic Lbtn;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldny;


# static fields
.field public static final synthetic a:Lbtn;

.field public static final synthetic b:Lbtn;

.field public static final synthetic c:Lbtn;

.field public static final synthetic d:Lbtn;

.field public static final synthetic e:Lbtn;

.field public static final synthetic f:Lbtn;

.field public static final synthetic g:Lbtn;

.field public static final synthetic h:Lbtn;

.field public static final synthetic i:Lbtn;

.field public static final synthetic j:Lbtn;

.field public static final synthetic k:Lbtn;

.field public static final synthetic l:Lbtn;


# instance fields
.field private final synthetic m:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lbtn;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lbtn;-><init>(I)V

    sput-object v0, Lbtn;->l:Lbtn;

    new-instance v0, Lbtn;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lbtn;-><init>(I)V

    sput-object v0, Lbtn;->k:Lbtn;

    new-instance v0, Lbtn;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lbtn;-><init>(I)V

    sput-object v0, Lbtn;->j:Lbtn;

    new-instance v0, Lbtn;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lbtn;-><init>(I)V

    sput-object v0, Lbtn;->i:Lbtn;

    new-instance v0, Lbtn;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lbtn;-><init>(I)V

    sput-object v0, Lbtn;->h:Lbtn;

    new-instance v0, Lbtn;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lbtn;-><init>(I)V

    sput-object v0, Lbtn;->g:Lbtn;

    new-instance v0, Lbtn;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lbtn;-><init>(I)V

    sput-object v0, Lbtn;->f:Lbtn;

    new-instance v0, Lbtn;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lbtn;-><init>(I)V

    sput-object v0, Lbtn;->e:Lbtn;

    new-instance v0, Lbtn;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lbtn;-><init>(I)V

    sput-object v0, Lbtn;->d:Lbtn;

    new-instance v0, Lbtn;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lbtn;-><init>(I)V

    sput-object v0, Lbtn;->c:Lbtn;

    new-instance v0, Lbtn;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lbtn;-><init>(I)V

    sput-object v0, Lbtn;->b:Lbtn;

    new-instance v0, Lbtn;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbtn;-><init>(I)V

    sput-object v0, Lbtn;->a:Lbtn;

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lbtn;->m:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 13

    .line 16
    iget v0, p0, Lbtn;->m:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "Missing required properties:"

    const-string v5, " enablement"

    const/4 v6, 0x0

    packed-switch v0, :pswitch_data_0

    .line 37
    return-object v3

    .line 1
    :pswitch_0
    invoke-static {}, Lbyq;->c()Lbyp;

    move-result-object v0

    invoke-virtual {v0, v6}, Lbyp;->c(Z)V

    invoke-virtual {v0}, Lbyp;->a()Lbyq;

    move-result-object v0

    return-object v0

    :pswitch_1
    new-instance v0, Lcba;

    invoke-direct {v0}, Lcba;-><init>()V

    const/16 v3, 0xa

    .line 2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcba;->a:Ljava/lang/Integer;

    .line 3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcba;->b:Ljava/lang/Boolean;

    new-instance v1, Lact;

    invoke-direct {v1}, Lact;-><init>()V

    iput-object v1, v0, Lcba;->d:Lact;

    iput v2, v0, Lcba;->c:I

    iget-object v1, v0, Lcba;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    iget-object v2, v0, Lcba;->d:Lact;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcba;->b:Ljava/lang/Boolean;

    if-nez v2, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    new-instance v2, Lcbb;

    .line 10
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, v0, Lcba;->d:Lact;

    iget-object v0, v0, Lcba;->b:Ljava/lang/Boolean;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Lcbb;-><init>(ILact;Z[B[B)V

    return-object v2

    .line 3
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Lcba;->c:I

    if-nez v2, :cond_2

    .line 5
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v2, v0, Lcba;->a:Ljava/lang/Integer;

    if-nez v2, :cond_3

    .line 6
    const-string v2, " rateLimitPerSecond"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v2, v0, Lcba;->d:Lact;

    if-nez v2, :cond_4

    .line 7
    const-string v2, " dynamicSampler"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v0, v0, Lcba;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_5

    .line 8
    const-string v0, " recordTimerDuration"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :pswitch_2
    invoke-static {}, Lcak;->c()Lcaj;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcaj;->b(Z)V

    invoke-virtual {v0}, Lcaj;->a()Lcak;

    move-result-object v0

    return-object v0

    .line 13
    :pswitch_3
    invoke-static {}, Lbzh;->c()Lbzg;

    move-result-object v0

    invoke-virtual {v0, v6}, Lbzg;->b(Z)V

    invoke-virtual {v0}, Lbzg;->a()Lbzh;

    move-result-object v0

    return-object v0

    .line 14
    :pswitch_4
    invoke-static {}, Lbyk;->c()Lbyj;

    move-result-object v0

    invoke-virtual {v0, v6}, Lbyj;->b(Z)V

    invoke-virtual {v0}, Lbyj;->a()Lbyk;

    move-result-object v0

    return-object v0

    .line 15
    :pswitch_5
    invoke-static {}, Lbxf;->c()Lcbd;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcbd;->d(Z)V

    invoke-virtual {v0}, Lcbd;->c()Lbxf;

    move-result-object v0

    return-object v0

    .line 16
    :pswitch_6
    new-instance v0, Lbww;

    invoke-direct {v0}, Lbww;-><init>()V

    const/high16 v2, 0x200000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lbww;->a:Ljava/lang/Integer;

    const/16 v2, 0x7530

    .line 17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lbww;->b:Ljava/lang/Integer;

    const/16 v2, 0x1388

    .line 18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lbww;->c:Ljava/lang/Integer;

    const/16 v2, 0x3e8

    .line 19
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lbww;->d:Ljava/lang/Integer;

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    .line 20
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v0, Lbww;->e:Ljava/lang/Double;

    iput v1, v0, Lbww;->f:I

    iget-object v1, v0, Lbww;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    iget-object v2, v0, Lbww;->b:Ljava/lang/Integer;

    if-eqz v2, :cond_7

    iget-object v2, v0, Lbww;->c:Ljava/lang/Integer;

    if-eqz v2, :cond_7

    iget-object v2, v0, Lbww;->d:Ljava/lang/Integer;

    if-eqz v2, :cond_7

    iget-object v2, v0, Lbww;->e:Ljava/lang/Double;

    if-nez v2, :cond_6

    goto :goto_1

    .line 28
    :cond_6
    new-instance v2, Lbwx;

    .line 29
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v1, v0, Lbww;->b:Ljava/lang/Integer;

    .line 30
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v1, v0, Lbww;->c:Ljava/lang/Integer;

    .line 31
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v1, v0, Lbww;->d:Ljava/lang/Integer;

    .line 32
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v0, v0, Lbww;->e:Ljava/lang/Double;

    .line 33
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lbwx;-><init>(IIIID)V

    return-object v2

    .line 20
    :cond_7
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Lbww;->f:I

    if-nez v2, :cond_8

    .line 22
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    iget-object v2, v0, Lbww;->a:Ljava/lang/Integer;

    if-nez v2, :cond_9

    .line 23
    const-string v2, " maxBufferSizeBytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    iget-object v2, v0, Lbww;->b:Ljava/lang/Integer;

    if-nez v2, :cond_a

    .line 24
    const-string v2, " sampleDurationMs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    iget-object v2, v0, Lbww;->c:Ljava/lang/Integer;

    if-nez v2, :cond_b

    .line 25
    const-string v2, " sampleDurationSkewMs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    iget-object v2, v0, Lbww;->d:Ljava/lang/Integer;

    if-nez v2, :cond_c

    .line 26
    const-string v2, " sampleFrequencyMicro"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    iget-object v0, v0, Lbww;->e:Ljava/lang/Double;

    if-nez v0, :cond_d

    .line 27
    const-string v0, " samplesPerEpoch"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 28
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :pswitch_7
    new-instance v0, Lbvq;

    invoke-direct {v0}, Lbvq;-><init>()V

    sget-object v1, Lbvp;->a:Lbvp;

    iput-object v1, v0, Lbvq;->b:Lbvp;

    iput v2, v0, Lbvq;->a:I

    iget-object v1, v0, Lbvq;->b:Lbvp;

    if-nez v1, :cond_10

    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Lbvq;->a:I

    if-nez v2, :cond_e

    .line 35
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    iget-object v0, v0, Lbvq;->b:Lbvp;

    if-nez v0, :cond_f

    .line 36
    const-string v0, " metricExtensionProvider"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance v0, Lbvr;

    invoke-direct {v0, v1}, Lbvr;-><init>(Lbvp;)V

    return-object v0

    :pswitch_8
    new-instance v0, Lbxn;

    invoke-direct {v0, v3}, Lbxn;-><init>([B)V

    return-object v0

    .line 38
    :pswitch_9
    invoke-static {}, Lcap;->c()Lcao;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcao;->b(Z)V

    invoke-virtual {v0}, Lcao;->a()Lcap;

    move-result-object v0

    return-object v0

    .line 39
    :pswitch_a
    invoke-static {}, Lcbe;->c()Lcbd;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcbd;->b(Z)V

    invoke-virtual {v0}, Lcbd;->a()Lcbe;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
