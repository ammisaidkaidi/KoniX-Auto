.class public final Ldax;
.super Lczr;
.source "PG"

# interfaces
.implements Ljava/util/concurrent/RunnableFuture;


# instance fields
.field private volatile a:Ldaf;


# direct methods
.method public constructor <init>(Lczb;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lczr;-><init>()V

    new-instance v0, Ldav;

    invoke-direct {v0, p0, p1}, Ldav;-><init>(Ldax;Lczb;)V

    iput-object v0, p0, Ldax;->a:Ldaf;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lczr;-><init>()V

    new-instance v0, Ldaw;

    invoke-direct {v0, p0, p1}, Ldaw;-><init>(Ldax;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Ldax;->a:Ldaf;

    return-void
.end method

.method public static e(Lczb;)Ldax;
    .locals 1

    .line 1
    new-instance v0, Ldax;

    invoke-direct {v0, p0}, Ldax;-><init>(Lczb;)V

    return-object v0
.end method

.method static n(Ljava/util/concurrent/Callable;)Ldax;
    .locals 1

    .line 1
    new-instance v0, Ldax;

    invoke-direct {v0, p0}, Ldax;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method public static o(Ljava/lang/Runnable;Ljava/lang/Object;)Ldax;
    .locals 1

    .line 1
    new-instance v0, Ldax;

    invoke-static {p0, p1}, Ljava/util/concurrent/Executors;->callable(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object p0

    invoke-direct {v0, p0}, Ldax;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Ldax;->a:Ldaf;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x7

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "task=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2
    :cond_0
    invoke-super {p0}, Lczr;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final c()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcyp;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldax;->a:Ldaf;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ldaf;->h()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Ldax;->a:Ldaf;

    return-void
.end method

.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Ldax;->a:Ldaf;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ldaf;->run()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Ldax;->a:Ldaf;

    return-void
.end method
