.class public final Lbwl;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lcsz;


# instance fields
.field public final b:Lcol;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/libraries/performance/primes/metrics/core/MetricDispatcher"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Lbwl;->a:Lcsz;

    return-void
.end method

.method public constructor <init>(Ldgz;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbwk;

    invoke-direct {v0, p1}, Lbwk;-><init>(Ldgz;)V

    invoke-static {v0}, Lex;->i(Lcol;)Lcol;

    move-result-object p1

    iput-object p1, p0, Lbwl;->b:Lcol;

    return-void
.end method
