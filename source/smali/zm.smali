.class public final enum Lzm;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum a:Lzm;

.field public static final enum b:Lzm;

.field public static final enum c:Lzm;

.field public static final enum d:Lzm;

.field public static final enum e:Lzm;

.field private static final synthetic f:[Lzm;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lzm;

    const-string v1, "DESTROYED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lzm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzm;->a:Lzm;

    new-instance v1, Lzm;

    .line 2
    const-string v3, "INITIALIZED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lzm;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lzm;->b:Lzm;

    new-instance v3, Lzm;

    .line 3
    const-string v5, "CREATED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lzm;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lzm;->c:Lzm;

    new-instance v5, Lzm;

    .line 4
    const-string v7, "STARTED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lzm;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lzm;->d:Lzm;

    new-instance v7, Lzm;

    .line 5
    const-string v9, "RESUMED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lzm;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lzm;->e:Lzm;

    const/4 v9, 0x5

    new-array v9, v9, [Lzm;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lzm;->f:[Lzm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lzm;
    .locals 1

    .line 1
    sget-object v0, Lzm;->f:[Lzm;

    invoke-virtual {v0}, [Lzm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lzm;

    return-object v0
.end method


# virtual methods
.method public final a(Lzm;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lzm;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
