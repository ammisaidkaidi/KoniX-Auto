.class public final Lek;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ler;

.field public static final b:Lvh;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    new-instance v0, Leo;

    invoke-direct {v0}, Leo;-><init>()V

    sput-object v0, Lek;->a:Ler;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Len;

    .line 2
    invoke-direct {v0}, Len;-><init>()V

    sput-object v0, Lek;->a:Ler;

    .line 1
    :goto_0
    new-instance v0, Lvh;

    const/16 v1, 0x10

    .line 3
    invoke-direct {v0, v1}, Lvh;-><init>(I)V

    sput-object v0, Lek;->b:Lvh;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Context cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .locals 6

    .line 1
    sget-object v0, Lek;->a:Ler;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Ler;->d(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-static {p1, p2, p4}, Lek;->c(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lek;->b:Lvh;

    .line 3
    invoke-virtual {p2, p1, p0}, Lvh;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public static c(Landroid/content/res/Resources;II)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/Context;Ldv;Landroid/content/res/Resources;IILeb;)Landroid/graphics/Typeface;
    .locals 5

    .line 1
    instance-of v0, p1, Ldy;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 2
    check-cast p1, Ldy;

    iget-object v0, p1, Ldy;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 32
    :cond_0
    nop

    .line 4
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 5
    invoke-static {v3, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0, v2}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move-object v0, v1

    .line 3
    :cond_2
    :goto_0
    if-nez v0, :cond_9

    iget v0, p1, Ldy;->c:I

    iget v2, p1, Ldy;->b:I

    .line 7
    invoke-static {}, Leb;->c()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lym;

    invoke-direct {v4, p5}, Lym;-><init>(Leb;)V

    iget-object p1, p1, Ldy;->a:Lye;

    new-instance p5, Lyc;

    invoke-direct {p5, v4, v3}, Lyc;-><init>(Lym;Landroid/os/Handler;)V

    if-nez v0, :cond_5

    .line 8
    invoke-static {p1, p4}, Lyk;->b(Lye;I)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lyk;->a:Lvh;

    .line 9
    invoke-virtual {v3, v0}, Lvh;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Typeface;

    if-eqz v3, :cond_3

    new-instance p0, Lyj;

    invoke-direct {p0, v3}, Lyj;-><init>(Landroid/graphics/Typeface;)V

    .line 10
    invoke-virtual {p5, p0}, Lyc;->a(Lyj;)V

    move-object v1, v3

    goto/16 :goto_2

    .line 36
    :cond_3
    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    .line 11
    invoke-static {v0, p0, p1, p4}, Lyk;->a(Ljava/lang/String;Landroid/content/Context;Lye;I)Lyj;

    move-result-object p0

    .line 12
    invoke-virtual {p5, p0}, Lyc;->a(Lyj;)V

    iget-object v1, p0, Lyj;->a:Landroid/graphics/Typeface;

    goto/16 :goto_2

    :cond_4
    new-instance v3, Lyf;

    invoke-direct {v3, v0, p0, p1, p4}, Lyf;-><init>(Ljava/lang/String;Landroid/content/Context;Lye;I)V

    :try_start_0
    sget-object p0, Lyk;->b:Ljava/util/concurrent/ExecutorService;

    .line 13
    invoke-static {p0, v3, v2}, Lxp;->d(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Callable;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyj;

    .line 14
    invoke-virtual {p5, p0}, Lyc;->a(Lyj;)V

    .line 15
    iget-object v1, p0, Lyj;->a:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 35
    :catch_0
    move-exception p0

    new-instance p0, Lyj;

    const/4 p1, -0x3

    invoke-direct {p0, p1}, Lyj;-><init>(I)V

    .line 16
    invoke-virtual {p5, p0}, Lyc;->a(Lyj;)V

    goto/16 :goto_2

    .line 17
    :cond_5
    invoke-static {p1, p4}, Lyk;->b(Lye;I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lyk;->a:Lvh;

    .line 18
    invoke-virtual {v2, v0}, Lvh;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Typeface;

    if-eqz v2, :cond_6

    new-instance p0, Lyj;

    invoke-direct {p0, v2}, Lyj;-><init>(Landroid/graphics/Typeface;)V

    .line 19
    invoke-virtual {p5, p0}, Lyc;->a(Lyj;)V

    move-object v1, v2

    goto :goto_2

    :cond_6
    new-instance v2, Lyg;

    invoke-direct {v2, p5}, Lyg;-><init>(Lyc;)V

    sget-object v3, Lyk;->c:Ljava/lang/Object;

    .line 20
    monitor-enter v3

    :try_start_1
    sget-object p5, Lyk;->d:Lvi;

    .line 21
    invoke-virtual {p5, v0}, Lvi;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/ArrayList;

    if-eqz p5, :cond_7

    .line 22
    invoke-virtual {p5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    monitor-exit v3

    goto :goto_2

    :cond_7
    new-instance p5, Ljava/util/ArrayList;

    .line 24
    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    .line 25
    invoke-virtual {p5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lyk;->d:Lvi;

    .line 26
    invoke-virtual {v2, v0, p5}, Lvi;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance p5, Lyh;

    invoke-direct {p5, v0, p0, p1, p4}, Lyh;-><init>(Ljava/lang/String;Landroid/content/Context;Lye;I)V

    sget-object p0, Lyk;->b:Ljava/util/concurrent/ExecutorService;

    new-instance p1, Lyi;

    invoke-direct {p1, v0}, Lyi;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_8

    new-instance v0, Landroid/os/Handler;

    .line 29
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_1

    .line 31
    :cond_8
    new-instance v0, Landroid/os/Handler;

    .line 30
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 29
    :goto_1
    new-instance v2, Lyp;

    invoke-direct {v2, v0, p5, p1}, Lyp;-><init>(Landroid/os/Handler;Ljava/util/concurrent/Callable;Lgc;)V

    .line 31
    invoke-interface {p0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 16
    :catchall_0
    move-exception p0

    .line 27
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 32
    :cond_9
    invoke-virtual {p5, v0}, Leb;->b(Landroid/graphics/Typeface;)V

    return-object v0

    .line 6
    :cond_a
    sget-object v0, Lek;->a:Ler;

    .line 33
    check-cast p1, Ldw;

    invoke-virtual {v0, p0, p1, p2, p4}, Ler;->a(Landroid/content/Context;Ldw;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 34
    invoke-virtual {p5, v1}, Leb;->b(Landroid/graphics/Typeface;)V

    goto :goto_2

    .line 35
    :cond_b
    invoke-static {}, Leb;->d()V

    .line 10
    :goto_2
    if-eqz v1, :cond_c

    sget-object p0, Lek;->b:Lvh;

    .line 36
    invoke-static {p2, p3, p4}, Lek;->c(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lvh;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    return-object v1
.end method
