.class public final enum Laoc;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum a:Laoc;

.field public static final enum b:Laoc;

.field public static final enum c:Laoc;

.field private static final synthetic d:[Laoc;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Laoc;

    const-string v1, "CONTENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Laoc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc;->a:Laoc;

    new-instance v1, Laoc;

    .line 2
    const-string v3, "STANDARD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Laoc;-><init>(Ljava/lang/String;I)V

    sput-object v1, Laoc;->b:Laoc;

    new-instance v3, Laoc;

    .line 3
    const-string v5, "AVATAR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Laoc;-><init>(Ljava/lang/String;I)V

    sput-object v3, Laoc;->c:Laoc;

    const/4 v5, 0x3

    new-array v5, v5, [Laoc;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Laoc;->d:[Laoc;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Laoc;
    .locals 1

    .line 1
    sget-object v0, Laoc;->d:[Laoc;

    invoke-virtual {v0}, [Laoc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Laoc;

    return-object v0
.end method
