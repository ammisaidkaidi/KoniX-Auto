.class final Lcad;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lcsz;


# instance fields
.field public final b:Lbwn;

.field public final c:Ldgz;

.field public final d:Ldai;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/libraries/performance/primes/metrics/startup/StartupMetricRecordingService"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Lcad;->a:Lcsz;

    return-void
.end method

.method public constructor <init>(Lbwo;Ldai;Ljava/util/concurrent/Executor;Ldgz;Ldny;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcad;->c:Ldgz;

    iput-object p2, p0, Lcad;->d:Ldai;

    invoke-virtual {p1, p3, p4, p5}, Lbwo;->a(Ljava/util/concurrent/Executor;Ldgz;Ldny;)Lbwn;

    move-result-object p1

    iput-object p1, p0, Lcad;->b:Lbwn;

    return-void
.end method
