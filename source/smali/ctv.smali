.class public final enum Lctv;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum a:Lctv;

.field public static final enum b:Lctv;

.field public static final enum c:Lctv;

.field public static final enum d:Lctv;

.field public static final enum e:Lctv;

.field private static final synthetic g:[Lctv;


# instance fields
.field public final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lctv;

    const-string v1, "SMALL"

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lctv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lctv;->a:Lctv;

    new-instance v1, Lctv;

    .line 2
    const-string v3, "MEDIUM"

    const/4 v4, 0x1

    const/16 v5, 0x14

    invoke-direct {v1, v3, v4, v5}, Lctv;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lctv;->b:Lctv;

    new-instance v3, Lctv;

    .line 3
    const-string v5, "LARGE"

    const/4 v6, 0x2

    const/16 v7, 0x32

    invoke-direct {v3, v5, v6, v7}, Lctv;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lctv;->c:Lctv;

    new-instance v5, Lctv;

    .line 4
    const-string v7, "FULL"

    const/4 v8, 0x3

    const/4 v9, -0x1

    invoke-direct {v5, v7, v8, v9}, Lctv;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lctv;->d:Lctv;

    new-instance v7, Lctv;

    .line 5
    const-string v9, "NONE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v2}, Lctv;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lctv;->e:Lctv;

    const/4 v9, 0x5

    new-array v9, v9, [Lctv;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lctv;->g:[Lctv;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lctv;->f:I

    return-void
.end method

.method public static values()[Lctv;
    .locals 1

    .line 1
    sget-object v0, Lctv;->g:[Lctv;

    invoke-virtual {v0}, [Lctv;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lctv;

    return-object v0
.end method
