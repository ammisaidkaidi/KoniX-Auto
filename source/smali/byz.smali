.class public final Lbyz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbwq;


# instance fields
.field public final a:Landroid/app/Application;

.field public final b:Ldgz;

.field public final c:Lbwn;

.field public final d:Lbze;

.field private final e:Ldai;

.field private final f:Lbul;

.field private final g:Z

.field private final h:Lbyy;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lbwo;Landroid/content/Context;Lbyy;Ldai;Ldgz;Lbze;Lbul;Ldny;Ljava/util/concurrent/Executor;Lcoc;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lbyz;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lbyr;->a:Lbyr;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 2
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p3, p0, Lbyz;->h:Lbyy;

    iput-object p7, p0, Lbyz;->f:Lbul;

    .line 3
    invoke-virtual {p1, p9, p5, p8}, Lbwo;->a(Ljava/util/concurrent/Executor;Ldgz;Ldny;)Lbwn;

    move-result-object p1

    iput-object p1, p0, Lbyz;->c:Lbwn;

    check-cast p2, Landroid/app/Application;

    iput-object p2, p0, Lbyz;->a:Landroid/app/Application;

    iput-object p4, p0, Lbyz;->e:Ldai;

    iput-object p5, p0, Lbyz;->b:Ldgz;

    iput-object p6, p0, Lbyz;->d:Lbze;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 4
    invoke-virtual {p10, p1}, Lcoc;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lbyz;->g:Z

    return-void
.end method

.method public static c(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lbyz;->h:Lbyy;

    new-instance v1, Lbza;

    invoke-direct {v1, p0}, Lbza;-><init>(Lbyz;)V

    iput-object v1, v0, Lbyy;->a:Lbyx;

    return-void
.end method

.method public final b(Lbtx;)V
    .locals 2

    .line 1
    iget-object p1, p1, Lbtx;->a:Ljava/lang/String;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lbyz;->d(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public final d(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lbyz;->f:Lbul;

    iget-boolean v0, v0, Lbul;->b:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lhh;->h()Ldag;

    return-void

    :cond_0
    new-instance v0, Lbzb;

    invoke-direct {v0, p0, p2, p1, p3}, Lbzb;-><init>(Lbyz;ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lbyz;->e:Ldai;

    .line 2
    invoke-static {v0, p1}, Lhh;->m(Lczb;Ljava/util/concurrent/Executor;)Ldag;

    return-void
.end method

.method public final u()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lbyz;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbyz;->a()V

    :cond_0
    return-void
.end method
