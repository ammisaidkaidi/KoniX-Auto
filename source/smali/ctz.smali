.class public final enum Lctz;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum a:Lctz;

.field public static final enum b:Lctz;

.field public static final enum c:Lctz;

.field public static final enum d:Lctz;

.field public static final enum e:Lctz;

.field private static final synthetic g:[Lctz;


# instance fields
.field public final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lctz;

    const-string v1, "GENERAL"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lctz;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lctz;->a:Lctz;

    new-instance v1, Lctz;

    .line 2
    const-string v4, "BOOLEAN"

    invoke-direct {v1, v4, v3, v2}, Lctz;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lctz;->b:Lctz;

    new-instance v4, Lctz;

    .line 3
    const-string v5, "CHARACTER"

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6, v2}, Lctz;-><init>(Ljava/lang/String;IZ)V

    sput-object v4, Lctz;->c:Lctz;

    new-instance v5, Lctz;

    .line 4
    const-string v7, "INTEGRAL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v2}, Lctz;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Lctz;->d:Lctz;

    new-instance v7, Lctz;

    .line 5
    const-string v9, "FLOAT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v3}, Lctz;-><init>(Ljava/lang/String;IZ)V

    sput-object v7, Lctz;->e:Lctz;

    const/4 v9, 0x5

    new-array v9, v9, [Lctz;

    aput-object v0, v9, v2

    aput-object v1, v9, v3

    aput-object v4, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lctz;->g:[Lctz;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lctz;->f:Z

    return-void
.end method

.method public static values()[Lctz;
    .locals 1

    .line 1
    sget-object v0, Lctz;->g:[Lctz;

    invoke-virtual {v0}, [Lctz;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lctz;

    return-object v0
.end method
