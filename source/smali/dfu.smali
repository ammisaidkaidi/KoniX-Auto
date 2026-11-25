.class public final Ldfu;
.super Ljava/util/AbstractList;
.source "PG"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ldec;


# instance fields
.field public final a:Ldec;


# direct methods
.method public constructor <init>(Ldec;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Ldfu;->a:Ldec;

    return-void
.end method


# virtual methods
.method public final e()Ldec;
    .locals 0

    return-object p0
.end method

.method public final f(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ldfu;->a:Ldec;

    invoke-interface {v0, p1}, Ldec;->f(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ldfu;->a:Ldec;

    check-cast v0, Ldeb;

    invoke-virtual {v0, p1}, Ldeb;->g(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final h()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Ldfu;->a:Ldec;

    invoke-interface {v0}, Ldec;->h()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final i(Ldcl;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    new-instance v0, Ldft;

    invoke-direct {v0, p0}, Ldft;-><init>(Ldfu;)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1

    .line 1
    new-instance v0, Ldfs;

    invoke-direct {v0, p0, p1}, Ldfs;-><init>(Ldfu;I)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Ldfu;->a:Ldec;

    invoke-interface {v0}, Ldec;->size()I

    move-result v0

    return v0
.end method
