.class public final enum Lf;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Lddm;


# static fields
.field public static final enum a:Lf;

.field public static final enum b:Lf;

.field public static final enum c:Lf;

.field public static final enum d:Lf;

.field public static final enum e:Lf;

.field public static final enum f:Lf;

.field public static final enum g:Lf;

.field public static final enum h:Lf;

.field public static final enum i:Lf;

.field public static final enum j:Lf;

.field public static final enum k:Lf;

.field private static final synthetic m:[Lf;


# instance fields
.field private final l:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lf;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lf;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lf;->a:Lf;

    new-instance v1, Lf;

    .line 2
    const-string v3, "STRAIGHT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lf;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lf;->b:Lf;

    new-instance v3, Lf;

    .line 3
    const-string v5, "SLIGHT_LEFT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lf;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lf;->c:Lf;

    new-instance v5, Lf;

    .line 4
    const-string v7, "SLIGHT_RIGHT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lf;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lf;->d:Lf;

    new-instance v7, Lf;

    .line 5
    const-string v9, "NORMAL_LEFT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lf;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lf;->e:Lf;

    new-instance v9, Lf;

    .line 6
    const-string v11, "NORMAL_RIGHT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lf;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lf;->f:Lf;

    new-instance v11, Lf;

    .line 7
    const-string v13, "SHARP_LEFT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lf;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lf;->g:Lf;

    new-instance v13, Lf;

    .line 8
    const-string v15, "SHARP_RIGHT"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lf;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lf;->h:Lf;

    new-instance v15, Lf;

    .line 9
    const-string v14, "U_TURN_LEFT"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lf;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lf;->i:Lf;

    new-instance v14, Lf;

    .line 10
    const-string v12, "U_TURN_RIGHT"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lf;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lf;->j:Lf;

    new-instance v12, Lf;

    .line 11
    const-string v10, "UNRECOGNIZED"

    const/16 v8, 0xa

    const/4 v6, -0x1

    invoke-direct {v12, v10, v8, v6}, Lf;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lf;->k:Lf;

    const/16 v6, 0xb

    new-array v6, v6, [Lf;

    aput-object v0, v6, v2

    aput-object v1, v6, v4

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

    aput-object v12, v6, v8

    sput-object v6, Lf;->m:[Lf;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lf;->l:I

    return-void
.end method

.method public static b(I)Lf;
    .locals 0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lf;->j:Lf;

    return-object p0

    :pswitch_0
    sget-object p0, Lf;->i:Lf;

    return-object p0

    :pswitch_1
    sget-object p0, Lf;->h:Lf;

    return-object p0

    :pswitch_2
    sget-object p0, Lf;->g:Lf;

    return-object p0

    :pswitch_3
    sget-object p0, Lf;->f:Lf;

    return-object p0

    :pswitch_4
    sget-object p0, Lf;->e:Lf;

    return-object p0

    :pswitch_5
    sget-object p0, Lf;->d:Lf;

    return-object p0

    :pswitch_6
    sget-object p0, Lf;->c:Lf;

    return-object p0

    :pswitch_7
    sget-object p0, Lf;->b:Lf;

    return-object p0

    :pswitch_8
    sget-object p0, Lf;->a:Lf;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static values()[Lf;
    .locals 1

    .line 1
    sget-object v0, Lf;->m:[Lf;

    invoke-virtual {v0}, [Lf;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lf;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 1
    sget-object v0, Lf;->k:Lf;

    if-eq p0, v0, :cond_0

    iget v0, p0, Lf;->l:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lf;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
