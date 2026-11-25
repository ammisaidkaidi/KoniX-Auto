.class public final enum Laob;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum a:Laob;

.field public static final enum b:Laob;

.field public static final enum c:Laob;

.field public static final enum d:Laob;

.field public static final enum e:Laob;

.field public static final enum f:Laob;

.field private static final synthetic g:[Laob;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Laob;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Laob;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laob;->a:Laob;

    new-instance v1, Laob;

    .line 2
    const-string v3, "SWITCH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Laob;-><init>(Ljava/lang/String;I)V

    sput-object v1, Laob;->b:Laob;

    new-instance v3, Laob;

    .line 3
    const-string v5, "CHECK_BOX"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Laob;-><init>(Ljava/lang/String;I)V

    sput-object v3, Laob;->c:Laob;

    new-instance v5, Laob;

    .line 4
    const-string v7, "RADIO_BUTTON"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Laob;-><init>(Ljava/lang/String;I)V

    sput-object v5, Laob;->d:Laob;

    new-instance v7, Laob;

    .line 5
    const-string v9, "ICON"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Laob;-><init>(Ljava/lang/String;I)V

    sput-object v7, Laob;->e:Laob;

    new-instance v9, Laob;

    .line 6
    const-string v11, "CHEVRON"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Laob;-><init>(Ljava/lang/String;I)V

    sput-object v9, Laob;->f:Laob;

    const/4 v11, 0x6

    new-array v11, v11, [Laob;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Laob;->g:[Laob;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Laob;
    .locals 1

    .line 1
    sget-object v0, Laob;->g:[Laob;

    invoke-virtual {v0}, [Laob;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Laob;

    return-object v0
.end method
