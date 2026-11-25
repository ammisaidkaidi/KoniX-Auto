.class public Lzy;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/lang/Object;


# instance fields
.field final b:Ljava/lang/Object;

.field public final c:Lup;

.field public d:I

.field public e:Z

.field public volatile f:Ljava/lang/Object;

.field volatile g:Ljava/lang/Object;

.field public h:I

.field public final i:Ljava/lang/Runnable;

.field private j:Z

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lzy;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lzy;->b:Ljava/lang/Object;

    new-instance v0, Lup;

    invoke-direct {v0}, Lup;-><init>()V

    iput-object v0, p0, Lzy;->c:Lup;

    const/4 v0, 0x0

    iput v0, p0, Lzy;->d:I

    sget-object v0, Lzy;->a:Ljava/lang/Object;

    iput-object v0, p0, Lzy;->g:Ljava/lang/Object;

    new-instance v1, Lzv;

    invoke-direct {v1, p0}, Lzv;-><init>(Lzy;)V

    iput-object v1, p0, Lzy;->i:Ljava/lang/Runnable;

    iput-object v0, p0, Lzy;->f:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lzy;->h:I

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Luf;->g()Luf;

    move-result-object v0

    invoke-virtual {v0}, Luf;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    return-void

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot invoke "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " on a background thread"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final h(Lzx;)V
    .locals 2

    .line 1
    iget-boolean v0, p1, Lzx;->d:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lzx;->g()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Lzx;->d(Z)V

    return-void

    .line 4
    :cond_1
    iget v0, p1, Lzx;->e:I

    iget v1, p0, Lzy;->h:I

    if-lt v0, v1, :cond_2

    return-void

    .line 5
    :cond_2
    iput v1, p1, Lzx;->e:I

    .line 6
    iget-object p1, p1, Lzx;->c:Laaa;

    iget-object v0, p0, Lzy;->f:Ljava/lang/Object;

    invoke-interface {p1, v0}, Laaa;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method final b(Lzx;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lzy;->j:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lzy;->k:Z

    return-void

    :cond_0
    iput-boolean v1, p0, Lzy;->j:Z

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lzy;->k:Z

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lzy;->h(Lzx;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lzy;->c:Lup;

    .line 2
    invoke-virtual {p1}, Lup;->e()Lum;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3
    invoke-virtual {p1}, Lum;->a()Ljava/util/Map$Entry;

    move-result-object v1

    check-cast v1, Lul;

    iget-object v1, v1, Lul;->b:Ljava/lang/Object;

    .line 4
    check-cast v1, Lzx;

    invoke-direct {p0, v1}, Lzy;->h(Lzx;)V

    iget-boolean v1, p0, Lzy;->k:Z

    if-eqz v1, :cond_2

    .line 1
    :cond_3
    :goto_1
    iget-boolean p1, p0, Lzy;->k:Z

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    goto :goto_0

    :cond_4
    iput-boolean v0, p0, Lzy;->j:Z

    return-void
.end method

.method public final c(Lzq;Laaa;)V
    .locals 2

    .line 1
    const-string v0, "observe"

    invoke-static {v0}, Lzy;->a(Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Lzq;->C()Lzn;

    move-result-object v0

    iget-object v0, v0, Lzn;->a:Lzm;

    sget-object v1, Lzm;->a:Lzm;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;

    invoke-direct {v0, p0, p1, p2}, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;-><init>(Lzy;Lzq;Laaa;)V

    iget-object v1, p0, Lzy;->c:Lup;

    .line 3
    invoke-virtual {v1, p2, v0}, Lup;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lzx;

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Lzx;->c(Lzq;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 5
    const-string p2, "Cannot add the same observer with different lifecycles"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    return-void

    .line 4
    :cond_3
    invoke-interface {p1}, Lzq;->C()Lzn;

    move-result-object p1

    invoke-virtual {p1, v0}, Lzn;->b(Lzp;)V

    return-void
.end method

.method protected d()V
    .locals 0

    return-void
.end method

.method protected e()V
    .locals 0

    return-void
.end method

.method public f(Laaa;)V
    .locals 1

    .line 1
    const-string v0, "removeObserver"

    invoke-static {v0}, Lzy;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lzy;->c:Lup;

    .line 2
    invoke-virtual {v0, p1}, Lup;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzx;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lzx;->b()V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Lzx;->d(Z)V

    return-void
.end method

.method protected g(Ljava/lang/Object;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method
