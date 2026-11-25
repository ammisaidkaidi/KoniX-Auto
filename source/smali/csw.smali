.class public final Lcsw;
.super Lctf;
.source "PG"

# interfaces
.implements Lctq;
.implements Lcsx;


# instance fields
.field final synthetic a:Lcsz;


# direct methods
.method public constructor <init>(Lcsz;Ljava/util/logging/Level;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcsw;->a:Lcsz;

    invoke-direct {p0, p2}, Lctf;-><init>(Ljava/util/logging/Level;)V

    return-void
.end method


# virtual methods
.method protected final a()Lcwj;
    .locals 1

    .line 1
    sget-object v0, Lcwh;->a:Lcwl;

    return-object v0
.end method

.method protected final b(Lctj;)Z
    .locals 13

    .line 1
    invoke-virtual {p0}, Lctf;->i()Lcug;

    move-result-object v0

    invoke-virtual {v0}, Lcug;->b()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Lcug;->c(I)Lctt;

    move-result-object v4

    iget-object v4, v4, Lctt;->a:Ljava/lang/String;

    const-string v5, "eye3tag"

    if-ne v4, v5, :cond_0

    .line 2
    sget-object v1, Lctd;->a:Lctt;

    invoke-virtual {v0, v1}, Lcug;->d(Lctt;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v1, Lctd;->g:Lctt;

    .line 3
    invoke-virtual {v0, v1}, Lcug;->d(Lctt;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lctd;->g:Lctt;

    .line 4
    sget-object v1, Lctv;->a:Lctv;

    invoke-virtual {p0, v0, v1}, Lctf;->m(Lctt;Ljava/lang/Object;)V

    goto :goto_1

    .line 30
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_1
    :goto_1
    iget-object v0, p0, Lctf;->c:Lcte;

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    const/4 v3, 0x0

    if-eqz p1, :cond_b

    .line 5
    sget-object v4, Lctd;->b:Lctt;

    invoke-virtual {v0, v4}, Lcte;->d(Lctt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v4, p0, Lctf;->c:Lcte;

    sget-object v5, Lctd;->c:Lctt;

    .line 6
    invoke-virtual {v4, v5}, Lcte;->d(Lctt;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lctn;

    iget-object v5, p0, Lctf;->c:Lcte;

    .line 7
    sget-object v6, Lcto;->a:Lctl;

    iget-object v7, v6, Lctl;->a:Lj$/util/concurrent/ConcurrentHashMap;

    .line 8
    invoke-virtual {v7, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_2

    goto :goto_4

    .line 28
    :cond_2
    new-instance v7, Lcto;

    .line 9
    invoke-direct {v7}, Lcto;-><init>()V

    iget-object v8, v6, Lctl;->a:Lj$/util/concurrent/ConcurrentHashMap;

    .line 10
    invoke-virtual {v8, p1, v7}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_3

    move-object v7, v8

    goto :goto_4

    :cond_3
    iget v8, v5, Lcte;->b:I

    move-object v10, v3

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v8, :cond_7

    sget-object v11, Lctd;->d:Lctt;

    .line 11
    invoke-virtual {v5, v9}, Lcug;->c(I)Lctt;

    move-result-object v12

    invoke-virtual {v11, v12}, Lctt;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    goto :goto_3

    .line 12
    :cond_4
    invoke-virtual {v5, v9}, Lcug;->e(I)Ljava/lang/Object;

    move-result-object v11

    .line 13
    instance-of v12, v11, Lctr;

    if-eqz v12, :cond_6

    if-nez v10, :cond_5

    new-instance v10, Lctk;

    .line 14
    invoke-direct {v10, v6, p1}, Lctk;-><init>(Lctl;Lctj;)V

    .line 15
    :cond_5
    check-cast v11, Lctr;

    invoke-virtual {v11}, Lctr;->a()V

    .line 11
    :cond_6
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 15
    :cond_7
    nop

    .line 16
    :goto_4
    check-cast v7, Lcto;

    if-eqz v0, :cond_9

    .line 17
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, v7, Lcto;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 18
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v5

    int-to-long v8, p1

    rem-long/2addr v5, v8

    const-wide/16 v8, 0x0

    cmp-long p1, v5, v8

    if-nez p1, :cond_8

    goto :goto_5

    .line 28
    :cond_8
    goto/16 :goto_a

    .line 18
    :cond_9
    :goto_5
    if-nez v4, :cond_a

    goto :goto_6

    .line 15
    :cond_a
    iget-object p1, v7, Lcto;->c:Ljava/util/concurrent/atomic/AtomicLong;

    .line 29
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 30
    throw v3

    .line 18
    :cond_b
    :goto_6
    iget-object p1, p0, Lctf;->c:Lcte;

    .line 19
    sget-object v0, Lctd;->g:Lctt;

    invoke-virtual {p1, v0}, Lcte;->d(Lctt;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lctv;

    if-eqz p1, :cond_f

    sget-object v0, Lctd;->g:Lctt;

    iget-object v2, p0, Lctf;->c:Lcte;

    if-eqz v2, :cond_e

    .line 20
    invoke-virtual {v2, v0}, Lcte;->a(Lctt;)I

    move-result v4

    if-ltz v4, :cond_e

    add-int/2addr v4, v4

    add-int/lit8 v5, v4, 0x2

    :goto_7
    iget v6, v2, Lcte;->b:I

    add-int v7, v6, v6

    if-ge v5, v7, :cond_d

    iget-object v6, v2, Lcte;->a:[Ljava/lang/Object;

    .line 21
    aget-object v6, v6, v5

    .line 22
    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    iget-object v7, v2, Lcte;->a:[Ljava/lang/Object;

    .line 23
    aput-object v6, v7, v4

    add-int/lit8 v6, v4, 0x1

    add-int/lit8 v8, v5, 0x1

    .line 24
    aget-object v8, v7, v8

    aput-object v8, v7, v6

    add-int/lit8 v4, v4, 0x2

    :cond_c
    add-int/lit8 v5, v5, 0x2

    goto :goto_7

    :cond_d
    sub-int v0, v5, v4

    shr-int/2addr v0, v1

    sub-int/2addr v6, v0

    iput v6, v2, Lcte;->b:I

    :goto_8
    if-ge v4, v5, :cond_e

    add-int/lit8 v0, v4, 0x1

    iget-object v6, v2, Lcte;->a:[Ljava/lang/Object;

    .line 25
    aput-object v3, v6, v4

    move v4, v0

    goto :goto_8

    :cond_e
    new-instance v0, Lctm;

    invoke-virtual {p0}, Lctf;->i()Lcug;

    move-result-object v2

    sget-object v3, Lctd;->a:Lctt;

    .line 26
    invoke-virtual {v2, v3}, Lcug;->d(Lctt;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    const-class v3, Lctf;

    iget v4, p1, Lctv;->f:I

    .line 27
    invoke-static {v3, v4}, Lcwm;->b(Ljava/lang/Class;I)[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-direct {v0, v2, p1, v3}, Lctm;-><init>(Ljava/lang/Throwable;Lctv;[Ljava/lang/StackTraceElement;)V

    sget-object p1, Lctd;->a:Lctt;

    .line 28
    invoke-virtual {p0, p1, v0}, Lctf;->m(Lctt;Ljava/lang/Object;)V

    goto :goto_9

    :cond_f
    nop

    :goto_9
    const/4 v2, 0x1

    goto :goto_a

    .line 15
    :cond_10
    const/4 v2, 0x1

    .line 28
    :goto_a
    return v2
.end method

.method protected final synthetic c()Lcsv;
    .locals 1

    iget-object v0, p0, Lcsw;->a:Lcsz;

    return-object v0
.end method

.method protected final bridge synthetic d()Lctq;
    .locals 0

    return-object p0
.end method
