.class public final Lcnm;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method public static a(Lczb;)Lczb;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-static {}, Lcnr;->b()Lcnj;

    move-result-object v0

    new-instance v1, Lcnk;

    invoke-direct {v1, v0, p0}, Lcnk;-><init>(Lcnj;Lczb;)V

    return-object v1
.end method

.method public static b(Lczc;)Lczc;
    .locals 2

    .line 1
    invoke-static {}, Lcnr;->b()Lcnj;

    move-result-object v0

    new-instance v1, Lcnl;

    invoke-direct {v1, v0, p0}, Lcnl;-><init>(Lcnj;Lczc;)V

    return-object v1
.end method
