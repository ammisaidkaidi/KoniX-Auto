.class public final Ldis;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldir;


# static fields
.field public static final a:Lcgj;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcgo;

    const-string v1, "com.google.android.apps.auto.aareceiver"

    invoke-direct {v0, v1}, Lcgo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcgo;->d()Lcgo;

    move-result-object v0

    :try_start_0
    const-string v1, "16"

    const/4 v2, 0x0

    new-array v2, v2, [B

    sget-object v3, Ldgp;->b:Ldgp;

    .line 2
    invoke-static {v3, v2}, Lddk;->p(Lddk;[B)Lddk;

    move-result-object v2

    check-cast v2, Ldgp;

    .line 4
    sget-object v3, Lcgk;->d:Lcgk;

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Lcgo;->c(Ljava/lang/String;Ljava/lang/Object;Lcgn;)Lcgj;

    move-result-object v0

    sput-object v0, Ldis;->a:Lcgj;
    :try_end_0
    .catch Lddu; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 2
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    .line 4
    const-string v1, "Could not parse proto flag \"16\""

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ldgp;
    .locals 1

    .line 1
    sget-object v0, Ldis;->a:Lcgj;

    invoke-virtual {v0}, Lcgj;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldgp;

    return-object v0
.end method
