.class public final Lccd;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lcsz;

.field private static final e:Lcbz;


# instance fields
.field public volatile b:Lcci;

.field public volatile c:Z

.field public volatile d:Lcbz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/libraries/performance/primes/sampling/Sampler"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Lccd;->a:Lcsz;

    const v0, 0x7fffffff

    invoke-static {v0}, Lcbz;->b(I)Lcbz;

    move-result-object v0

    sput-object v0, Lccd;->e:Lcbz;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcch;Ldgz;ZLdny;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcch;->a:Lcci;

    iput-object v0, p0, Lccd;->b:Lcci;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lccd;->c:Z

    sget-object v1, Lccd;->e:Lcbz;

    iput-object v1, p0, Lccd;->d:Lcbz;

    if-eq v0, p5, :cond_0

    const/4 p6, 0x0

    :cond_0
    move-object v5, p6

    new-instance p5, Lcca;

    move-object v0, p5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcca;-><init>(Lccd;Landroid/content/Context;Lcch;Ldgz;Ldny;Ljava/util/concurrent/Executor;)V

    invoke-static {p5, p2}, Lhh;->l(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ldag;

    return-void
.end method
