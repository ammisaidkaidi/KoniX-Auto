.class public final enum Lbcq;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum a:Lbcq;

.field public static final enum b:Lbcq;

.field public static final enum c:Lbcq;

.field private static final synthetic e:[Lbcq;


# instance fields
.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lbcq;

    const-string v1, "NEVER_PROJECTED"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lbcq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbcq;->a:Lbcq;

    new-instance v1, Lbcq;

    .line 2
    const-string v3, "BACKGROUND"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lbcq;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lbcq;->b:Lbcq;

    new-instance v3, Lbcq;

    .line 3
    const-string v5, "FOREGROUND"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lbcq;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lbcq;->c:Lbcq;

    const/4 v5, 0x3

    new-array v5, v5, [Lbcq;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lbcq;->e:[Lbcq;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lbcq;->d:I

    return-void
.end method

.method public static a(I)Lbcq;
    .locals 2

    .line 1
    invoke-static {}, Lbcq;->values()[Lbcq;

    move-result-object v0

    invoke-static {v0}, Lj$/util/DesugarArrays;->stream([Ljava/lang/Object;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lbcp;

    invoke-direct {v1, p0}, Lbcp;-><init>(I)V

    .line 2
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Lj$/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object p0

    sget-object v0, Lbcq;->a:Lbcq;

    .line 4
    invoke-virtual {p0, v0}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbcq;

    return-object p0
.end method

.method public static values()[Lbcq;
    .locals 1

    .line 1
    sget-object v0, Lbcq;->e:[Lbcq;

    invoke-virtual {v0}, [Lbcq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbcq;

    return-object v0
.end method
