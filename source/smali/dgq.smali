.class public final enum Ldgq;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Lddm;


# static fields
.field public static final enum a:Ldgq;

.field public static final enum b:Ldgq;

.field public static final enum c:Ldgq;

.field public static final enum d:Ldgq;

.field public static final enum e:Ldgq;

.field public static final enum f:Ldgq;

.field public static final enum g:Ldgq;

.field private static final synthetic i:[Ldgq;


# instance fields
.field private final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Ldgq;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Ldgq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ldgq;->a:Ldgq;

    new-instance v1, Ldgq;

    .line 2
    const-string v3, "DEV"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Ldgq;-><init>(Ljava/lang/String;II)V

    sput-object v1, Ldgq;->b:Ldgq;

    new-instance v3, Ldgq;

    .line 3
    const-string v5, "AUTOMATION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Ldgq;-><init>(Ljava/lang/String;II)V

    sput-object v3, Ldgq;->c:Ldgq;

    new-instance v5, Ldgq;

    .line 4
    const-string v7, "FISHFOOD"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Ldgq;-><init>(Ljava/lang/String;II)V

    sput-object v5, Ldgq;->d:Ldgq;

    new-instance v7, Ldgq;

    .line 5
    const-string v9, "DOGFOOD"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Ldgq;-><init>(Ljava/lang/String;II)V

    sput-object v7, Ldgq;->e:Ldgq;

    new-instance v9, Ldgq;

    .line 6
    const-string v11, "QA"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Ldgq;-><init>(Ljava/lang/String;II)V

    sput-object v9, Ldgq;->f:Ldgq;

    new-instance v11, Ldgq;

    .line 7
    const-string v13, "RELEASE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Ldgq;-><init>(Ljava/lang/String;II)V

    sput-object v11, Ldgq;->g:Ldgq;

    const/4 v13, 0x7

    new-array v13, v13, [Ldgq;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Ldgq;->i:[Ldgq;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Ldgq;->h:I

    return-void
.end method

.method public static b(I)Ldgq;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Ldgq;->g:Ldgq;

    return-object p0

    :pswitch_1
    sget-object p0, Ldgq;->f:Ldgq;

    return-object p0

    :pswitch_2
    sget-object p0, Ldgq;->e:Ldgq;

    return-object p0

    :pswitch_3
    sget-object p0, Ldgq;->d:Ldgq;

    return-object p0

    :pswitch_4
    sget-object p0, Ldgq;->c:Ldgq;

    return-object p0

    :pswitch_5
    sget-object p0, Ldgq;->b:Ldgq;

    return-object p0

    :pswitch_6
    sget-object p0, Ldgq;->a:Ldgq;

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

    sget-object v0, Ldgh;->e:Lddo;

    return-object v0
.end method

.method public static values()[Ldgq;
    .locals 1

    .line 1
    sget-object v0, Ldgq;->i:[Ldgq;

    invoke-virtual {v0}, [Ldgq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldgq;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Ldgq;->h:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Ldgq;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
