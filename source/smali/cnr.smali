.class public final Lcnr;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/util/WeakHashMap;

.field private static final b:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcnr;->a:Ljava/util/WeakHashMap;

    new-instance v0, Lcnn;

    .line 2
    invoke-direct {v0}, Lcnn;-><init>()V

    sput-object v0, Lcnr;->b:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/ArrayDeque;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    .line 4
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    return-void
.end method

.method static a()Lcnj;
    .locals 1

    .line 1
    sget-object v0, Lcnr;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcnq;

    iget-object v0, v0, Lcnq;->c:Lcnj;

    return-object v0
.end method

.method static b()Lcnj;
    .locals 1

    .line 1
    invoke-static {}, Lcnr;->a()Lcnj;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcne;

    invoke-direct {v0}, Lcne;-><init>()V

    :cond_0
    return-object v0
.end method

.method static c(Lcnj;)Lcnj;
    .locals 1

    .line 1
    sget-object v0, Lcnr;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcnq;

    invoke-static {v0, p0}, Lcnr;->h(Lcnq;Lcnj;)Lcnj;

    move-result-object p0

    return-object p0
.end method

.method static d(Lcnj;)Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x0

    const/4 v2, 0x0

    move-object v1, p0

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcnj;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-interface {v1}, Lcnj;->a()Lcnj;

    move-result-object v1

    if-eqz v1, :cond_0

    add-int/lit8 v2, v2, 0x4

    goto :goto_0

    :cond_1
    new-array v1, v2, [C

    :cond_2
    :goto_1
    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcnj;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 2
    invoke-virtual {v3, v0, v4, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    invoke-interface {p0}, Lcnj;->a()Lcnj;

    move-result-object p0

    if-eqz p0, :cond_2

    add-int/lit8 v2, v2, -0x4

    .line 3
    const-string v3, " -> "

    const/4 v4, 0x4

    invoke-virtual {v3, v0, v4, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method static e(Lcnj;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcnr;->b:Ljava/lang/ThreadLocal;

    .line 2
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcnq;

    .line 3
    iget-object v1, v0, Lcnq;->c:Lcnj;

    .line 4
    invoke-interface {v1}, Lcnj;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcnj;->b()Ljava/lang/String;

    move-result-object v3

    if-ne p0, v1, :cond_0

    .line 5
    invoke-interface {v1}, Lcnj;->a()Lcnj;

    move-result-object p0

    invoke-static {v0, p0}, Lcnr;->h(Lcnq;Lcnj;)Lcnj;

    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v3, v0, v1

    .line 6
    const-string v1, "Wrong trace, expected %s but got %s"

    invoke-static {v1, v0}, Lex;->k(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static f(Ljava/lang/String;)Lcng;
    .locals 2

    .line 1
    sget-object v0, Lcnh;->a:Lcni;

    .line 2
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcnr;->g(Ljava/lang/String;Lcni;Z)Lcng;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/lang/String;Lcni;Z)Lcng;
    .locals 2

    .line 1
    invoke-static {}, Lcnr;->a()Lcnj;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcnf;

    .line 2
    invoke-direct {v0, p0, p1, p2}, Lcnf;-><init>(Ljava/lang/String;Lcni;Z)V

    goto :goto_0

    .line 3
    :cond_0
    instance-of v1, v0, Lcmz;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Lcmz;

    invoke-interface {v0, p0, p1, p2}, Lcmz;->d(Ljava/lang/String;Lcni;Z)Lcnj;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {v0, p0, p1}, Lcnj;->f(Ljava/lang/String;Lcni;)Lcnj;

    move-result-object v0

    .line 6
    :goto_0
    invoke-static {v0}, Lcnr;->c(Lcnj;)Lcnj;

    new-instance p0, Lcng;

    .line 7
    invoke-direct {p0, v0}, Lcng;-><init>(Lcnj;)V

    return-object p0
.end method

.method private static h(Lcnq;Lcnj;)Lcnj;
    .locals 3

    .line 1
    iget-object v0, p0, Lcnq;->c:Lcnj;

    if-ne v0, p1, :cond_0

    return-object p1

    :cond_0
    if-nez v0, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_1

    .line 2
    invoke-static {}, Lcno;->a()Z

    move-result v1

    goto :goto_0

    .line 8
    :cond_1
    nop

    .line 3
    invoke-static {}, Lchg;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 4
    :goto_0
    iput-boolean v1, p0, Lcnq;->b:Z

    .line 5
    :cond_2
    iget-boolean v1, p0, Lcnq;->b:Z

    if-eqz v1, :cond_3

    .line 6
    invoke-static {v0, p1}, Lcnr;->l(Lcnj;Lcnj;)V

    .line 7
    :cond_3
    iput-object p1, p0, Lcnq;->c:Lcnj;

    .line 8
    iget-object p0, p0, Lcnq;->a:Lcnp;

    return-object v0
.end method

.method private static i(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x7f

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 2
    :cond_0
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    return-void
.end method

.method private static j(Lcnj;)V
    .locals 1

    .line 1
    invoke-interface {p0}, Lcnj;->a()Lcnj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p0}, Lcnj;->a()Lcnj;

    move-result-object v0

    invoke-static {v0}, Lcnr;->j(Lcnj;)V

    .line 3
    :cond_0
    invoke-interface {p0}, Lcnj;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcnr;->i(Ljava/lang/String;)V

    return-void
.end method

.method private static k(Lcnj;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2
    invoke-interface {p0}, Lcnj;->a()Lcnj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p0}, Lcnj;->a()Lcnj;

    move-result-object p0

    invoke-static {p0}, Lcnr;->k(Lcnj;)V

    :cond_0
    return-void
.end method

.method private static l(Lcnj;Lcnj;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_2

    invoke-interface {p0}, Lcnj;->a()Lcnj;

    move-result-object v0

    if-ne v0, p1, :cond_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_0
    invoke-interface {p1}, Lcnj;->a()Lcnj;

    move-result-object v0

    if-eq p0, v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-interface {p1}, Lcnj;->b()Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {p0}, Lcnr;->i(Ljava/lang/String;)V

    return-void

    .line 2
    :cond_2
    :goto_0
    invoke-static {p0}, Lcnr;->k(Lcnj;)V

    :cond_3
    if-eqz p1, :cond_4

    .line 3
    invoke-static {p1}, Lcnr;->j(Lcnj;)V

    :cond_4
    return-void
.end method
