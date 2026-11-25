.class public abstract Lctf;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lctq;
.implements Lcub;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field public final b:J

.field public c:Lcte;

.field private final d:Ljava/util/logging/Level;

.field private e:Lcti;

.field private f:Lcvc;

.field private g:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    sput-object v0, Lctf;->a:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Ljava/util/logging/Level;)V
    .locals 3

    .line 1
    invoke-static {}, Lcva;->b()J

    move-result-wide v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-object v2, p0, Lctf;->c:Lcte;

    iput-object v2, p0, Lctf;->e:Lcti;

    iput-object v2, p0, Lctf;->f:Lcvc;

    iput-object v2, p0, Lctf;->g:[Ljava/lang/Object;

    .line 2
    const-string v2, "level"

    invoke-static {p1, v2}, Lhf;->u(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lctf;->d:Ljava/util/logging/Level;

    iput-wide v0, p0, Lctf;->b:J

    return-void
.end method

.method private final varargs E(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .line 1
    iput-object p2, p0, Lctf;->g:[Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    aget-object v1, p2, v0

    instance-of v2, v1, Lcta;

    if-eqz v2, :cond_0

    .line 2
    check-cast v1, Lcta;

    invoke-interface {v1}, Lcta;->a()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p2, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object p2, Lctf;->a:Ljava/lang/String;

    if-eq p1, p2, :cond_2

    new-instance p2, Lcvc;

    .line 3
    invoke-virtual {p0}, Lctf;->a()Lcwj;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcvc;-><init>(Lcwj;Ljava/lang/String;)V

    iput-object p2, p0, Lctf;->f:Lcvc;

    .line 4
    :cond_2
    invoke-static {}, Lcva;->k()Lcwa;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcwa;->a()Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p0}, Lctf;->i()Lcug;

    move-result-object p2

    .line 6
    sget-object v0, Lctd;->f:Lctt;

    invoke-virtual {p2, v0}, Lcug;->d(Lctt;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcwa;

    if-eqz p2, :cond_4

    .line 7
    invoke-virtual {p2}, Lcwa;->a()Z

    move-result v0

    if-nez v0, :cond_4

    .line 8
    invoke-virtual {p1}, Lcwa;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object p1, p2

    goto :goto_1

    .line 15
    :cond_3
    new-instance v0, Lcwa;

    new-instance v1, Lcvy;

    iget-object p1, p1, Lcwa;->c:Lcvy;

    iget-object p2, p2, Lcwa;->c:Lcvy;

    .line 9
    invoke-direct {v1, p1, p2}, Lcvy;-><init>(Lcvy;Lcvy;)V

    invoke-direct {v0, v1}, Lcwa;-><init>(Lcvy;)V

    move-object p1, v0

    .line 8
    :cond_4
    :goto_1
    sget-object p2, Lctd;->f:Lctt;

    .line 10
    invoke-virtual {p0, p2, p1}, Lctf;->m(Lctt;Ljava/lang/Object;)V

    :cond_5
    invoke-virtual {p0}, Lctf;->c()Lcsv;

    move-result-object p1

    .line 11
    :try_start_0
    sget-object p2, Lcwo;->a:Ljava/lang/ThreadLocal;

    .line 12
    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcwo;

    .line 13
    iget v0, p2, Lcwo;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lcwo;->b:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_9

    const/16 v1, 0x64

    if-gt v0, v1, :cond_6

    :try_start_1
    iget-object v0, p1, Lcsv;->a:Lcuc;

    .line 14
    invoke-virtual {v0, p0}, Lcuc;->c(Lcub;)V

    goto :goto_2

    .line 16
    :cond_6
    const-string v0, "unbounded recursion in log statement"

    .line 15
    invoke-static {v0, p0}, Lcsv;->d(Ljava/lang/String;Lcub;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :goto_2
    if-eqz p2, :cond_7

    .line 16
    :try_start_2
    invoke-virtual {p2}, Lcwo;->close()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_7
    return-void

    .line 17
    :catchall_0
    move-exception v0

    if-eqz p2, :cond_8

    .line 11
    :try_start_3
    invoke-virtual {p2}, Lcwo;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    .line 20
    :catchall_1
    move-exception p2

    .line 11
    :cond_8
    :goto_3
    :try_start_4
    throw v0

    .line 18
    :cond_9
    new-instance p2, Ljava/lang/AssertionError;

    const-string v0, "Overflow of RecursionDepth (possible error in core library)"

    .line 17
    invoke-direct {p2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 9
    :catch_0
    move-exception p2

    :try_start_5
    iget-object p1, p1, Lcsv;->a:Lcuc;

    .line 18
    invoke-virtual {p1, p2, p0}, Lcuc;->b(Ljava/lang/RuntimeException;Lcub;)V
    :try_end_5
    .catch Lcud; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    return-void

    .line 21
    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    .line 19
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v2

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p0}, Lcsv;->d(Ljava/lang/String;Lcub;)V

    :try_start_6
    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 20
    invoke-virtual {p1, p2}, Ljava/lang/RuntimeException;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2

    return-void

    :catch_2
    move-exception p1

    return-void

    .line 11
    :catch_3
    move-exception p1

    .line 21
    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method private final F()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lctf;->e:Lcti;

    if-nez v0, :cond_0

    invoke-static {}, Lcva;->g()Lcuz;

    move-result-object v0

    const-class v1, Lctf;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcuz;->a(Ljava/lang/Class;I)Lcti;

    move-result-object v0

    iput-object v0, p0, Lctf;->e:Lcti;

    :cond_0
    iget-object v0, p0, Lctf;->e:Lcti;

    sget-object v1, Lcti;->a:Lcti;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lctf;->e:Lcti;

    iget-object v1, p0, Lctf;->c:Lcte;

    if-eqz v1, :cond_4

    iget v2, v1, Lcte;->b:I

    if-lez v2, :cond_4

    .line 2
    const-string v2, "logSiteKey"

    invoke-static {v0, v2}, Lhf;->u(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget v2, v1, Lcte;->b:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    .line 3
    sget-object v4, Lctd;->d:Lctt;

    invoke-virtual {v1, v3}, Lcug;->c(I)Lctt;

    move-result-object v5

    invoke-virtual {v4, v5}, Lctt;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4
    invoke-virtual {v1, v3}, Lcug;->e(I)Ljava/lang/Object;

    move-result-object v4

    .line 5
    instance-of v5, v4, Lctr;

    if-eqz v5, :cond_1

    .line 7
    check-cast v4, Lctr;

    invoke-virtual {v4}, Lctr;->b()Lctj;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v5, Lctu;

    .line 6
    invoke-direct {v5, v0, v4}, Lctu;-><init>(Lctj;Ljava/lang/Object;)V

    move-object v0, v5

    .line 7
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_3
    const/4 v0, 0x0

    :cond_4
    invoke-virtual {p0, v0}, Lctf;->b(Lctj;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lctf;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    const-string p1, "Values found for both devices: %s and usb %s, btValue: %s, usbValue: %s"

    invoke-direct {p0, p1, v0}, Lctf;->E(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final B(Ljava/lang/Object;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lctf;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v0, p1

    const-string p1, "onShutdown was called multiple times or onSetup was never called, handler: %s, is thread alive: %b"

    invoke-direct {p0, p1, v0}, Lctf;->E(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final C(ZZ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lctf;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v0, p1

    const-string p1, "Failed to acquire semaphore. Is media codec running: %b, thread interrupted: %b"

    invoke-direct {p0, p1, v0}, Lctf;->E(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final D(J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lctf;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "**Latency measurement (ms) ** Video setup latency: %d"

    invoke-direct {p0, p1, v0}, Lctf;->E(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected abstract a()Lcwj;
.end method

.method protected b(Lctj;)Z
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method protected abstract c()Lcsv;
.end method

.method protected abstract d()Lctq;
.end method

.method public final e()J
    .locals 2

    iget-wide v0, p0, Lctf;->b:J

    return-wide v0
.end method

.method public final f()Lcti;
    .locals 2

    .line 1
    iget-object v0, p0, Lctf;->e:Lcti;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot request log site information prior to postProcess()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g(Ljava/lang/Throwable;)Lctq;
    .locals 2

    .line 1
    sget-object v0, Lctd;->a:Lctt;

    .line 2
    const-string v1, "metadata key"

    invoke-static {v0, v1}, Lhf;->u(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0, v0, p1}, Lctf;->m(Lctt;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lctf;->d()Lctq;

    move-result-object p1

    return-object p1
.end method

.method public final h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;
    .locals 1

    new-instance v0, Lcth;

    invoke-direct {v0, p1, p2, p3, p4}, Lcth;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iget-object p1, p0, Lctf;->e:Lcti;

    if-nez p1, :cond_0

    iput-object v0, p0, Lctf;->e:Lcti;

    :cond_0
    invoke-virtual {p0}, Lctf;->d()Lctq;

    move-result-object p1

    return-object p1
.end method

.method public final i()Lcug;
    .locals 1

    iget-object v0, p0, Lctf;->c:Lcte;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lcuf;->a:Lcuf;

    return-object v0
.end method

.method public final j()Lcvc;
    .locals 1

    iget-object v0, p0, Lctf;->f:Lcvc;

    return-object v0
.end method

.method public final k()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lctf;->f:Lcvc;

    if-nez v0, :cond_0

    iget-object v0, p0, Lctf;->g:[Ljava/lang/Object;

    const/4 v1, 0x0

    .line 2
    aget-object v0, v0, v1

    return-object v0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot get literal argument if a template context exists"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final l()Ljava/util/logging/Level;
    .locals 1

    iget-object v0, p0, Lctf;->d:Ljava/util/logging/Level;

    return-object v0
.end method

.method protected final m(Lctt;Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lctf;->c:Lcte;

    if-nez v0, :cond_0

    new-instance v0, Lcte;

    invoke-direct {v0}, Lcte;-><init>()V

    iput-object v0, p0, Lctf;->c:Lcte;

    :cond_0
    iget-object v0, p0, Lctf;->c:Lcte;

    iget-boolean v1, p1, Lctt;->b:Z

    const-string v2, "metadata value"

    if-nez v1, :cond_2

    invoke-virtual {v0, p1}, Lcte;->a(Lctt;)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, v0, Lcte;->a:[Ljava/lang/Object;

    .line 6
    invoke-static {p2, v2}, Lhf;->u(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    add-int/2addr v1, v1

    add-int/lit8 v1, v1, 0x1

    aput-object p2, p1, v1

    return-void

    .line 1
    :cond_2
    :goto_0
    iget v1, v0, Lcte;->b:I

    add-int/lit8 v1, v1, 0x1

    iget-object v3, v0, Lcte;->a:[Ljava/lang/Object;

    .line 2
    array-length v4, v3

    add-int/2addr v1, v1

    if-le v1, v4, :cond_3

    add-int/2addr v4, v4

    .line 3
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcte;->a:[Ljava/lang/Object;

    :cond_3
    iget-object v1, v0, Lcte;->a:[Ljava/lang/Object;

    iget v3, v0, Lcte;->b:I

    .line 4
    const-string v4, "metadata key"

    invoke-static {p1, v4}, Lhf;->u(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    add-int/2addr v3, v3

    aput-object p1, v1, v3

    iget-object p1, v0, Lcte;->a:[Ljava/lang/Object;

    iget v1, v0, Lcte;->b:I

    .line 5
    invoke-static {p2, v2}, Lhf;->u(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    add-int/2addr v1, v1

    add-int/lit8 v1, v1, 0x1

    aput-object p2, p1, v1

    iget p1, v0, Lcte;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcte;->b:I

    return-void
.end method

.method public final n(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lctf;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lctf;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lctf;->E(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final o(Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lctf;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    invoke-direct {p0, p1, v0}, Lctf;->E(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final p(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lctf;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p0, p1, v0}, Lctf;->E(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final q(Ljava/lang/String;II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lctf;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    const/4 p2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, p2

    invoke-direct {p0, p1, v0}, Lctf;->E(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final r(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lctf;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    invoke-direct {p0, p1, v0}, Lctf;->E(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final s(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lctf;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, p2

    invoke-direct {p0, p1, v0}, Lctf;->E(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final t(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lctf;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    invoke-direct {p0, p1, v0}, Lctf;->E(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final u(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lctf;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p2, 0x2

    aput-object p4, v0, p2

    invoke-direct {p0, p1, v0}, Lctf;->E(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final v()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lctf;->c:Lcte;

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lctf;->c:Lcte;

    sget-object v2, Lctd;->e:Lctt;

    invoke-virtual {v1, v2}, Lcte;->d(Lctt;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final w()[Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lctf;->f:Lcvc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lctf;->g:[Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot get arguments unless a template context exists"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final x(S)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lctf;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Message of unknown type %d received"

    invoke-direct {p0, p1, v0}, Lctf;->E(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final y(Ljava/util/concurrent/TimeUnit;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final z(Ljava/lang/Object;J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lctf;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v0, p1

    const-string p1, "Caught unhandled exception in thread %s/%d"

    invoke-direct {p0, p1, v0}, Lctf;->E(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
