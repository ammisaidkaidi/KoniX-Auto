.class final enum Lauc;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum a:Lauc;

.field public static final enum b:Lauc;

.field public static final enum c:Lauc;

.field private static final synthetic d:[Lauc;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lauc;

    const-string v1, "MEDIA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lauc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lauc;->a:Lauc;

    new-instance v1, Lauc;

    .line 2
    const-string v3, "GUIDANCE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lauc;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lauc;->b:Lauc;

    new-instance v3, Lauc;

    .line 3
    const-string v5, "VOICE_RECOGNITION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lauc;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lauc;->c:Lauc;

    const/4 v5, 0x3

    new-array v5, v5, [Lauc;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lauc;->d:[Lauc;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lauc;
    .locals 1

    .line 1
    sget-object v0, Lauc;->d:[Lauc;

    invoke-virtual {v0}, [Lauc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lauc;

    return-object v0
.end method
