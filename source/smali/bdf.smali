.class public final enum Lbdf;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Lddm;


# static fields
.field public static final enum a:Lbdf;

.field public static final enum b:Lbdf;

.field public static final enum c:Lbdf;

.field public static final enum d:Lbdf;

.field public static final enum e:Lbdf;

.field public static final enum f:Lbdf;

.field public static final enum g:Lbdf;

.field public static final enum h:Lbdf;

.field private static final synthetic j:[Lbdf;


# instance fields
.field private final i:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lbdf;

    const-string v1, "UNKNOWN_LATENCY_EVENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lbdf;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbdf;->a:Lbdf;

    new-instance v1, Lbdf;

    .line 2
    const-string v3, "AP_STARTUP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lbdf;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lbdf;->b:Lbdf;

    new-instance v3, Lbdf;

    .line 3
    const-string v5, "RFCOMM_STARTUP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lbdf;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lbdf;->c:Lbdf;

    new-instance v5, Lbdf;

    .line 4
    const-string v7, "BT_ADAPTER_STARTUP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lbdf;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lbdf;->d:Lbdf;

    new-instance v7, Lbdf;

    .line 5
    const-string v9, "SESSION_STARTUP"

    const/4 v10, 0x4

    const/16 v11, 0xa

    invoke-direct {v7, v9, v10, v11}, Lbdf;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lbdf;->e:Lbdf;

    new-instance v9, Lbdf;

    .line 6
    const-string v11, "AHU_START_UNTIL_HANDLER_READY"

    const/4 v12, 0x5

    const/16 v13, 0x32

    invoke-direct {v9, v11, v12, v13}, Lbdf;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lbdf;->f:Lbdf;

    new-instance v11, Lbdf;

    .line 7
    const-string v13, "AHU_START_UNTIL_RENDERER_READY"

    const/4 v14, 0x6

    const/16 v15, 0x33

    invoke-direct {v11, v13, v14, v15}, Lbdf;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lbdf;->g:Lbdf;

    new-instance v13, Lbdf;

    .line 8
    const-string v15, "AHU_START_UNTIL_FIRST_VIDEO_FRAME"

    const/4 v14, 0x7

    const/16 v12, 0x34

    invoke-direct {v13, v15, v14, v12}, Lbdf;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lbdf;->h:Lbdf;

    const/16 v12, 0x8

    new-array v12, v12, [Lbdf;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    aput-object v7, v12, v10

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    aput-object v13, v12, v14

    sput-object v12, Lbdf;->j:[Lbdf;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lbdf;->i:I

    return-void
.end method

.method public static values()[Lbdf;
    .locals 1

    .line 1
    sget-object v0, Lbdf;->j:[Lbdf;

    invoke-virtual {v0}, [Lbdf;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbdf;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lbdf;->i:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lbdf;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
