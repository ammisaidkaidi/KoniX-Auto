.class public final Ldgh;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lddo;


# static fields
.field static final a:Lddo;

.field public static final b:Lddo;

.field public static final c:Lddo;

.field public static final d:Lddo;

.field public static final e:Lddo;

.field public static final f:Lddo;

.field public static final g:Lddo;

.field public static final h:Lddo;

.field public static final i:Lddo;

.field public static final j:Lddo;

.field public static final k:Lddo;

.field public static final l:Lddo;

.field public static final m:Lddo;

.field public static final n:Lddo;

.field public static final o:Lddo;

.field public static final p:Lddo;

.field public static final q:Lddo;

.field public static final r:Lddo;

.field public static final s:Lddo;

.field public static final t:Lddo;

.field public static final u:Lddo;


# instance fields
.field private final synthetic v:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ldgh;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ldgh;-><init>(I)V

    sput-object v0, Ldgh;->u:Lddo;

    new-instance v0, Ldgh;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Ldgh;-><init>(I)V

    sput-object v0, Ldgh;->t:Lddo;

    new-instance v0, Ldgh;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Ldgh;-><init>(I)V

    sput-object v0, Ldgh;->s:Lddo;

    new-instance v0, Ldgh;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Ldgh;-><init>(I)V

    sput-object v0, Ldgh;->r:Lddo;

    new-instance v0, Ldgh;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ldgh;-><init>(I)V

    sput-object v0, Ldgh;->q:Lddo;

    new-instance v0, Ldgh;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Ldgh;-><init>(I)V

    sput-object v0, Ldgh;->p:Lddo;

    new-instance v0, Ldgh;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Ldgh;-><init>(I)V

    sput-object v0, Ldgh;->o:Lddo;

    new-instance v0, Ldgh;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Ldgh;-><init>(I)V

    sput-object v0, Ldgh;->n:Lddo;

    new-instance v0, Ldgh;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ldgh;-><init>(I)V

    sput-object v0, Ldgh;->m:Lddo;

    new-instance v0, Ldgh;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ldgh;-><init>(I)V

    sput-object v0, Ldgh;->l:Lddo;

    new-instance v0, Ldgh;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ldgh;-><init>(I)V

    sput-object v0, Ldgh;->k:Lddo;

    new-instance v0, Ldgh;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ldgh;-><init>(I)V

    sput-object v0, Ldgh;->j:Lddo;

    new-instance v0, Ldgh;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ldgh;-><init>(I)V

    sput-object v0, Ldgh;->i:Lddo;

    new-instance v0, Ldgh;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ldgh;-><init>(I)V

    sput-object v0, Ldgh;->h:Lddo;

    new-instance v0, Ldgh;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ldgh;-><init>(I)V

    sput-object v0, Ldgh;->g:Lddo;

    new-instance v0, Ldgh;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ldgh;-><init>(I)V

    sput-object v0, Ldgh;->f:Lddo;

    new-instance v0, Ldgh;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ldgh;-><init>(I)V

    sput-object v0, Ldgh;->e:Lddo;

    new-instance v0, Ldgh;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ldgh;-><init>(I)V

    sput-object v0, Ldgh;->d:Lddo;

    new-instance v0, Ldgh;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ldgh;-><init>(I)V

    sput-object v0, Ldgh;->c:Lddo;

    new-instance v0, Ldgh;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ldgh;-><init>(I)V

    sput-object v0, Ldgh;->b:Lddo;

    new-instance v0, Ldgh;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldgh;-><init>(I)V

    sput-object v0, Ldgh;->a:Lddo;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    iput p1, p0, Ldgh;->v:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 3

    .line 1
    iget v0, p0, Ldgh;->v:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    return v2

    :pswitch_0
    packed-switch p1, :pswitch_data_2

    return v2

    :pswitch_1
    return v1

    :pswitch_2
    packed-switch p1, :pswitch_data_3

    return v2

    :pswitch_3
    return v1

    :pswitch_4
    invoke-static {p1}, Ldpx;->b(I)I

    move-result p1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    return v2

    :pswitch_5
    packed-switch p1, :pswitch_data_4

    return v2

    :pswitch_6
    return v1

    :pswitch_7
    packed-switch p1, :pswitch_data_5

    return v2

    :pswitch_8
    return v1

    :pswitch_9
    packed-switch p1, :pswitch_data_6

    return v2

    :pswitch_a
    return v1

    :pswitch_b
    packed-switch p1, :pswitch_data_7

    return v2

    :pswitch_c
    return v1

    :pswitch_d
    packed-switch p1, :pswitch_data_8

    return v2

    :pswitch_e
    return v1

    :pswitch_f
    invoke-static {p1}, Ldoi;->b(I)Ldoi;

    move-result-object p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    return v2

    :pswitch_10
    invoke-static {p1}, Ldpx;->c(I)I

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    return v2

    :pswitch_11
    packed-switch p1, :pswitch_data_9

    return v2

    :pswitch_12
    return v1

    :pswitch_13
    packed-switch p1, :pswitch_data_a

    return v2

    :pswitch_14
    return v1

    :pswitch_15
    invoke-static {p1}, Ldpx;->t(I)I

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    return v2

    :pswitch_16
    packed-switch p1, :pswitch_data_b

    return v2

    :pswitch_17
    return v1

    :pswitch_18
    packed-switch p1, :pswitch_data_c

    return v2

    :pswitch_19
    return v1

    .line 2
    :pswitch_1a
    invoke-static {p1}, Ldgq;->b(I)Ldgq;

    move-result-object p1

    if-eqz p1, :cond_4

    return v1

    :cond_4
    return v2

    :pswitch_1b
    invoke-static {p1}, Ldpx;->v(I)I

    move-result p1

    if-eqz p1, :cond_5

    return v1

    :cond_5
    return v2

    :pswitch_1c
    invoke-static {p1}, Ldgm;->a(I)I

    move-result p1

    if-eqz p1, :cond_6

    return v1

    :cond_6
    return v2

    :pswitch_1d
    invoke-static {p1}, Lhl;->L(I)I

    move-result p1

    if-eqz p1, :cond_7

    return v1

    :cond_7
    return v2

    :pswitch_1e
    invoke-static {p1}, Ldgi;->b(I)I

    move-result p1

    if-eqz p1, :cond_8

    return v1

    :cond_8
    return v2

    .line 1
    :pswitch_1f
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_18
        :pswitch_16
        :pswitch_15
        :pswitch_13
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_d
        :pswitch_b
        :pswitch_9
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x0
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x0
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
    .end packed-switch

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
    .end packed-switch
.end method
