.class public final Lcoi;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Z

.field public final b:Lew;

.field private final c:Lcog;


# direct methods
.method private constructor <init>(Lcog;ZLew;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoi;->c:Lcog;

    iput-boolean p2, p0, Lcoi;->a:Z

    iput-object p3, p0, Lcoi;->b:Lew;

    return-void
.end method

.method public static b(C)Lcoi;
    .locals 7

    .line 1
    new-instance v0, Lcnu;

    invoke-direct {v0, p0}, Lcnu;-><init>(C)V

    new-instance p0, Lcoi;

    new-instance v2, Lcog;

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1, v1}, Lcog;-><init>(Lew;[B[B)V

    sget-object v4, Lcnw;->a:Lcnw;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcoi;-><init>(Lcog;ZLew;[B[B)V

    return-object p0
.end method


# virtual methods
.method public final a()Lcoi;
    .locals 7

    new-instance v6, Lcoi;

    iget-object v1, p0, Lcoi;->c:Lcog;

    iget-object v3, p0, Lcoi;->b:Lew;

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcoi;-><init>(Lcog;ZLew;[B[B)V

    return-object v6
.end method

.method public final c(Ljava/lang/CharSequence;)Ljava/lang/Iterable;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcoh;

    invoke-direct {v0, p0, p1}, Lcoh;-><init>(Lcoi;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public final d(Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lcoi;->c:Lcog;

    new-instance v1, Lcnt;

    invoke-direct {v1, v0, p0, p1}, Lcnt;-><init>(Lcog;Lcoi;Ljava/lang/CharSequence;)V

    return-object v1
.end method

.method public final e(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcoi;->d(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
