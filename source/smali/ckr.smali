.class public final enum Lckr;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Lddm;


# static fields
.field public static final enum a:Lckr;

.field public static final enum b:Lckr;

.field public static final enum c:Lckr;

.field public static final enum d:Lckr;

.field public static final enum e:Lckr;

.field public static final enum f:Lckr;

.field public static final enum g:Lckr;

.field public static final enum h:Lckr;

.field public static final enum i:Lckr;

.field public static final enum j:Lckr;

.field public static final enum k:Lckr;

.field public static final enum l:Lckr;

.field public static final enum m:Lckr;

.field public static final enum n:Lckr;

.field public static final enum o:Lckr;

.field public static final enum p:Lckr;

.field public static final enum q:Lckr;

.field public static final enum r:Lckr;

.field private static final synthetic t:[Lckr;


# instance fields
.field private final s:I


# direct methods
.method static constructor <clinit>()V
    .locals 21

    new-instance v0, Lckr;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lckr;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lckr;->a:Lckr;

    new-instance v1, Lckr;

    const-string v3, "DEPART"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lckr;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lckr;->b:Lckr;

    new-instance v3, Lckr;

    const-string v5, "NAME_CHANGE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lckr;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lckr;->c:Lckr;

    new-instance v5, Lckr;

    const-string v7, "SLIGHT_TURN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lckr;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lckr;->d:Lckr;

    new-instance v7, Lckr;

    const-string v9, "TURN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lckr;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lckr;->e:Lckr;

    new-instance v9, Lckr;

    const-string v11, "SHARP_TURN"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lckr;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lckr;->f:Lckr;

    new-instance v11, Lckr;

    const-string v13, "U_TURN"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lckr;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lckr;->g:Lckr;

    new-instance v13, Lckr;

    const-string v15, "ON_RAMP"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lckr;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lckr;->h:Lckr;

    new-instance v15, Lckr;

    const-string v14, "OFF_RAMP"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lckr;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lckr;->i:Lckr;

    new-instance v14, Lckr;

    const-string v12, "FORK"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lckr;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lckr;->j:Lckr;

    new-instance v12, Lckr;

    const-string v10, "MERGE"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lckr;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lckr;->k:Lckr;

    new-instance v10, Lckr;

    const-string v8, "ROUNDABOUT_ENTER"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lckr;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lckr;->l:Lckr;

    new-instance v8, Lckr;

    const-string v6, "ROUNDABOUT_EXIT"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Lckr;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lckr;->m:Lckr;

    new-instance v6, Lckr;

    const-string v4, "ROUNDABOUT_ENTER_AND_EXIT"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2, v2}, Lckr;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lckr;->n:Lckr;

    new-instance v4, Lckr;

    const-string v2, "STRAIGHT"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6, v6}, Lckr;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lckr;->o:Lckr;

    new-instance v2, Lckr;

    const-string v6, "FERRY_BOAT"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    move-object/from16 v18, v8

    const/16 v8, 0x10

    invoke-direct {v2, v6, v4, v8}, Lckr;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lckr;->p:Lckr;

    new-instance v6, Lckr;

    const-string v4, "FERRY_TRAIN"

    move-object/from16 v19, v2

    const/16 v2, 0x11

    invoke-direct {v6, v4, v8, v2}, Lckr;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lckr;->q:Lckr;

    new-instance v4, Lckr;

    const-string v8, "DESTINATION"

    move-object/from16 v20, v6

    const/16 v6, 0x13

    invoke-direct {v4, v8, v2, v6}, Lckr;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lckr;->r:Lckr;

    const/16 v6, 0x12

    new-array v6, v6, [Lckr;

    const/4 v8, 0x0

    aput-object v0, v6, v8

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    const/16 v0, 0xc

    aput-object v18, v6, v0

    const/16 v0, 0xd

    aput-object v16, v6, v0

    const/16 v0, 0xe

    aput-object v17, v6, v0

    const/16 v0, 0xf

    aput-object v19, v6, v0

    const/16 v0, 0x10

    aput-object v20, v6, v0

    aput-object v4, v6, v2

    sput-object v6, Lckr;->t:[Lckr;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lckr;->s:I

    return-void
.end method

.method public static b(I)Lckr;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    sget-object p0, Lckr;->r:Lckr;

    return-object p0

    :pswitch_2
    sget-object p0, Lckr;->q:Lckr;

    return-object p0

    :pswitch_3
    sget-object p0, Lckr;->p:Lckr;

    return-object p0

    :pswitch_4
    sget-object p0, Lckr;->o:Lckr;

    return-object p0

    :pswitch_5
    sget-object p0, Lckr;->n:Lckr;

    return-object p0

    :pswitch_6
    sget-object p0, Lckr;->m:Lckr;

    return-object p0

    :pswitch_7
    sget-object p0, Lckr;->l:Lckr;

    return-object p0

    :pswitch_8
    sget-object p0, Lckr;->k:Lckr;

    return-object p0

    :pswitch_9
    sget-object p0, Lckr;->j:Lckr;

    return-object p0

    :pswitch_a
    sget-object p0, Lckr;->i:Lckr;

    return-object p0

    :pswitch_b
    sget-object p0, Lckr;->h:Lckr;

    return-object p0

    :pswitch_c
    sget-object p0, Lckr;->g:Lckr;

    return-object p0

    :pswitch_d
    sget-object p0, Lckr;->f:Lckr;

    return-object p0

    :pswitch_e
    sget-object p0, Lckr;->e:Lckr;

    return-object p0

    :pswitch_f
    sget-object p0, Lckr;->d:Lckr;

    return-object p0

    :pswitch_10
    sget-object p0, Lckr;->c:Lckr;

    return-object p0

    :pswitch_11
    sget-object p0, Lckr;->b:Lckr;

    return-object p0

    :pswitch_12
    sget-object p0, Lckr;->a:Lckr;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static values()[Lckr;
    .locals 1

    sget-object v0, Lckr;->t:[Lckr;

    invoke-virtual {v0}, [Lckr;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lckr;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lckr;->s:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lckr;->s:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
