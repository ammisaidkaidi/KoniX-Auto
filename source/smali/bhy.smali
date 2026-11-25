.class public final Lbhy;
.super Lbkc;
.source "PG"

# interfaces
.implements Lbhs;


# static fields
.field private static final j:Lbjy;

.field private static final k:Lboa;

.field private static final l:Lbjq;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lbhx;

    invoke-direct {v0}, Lbhx;-><init>()V

    sput-object v0, Lbhy;->l:Lbjq;

    new-instance v1, Lbjy;

    const-string v2, "GoogleAuthService.API"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lbjy;-><init>(Ljava/lang/String;Lbjq;[B)V

    sput-object v1, Lbhy;->j:Lbjy;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "GoogleAuthServiceClient"

    aput-object v2, v0, v1

    invoke-static {v0}, Lhm;->d([Ljava/lang/String;)Lboa;

    move-result-object v0

    sput-object v0, Lbhy;->k:Lboa;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-object v0, Lbhy;->j:Lbjy;

    sget-object v1, Lbjv;->a:Lbjv;

    sget-object v2, Lbkb;->a:Lbkb;

    invoke-direct {p0, p1, v0, v1, v2}, Lbkc;-><init>(Landroid/content/Context;Lbjy;Lbjw;Lbkb;)V

    return-void
.end method

.method public static a(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lbrk;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/Status;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2, p1}, Lbrk;->c(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lbjz;

    .line 3
    invoke-direct {p1, p0}, Lbjz;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {p2, p1}, Lbrk;->b(Ljava/lang/Exception;)Z

    move-result p0

    .line 2
    :goto_0
    if-nez p0, :cond_1

    sget-object p0, Lbhy;->k:Lboa;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    .line 4
    const-string p2, "The task is already complete."

    invoke-virtual {p0, p2, p1}, Lboa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
