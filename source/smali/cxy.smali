.class public final enum Lcxy;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Lcxz;


# static fields
.field public static final enum a:Lcxy;

.field private static final synthetic b:[Lcxy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcxy;

    invoke-direct {v0}, Lcxy;-><init>()V

    sput-object v0, Lcxy;->a:Lcxy;

    const/4 v1, 0x1

    new-array v1, v1, [Lcxy;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Lcxy;->b:[Lcxy;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "INSTANCE"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcxy;
    .locals 1

    .line 1
    sget-object v0, Lcxy;->b:[Lcxy;

    invoke-virtual {v0}, [Lcxy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcxy;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "TimeSource.system()"

    return-object v0
.end method
