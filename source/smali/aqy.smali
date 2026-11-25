.class public final enum Laqy;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum a:Laqy;

.field public static final enum b:Laqy;

.field public static final enum c:Laqy;

.field public static final enum d:Laqy;

.field private static final synthetic e:[Laqy;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Laqy;

    const-string v1, "BACK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Laqy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laqy;->a:Laqy;

    new-instance v1, Laqy;

    .line 2
    const-string v3, "CLOSE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Laqy;-><init>(Ljava/lang/String;I)V

    sput-object v1, Laqy;->b:Laqy;

    new-instance v3, Laqy;

    .line 3
    const-string v5, "DOWN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Laqy;-><init>(Ljava/lang/String;I)V

    sput-object v3, Laqy;->c:Laqy;

    new-instance v5, Laqy;

    .line 4
    const-string v7, "DISABLED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Laqy;-><init>(Ljava/lang/String;I)V

    sput-object v5, Laqy;->d:Laqy;

    const/4 v7, 0x4

    new-array v7, v7, [Laqy;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Laqy;->e:[Laqy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Laqy;
    .locals 1

    .line 1
    sget-object v0, Laqy;->e:[Laqy;

    invoke-virtual {v0}, [Laqy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Laqy;

    return-object v0
.end method
