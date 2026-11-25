.class public final enum Lawp;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum a:Lawp;

.field public static final enum b:Lawp;

.field private static final synthetic c:[Lawp;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lawp;

    const-string v1, "USB"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lawp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lawp;->a:Lawp;

    new-instance v1, Lawp;

    .line 2
    const-string v3, "WIRELESS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lawp;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lawp;->b:Lawp;

    const/4 v3, 0x2

    new-array v3, v3, [Lawp;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lawp;->c:[Lawp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lawp;
    .locals 1

    .line 1
    sget-object v0, Lawp;->c:[Lawp;

    invoke-virtual {v0}, [Lawp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lawp;

    return-object v0
.end method
