.class public final Ldmq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldmp;


# static fields
.field public static final a:Lcgj;

.field public static final b:Lcgj;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcgo;

    const-string v1, "com.google.android.libraries.performance.primes"

    invoke-direct {v0, v1}, Lcgo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcgo;->d()Lcgo;

    move-result-object v0

    invoke-virtual {v0}, Lcgo;->e()Lcgo;

    move-result-object v0

    const-string v1, "45352228"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcgo;->b(Ljava/lang/String;Z)Lcgj;

    move-result-object v1

    sput-object v1, Ldmq;->a:Lcgj;

    :try_start_0
    const-string v1, "45352241"

    new-array v2, v2, [B

    .line 2
    sget-object v3, Ldoh;->b:Ldoh;

    .line 3
    invoke-static {v3, v2}, Lddk;->p(Lddk;[B)Lddk;

    move-result-object v2

    check-cast v2, Ldoh;

    .line 5
    sget-object v3, Lcgk;->e:Lcgk;

    .line 4
    invoke-virtual {v0, v1, v2, v3}, Lcgo;->c(Ljava/lang/String;Ljava/lang/Object;Lcgn;)Lcgj;

    move-result-object v0

    sput-object v0, Ldmq;->b:Lcgj;
    :try_end_0
    .catch Lddu; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 3
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    .line 5
    const-string v1, "Could not parse proto flag \"45352241\""

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ldoh;
    .locals 1

    .line 1
    sget-object v0, Ldmq;->b:Lcgj;

    invoke-virtual {v0, p1}, Lcgj;->b(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldoh;

    return-object p1
.end method

.method public final b(Landroid/content/Context;)Z
    .locals 1

    .line 1
    sget-object v0, Ldmq;->a:Lcgj;

    invoke-virtual {v0, p1}, Lcgj;->b(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method
