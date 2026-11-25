.class public final enum Lcly;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum a:Lcly;

.field public static final enum b:Lcly;

.field public static final enum c:Lcly;

.field public static final enum d:Lcly;

.field public static final enum e:Lcly;

.field public static final enum f:Lcly;

.field public static final enum g:Lcly;

.field public static final enum h:Lcly;

.field private static final synthetic i:[Lcly;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcly;

    const-string v1, "CONNECTION_TERMINATED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcly;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcly;->a:Lcly;

    new-instance v1, Lcly;

    .line 2
    const-string v3, "MD_BYEBYE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcly;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcly;->b:Lcly;

    new-instance v3, Lcly;

    .line 3
    const-string v5, "HU_BYEBYE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcly;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcly;->c:Lcly;

    new-instance v5, Lcly;

    .line 4
    const-string v7, "USER_SWITCH"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcly;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcly;->d:Lcly;

    new-instance v7, Lcly;

    .line 5
    const-string v9, "PING_TIMEOUT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcly;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcly;->e:Lcly;

    new-instance v9, Lcly;

    .line 6
    const-string v11, "PING_RTT_TOO_HIGH"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcly;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcly;->f:Lcly;

    new-instance v11, Lcly;

    .line 7
    const-string v13, "CONNECTION_DISCONNECTED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcly;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcly;->g:Lcly;

    new-instance v13, Lcly;

    .line 8
    const-string v15, "CONNECTION_ERROR"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcly;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcly;->h:Lcly;

    const/16 v15, 0x8

    new-array v15, v15, [Lcly;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lcly;->i:[Lcly;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcly;
    .locals 1

    .line 1
    const-class v0, Lcly;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcly;

    return-object p0
.end method

.method public static values()[Lcly;
    .locals 1

    .line 1
    sget-object v0, Lcly;->i:[Lcly;

    invoke-virtual {v0}, [Lcly;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcly;

    return-object v0
.end method
