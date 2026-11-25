.class public final Ldno;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldnn;


# static fields
.field public static final a:Lcgj;

.field public static final b:Lcgj;

.field public static final c:Lcgj;


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

    const-string v1, "45350020"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcgo;->b(Ljava/lang/String;Z)Lcgj;

    .line 2
    const-string v1, "2"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcgo;->b(Ljava/lang/String;Z)Lcgj;

    .line 3
    const-string v1, "3"

    invoke-virtual {v0, v1, v2}, Lcgo;->b(Ljava/lang/String;Z)Lcgj;

    move-result-object v1

    sput-object v1, Ldno;->a:Lcgj;

    .line 4
    const-string v1, "45357887"

    const-wide/16 v4, 0x1

    invoke-virtual {v0, v1, v4, v5}, Lcgo;->a(Ljava/lang/String;J)Lcgj;

    move-result-object v1

    sput-object v1, Ldno;->b:Lcgj;

    :try_start_0
    const-string v1, "19"

    const/4 v4, 0x4

    new-array v4, v4, [B

    const/16 v5, 0x10

    aput-byte v5, v4, v2

    aput-byte v2, v4, v3

    const/16 v2, 0x18

    const/4 v3, 0x2

    aput-byte v2, v4, v3

    const/4 v2, 0x3

    aput-byte v3, v4, v2

    .line 5
    sget-object v2, Ldpy;->d:Ldpy;

    .line 6
    invoke-static {v2, v4}, Lddk;->p(Lddk;[B)Lddk;

    move-result-object v2

    check-cast v2, Ldpy;

    .line 8
    sget-object v3, Lcgk;->n:Lcgk;

    .line 7
    invoke-virtual {v0, v1, v2, v3}, Lcgo;->c(Ljava/lang/String;Ljava/lang/Object;Lcgn;)Lcgj;

    move-result-object v0

    sput-object v0, Ldno;->c:Lcgj;
    :try_end_0
    .catch Lddu; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 6
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    .line 8
    const-string v1, "Could not parse proto flag \"19\""

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)J
    .locals 2

    .line 1
    sget-object v0, Ldno;->b:Lcgj;

    invoke-virtual {v0, p1}, Lcgj;->b(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final b(Landroid/content/Context;)Ldpy;
    .locals 1

    .line 1
    sget-object v0, Ldno;->c:Lcgj;

    invoke-virtual {v0, p1}, Lcgj;->b(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldpy;

    return-object p1
.end method

.method public final c(Landroid/content/Context;)Z
    .locals 1

    .line 1
    sget-object v0, Ldno;->a:Lcgj;

    invoke-virtual {v0, p1}, Lcgj;->b(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method
