.class public final Lcju;
.super Lcim;
.source "PG"


# instance fields
.field private final a:Lder;


# direct methods
.method public constructor <init>(Lder;)V
    .locals 0

    invoke-direct {p0}, Lcim;-><init>()V

    iput-object p1, p0, Lcju;->a:Lder;

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/IOException;Lcje;)Ldag;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lddu;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Lhh;->i(Ljava/lang/Throwable;)Ldag;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcju;->a:Lder;

    .line 3
    invoke-static {v0}, Lhh;->j(Ljava/lang/Object;)Ldag;

    move-result-object v0

    iget-object p2, p2, Lcje;->a:Lcjf;

    new-instance v1, Lcja;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lcja;-><init>(Lcjf;I)V

    .line 4
    invoke-static {v1}, Lcnm;->b(Lczc;)Lczc;

    move-result-object v1

    iget-object p2, p2, Lcjf;->c:Ljava/util/concurrent/Executor;

    .line 5
    invoke-static {v0, v1, p2}, Lcyt;->p(Ldag;Lczc;Ljava/util/concurrent/Executor;)Ldag;

    move-result-object p2

    new-instance v0, Lcjt;

    invoke-direct {v0, p1}, Lcjt;-><init>(Ljava/io/IOException;)V

    const-class p1, Ljava/io/IOException;

    .line 6
    sget-object v1, Lczj;->a:Lczj;

    .line 7
    invoke-static {p2, p1, v0, v1}, Lcyb;->e(Ldag;Ljava/lang/Class;Lczc;Ljava/util/concurrent/Executor;)Ldag;

    move-result-object p1

    return-object p1
.end method
