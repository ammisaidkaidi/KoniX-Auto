.class final enum Lbgn;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum a:Lbgn;

.field public static final enum b:Lbgn;

.field private static final synthetic c:[Lbgn;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lbgn;

    const-string v1, "SEQUENCE_PARAMETER_SET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbgn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbgn;->a:Lbgn;

    new-instance v1, Lbgn;

    .line 2
    const-string v3, "PICTURE_PARAMETER_SET"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lbgn;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lbgn;->b:Lbgn;

    const/4 v3, 0x2

    new-array v3, v3, [Lbgn;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lbgn;->c:[Lbgn;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lbgn;
    .locals 1

    .line 1
    sget-object v0, Lbgn;->c:[Lbgn;

    invoke-virtual {v0}, [Lbgn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbgn;

    return-object v0
.end method
