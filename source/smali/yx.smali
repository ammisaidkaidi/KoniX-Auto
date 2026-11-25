.class public final enum Lyx;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum a:Lyx;

.field public static final enum b:Lyx;

.field public static final enum c:Lyx;

.field public static final enum d:Lyx;

.field public static final enum e:Lyx;

.field public static final enum f:Lyx;

.field public static final enum g:Lyx;

.field public static final enum h:Lyx;

.field private static final synthetic i:[Lyx;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lyx;

    const-string v1, "PENALTY_LOG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lyx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyx;->a:Lyx;

    new-instance v1, Lyx;

    .line 2
    const-string v3, "PENALTY_DEATH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lyx;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lyx;->b:Lyx;

    new-instance v3, Lyx;

    .line 3
    const-string v5, "DETECT_FRAGMENT_REUSE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lyx;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lyx;->c:Lyx;

    new-instance v5, Lyx;

    .line 4
    const-string v7, "DETECT_FRAGMENT_TAG_USAGE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lyx;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lyx;->d:Lyx;

    new-instance v7, Lyx;

    .line 5
    const-string v9, "DETECT_RETAIN_INSTANCE_USAGE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lyx;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lyx;->e:Lyx;

    new-instance v9, Lyx;

    .line 6
    const-string v11, "DETECT_SET_USER_VISIBLE_HINT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lyx;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lyx;->f:Lyx;

    new-instance v11, Lyx;

    .line 7
    const-string v13, "DETECT_TARGET_FRAGMENT_USAGE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lyx;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lyx;->g:Lyx;

    new-instance v13, Lyx;

    .line 8
    const-string v15, "DETECT_WRONG_FRAGMENT_CONTAINER"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lyx;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lyx;->h:Lyx;

    const/16 v15, 0x8

    new-array v15, v15, [Lyx;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lyx;->i:[Lyx;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lyx;
    .locals 1

    sget-object v0, Lyx;->i:[Lyx;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyx;

    return-object v0
.end method
