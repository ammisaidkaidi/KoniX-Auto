.class public final enum Lckb;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Lddm;


# static fields
.field public static final enum a:Lckb;

.field public static final enum b:Lckb;

.field public static final enum c:Lckb;

.field private static final synthetic e:[Lckb;


# instance fields
.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lckb;

    const-string v1, "DISPLAY_TYPE_MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lckb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lckb;->a:Lckb;

    new-instance v1, Lckb;

    .line 2
    const-string v3, "DISPLAY_TYPE_CLUSTER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lckb;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lckb;->b:Lckb;

    new-instance v3, Lckb;

    .line 3
    const-string v5, "DISPLAY_TYPE_AUXILIARY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lckb;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lckb;->c:Lckb;

    const/4 v5, 0x3

    new-array v5, v5, [Lckb;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lckb;->e:[Lckb;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lckb;->d:I

    return-void
.end method

.method public static values()[Lckb;
    .locals 1

    .line 1
    sget-object v0, Lckb;->e:[Lckb;

    invoke-virtual {v0}, [Lckb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lckb;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lckb;->d:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lckb;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
