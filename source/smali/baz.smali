.class public final enum Lbaz;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Lclk;


# static fields
.field public static final enum a:Lbaz;

.field private static final synthetic b:[Lbaz;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lbaz;

    invoke-direct {v0}, Lbaz;-><init>()V

    sput-object v0, Lbaz;->a:Lbaz;

    const/4 v1, 0x1

    new-array v1, v1, [Lbaz;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Lbaz;->b:[Lbaz;

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

.method public static values()[Lbaz;
    .locals 1

    .line 1
    sget-object v0, Lbaz;->b:[Lbaz;

    invoke-virtual {v0}, [Lbaz;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbaz;

    return-object v0
.end method


# virtual methods
.method public final a()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c(IJ)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
