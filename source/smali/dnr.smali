.class public final Ldnr;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldnq;


# static fields
.field public static final a:Lcgj;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcgo;

    const-string v1, "com.google.android.libraries.performance.primes"

    invoke-direct {v0, v1}, Lcgo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcgo;->d()Lcgo;

    move-result-object v0

    invoke-virtual {v0}, Lcgo;->e()Lcgo;

    move-result-object v0

    :try_start_0
    const-string v1, "17"

    const/4 v2, 0x5

    new-array v2, v2, [B

    const/16 v3, 0x10

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    const/4 v3, 0x1

    const/16 v5, -0x18

    aput-byte v5, v2, v3

    const/4 v3, 0x2

    const/4 v5, 0x7

    aput-byte v5, v2, v3

    const/16 v3, 0x18

    const/4 v5, 0x3

    aput-byte v3, v2, v5

    const/4 v3, 0x4

    aput-byte v5, v2, v3

    sget-object v3, Ldpy;->d:Ldpy;

    .line 2
    invoke-static {v3, v2}, Lddk;->p(Lddk;[B)Lddk;

    move-result-object v2

    check-cast v2, Ldpy;

    sget-object v3, Lcgk;->o:Lcgk;

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Lcgo;->c(Ljava/lang/String;Ljava/lang/Object;Lcgn;)Lcgj;

    move-result-object v1

    sput-object v1, Ldnr;->a:Lcgj;
    :try_end_0
    .catch Lddu; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    nop

    .line 5
    const-string v1, "38"

    invoke-virtual {v0, v1, v4}, Lcgo;->b(Ljava/lang/String;Z)Lcgj;

    return-void

    .line 3
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    .line 4
    const-string v1, "Could not parse proto flag \"17\""

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ldpy;
    .locals 1

    .line 1
    sget-object v0, Ldnr;->a:Lcgj;

    invoke-virtual {v0, p1}, Lcgj;->b(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldpy;

    return-object p1
.end method
