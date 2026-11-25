.class public final Lahi;
.super Lfv;
.source "PG"


# static fields
.field private static final f:Ljava/lang/String;


# instance fields
.field public final a:Lahx;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/List;

.field public final d:Ljava/util/List;

.field public e:Z

.field private final g:Ljava/util/List;

.field private h:Lagv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "WorkContinuationImpl"

    invoke-static {v0}, Lagr;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lahi;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lahx;Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lfv;-><init>()V

    iput-object p1, p0, Lahi;->a:Lahx;

    iput-object p2, p0, Lahi;->b:Ljava/lang/String;

    iput-object p3, p0, Lahi;->c:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lahi;->d:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    .line 2
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lahi;->g:Ljava/util/List;

    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 4
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lagy;

    invoke-virtual {p2}, Lagy;->a()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lahi;->d:Ljava/util/List;

    .line 5
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lahi;->g:Ljava/util/List;

    .line 6
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static L()Ljava/util/Set;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final M()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lahi;->e:Z

    if-nez v0, :cond_0

    new-instance v0, Lalb;

    invoke-direct {v0, p0}, Lalb;-><init>(Lahi;)V

    iget-object v1, p0, Lahi;->a:Lahx;

    iget-object v1, v1, Lahx;->i:Lamh;

    .line 2
    invoke-virtual {v1, v0}, Lamh;->a(Ljava/lang/Runnable;)V

    iget-object v0, v0, Lalb;->a:Lahd;

    iput-object v0, p0, Lahi;->h:Lagv;

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lagr;->a()Lagr;

    sget-object v0, Lahi;->f:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lahi;->d:Ljava/util/List;

    .line 4
    const-string v3, ", "

    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Already enqueued work ids (%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Throwable;

    .line 3
    invoke-static {v0, v1, v2}, Lagr;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-void
.end method
