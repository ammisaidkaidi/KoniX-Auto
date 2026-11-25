.class public final enum Ldoi;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Lddm;


# static fields
.field public static final enum a:Ldoi;

.field public static final enum b:Ldoi;

.field public static final enum c:Ldoi;

.field public static final enum d:Ldoi;

.field public static final enum e:Ldoi;

.field public static final enum f:Ldoi;

.field public static final enum g:Ldoi;

.field private static final synthetic i:[Ldoi;


# instance fields
.field public final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Ldoi;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Ldoi;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ldoi;->a:Ldoi;

    new-instance v1, Ldoi;

    .line 2
    const-string v3, "FOREGROUND_TO_BACKGROUND"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Ldoi;-><init>(Ljava/lang/String;II)V

    sput-object v1, Ldoi;->b:Ldoi;

    new-instance v3, Ldoi;

    .line 3
    const-string v5, "BACKGROUND_TO_FOREGROUND"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Ldoi;-><init>(Ljava/lang/String;II)V

    sput-object v3, Ldoi;->c:Ldoi;

    new-instance v5, Ldoi;

    .line 4
    const-string v7, "FOREGROUND_SERVICE_START"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Ldoi;-><init>(Ljava/lang/String;II)V

    sput-object v5, Ldoi;->d:Ldoi;

    new-instance v7, Ldoi;

    .line 5
    const-string v9, "FOREGROUND_SERVICE_STOP"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Ldoi;-><init>(Ljava/lang/String;II)V

    sput-object v7, Ldoi;->e:Ldoi;

    new-instance v9, Ldoi;

    .line 6
    const-string v11, "CUSTOM_MEASURE_START"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Ldoi;-><init>(Ljava/lang/String;II)V

    sput-object v9, Ldoi;->f:Ldoi;

    new-instance v11, Ldoi;

    .line 7
    const-string v13, "CUSTOM_MEASURE_STOP"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Ldoi;-><init>(Ljava/lang/String;II)V

    sput-object v11, Ldoi;->g:Ldoi;

    const/4 v13, 0x7

    new-array v13, v13, [Ldoi;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Ldoi;->i:[Ldoi;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Ldoi;->h:I

    return-void
.end method

.method public static b(I)Ldoi;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Ldoi;->g:Ldoi;

    return-object p0

    :pswitch_1
    sget-object p0, Ldoi;->f:Ldoi;

    return-object p0

    :pswitch_2
    sget-object p0, Ldoi;->e:Ldoi;

    return-object p0

    :pswitch_3
    sget-object p0, Ldoi;->d:Ldoi;

    return-object p0

    :pswitch_4
    sget-object p0, Ldoi;->c:Ldoi;

    return-object p0

    :pswitch_5
    sget-object p0, Ldoi;->b:Ldoi;

    return-object p0

    :pswitch_6
    sget-object p0, Ldoi;->a:Ldoi;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static c()Lddo;
    .locals 1

    sget-object v0, Ldgh;->l:Lddo;

    return-object v0
.end method

.method public static values()[Ldoi;
    .locals 1

    .line 1
    sget-object v0, Ldoi;->i:[Ldoi;

    invoke-virtual {v0}, [Ldoi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldoi;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Ldoi;->h:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Ldoi;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
