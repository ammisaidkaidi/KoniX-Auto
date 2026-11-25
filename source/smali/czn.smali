.class final enum Lczn;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum a:Lczn;

.field public static final enum b:Lczn;

.field public static final enum c:Lczn;

.field private static final synthetic d:[Lczn;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lczn;

    const-string v1, "NOT_RUN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lczn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lczn;->a:Lczn;

    new-instance v1, Lczn;

    .line 2
    const-string v3, "CANCELLED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lczn;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lczn;->b:Lczn;

    new-instance v3, Lczn;

    .line 3
    const-string v5, "STARTED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lczn;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lczn;->c:Lczn;

    const/4 v5, 0x3

    new-array v5, v5, [Lczn;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lczn;->d:[Lczn;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lczn;
    .locals 1

    .line 1
    sget-object v0, Lczn;->d:[Lczn;

    invoke-virtual {v0}, [Lczn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lczn;

    return-object v0
.end method
