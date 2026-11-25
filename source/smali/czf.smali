.class final Lczf;
.super Lczh;
.source "PG"


# instance fields
.field final synthetic a:Lczi;

.field private final c:Lczb;


# direct methods
.method public constructor <init>(Lczi;Lczb;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lczf;->a:Lczi;

    invoke-direct {p0, p1, p3}, Lczh;-><init>(Lczi;Ljava/util/concurrent/Executor;)V

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lczf;->c:Lczb;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lczf;->c:Lczb;

    invoke-interface {v0}, Lczb;->a()Ldag;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lczf;->c:Lczb;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic c(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ldag;

    iget-object v0, p0, Lczf;->a:Lczi;

    .line 2
    invoke-virtual {v0, p1}, Lcyp;->d(Ldag;)Z

    return-void
.end method
