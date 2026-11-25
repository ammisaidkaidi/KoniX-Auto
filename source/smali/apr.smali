.class public final enum Lapr;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum a:Lapr;

.field public static final enum b:Lapr;

.field private static final synthetic c:[Lapr;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lapr;

    const-string v1, "ALWAYS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lapr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lapr;->a:Lapr;

    new-instance v1, Lapr;

    .line 2
    const-string v3, "NEVER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lapr;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lapr;->b:Lapr;

    const/4 v3, 0x2

    new-array v3, v3, [Lapr;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lapr;->c:[Lapr;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lapr;
    .locals 1

    .line 1
    sget-object v0, Lapr;->c:[Lapr;

    invoke-virtual {v0}, [Lapr;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lapr;

    return-object v0
.end method
