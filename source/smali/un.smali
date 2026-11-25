.class public abstract Lun;
.super Luo;
.source "PG"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field a:Lul;

.field b:Lul;


# direct methods
.method public constructor <init>(Lul;Lul;)V
    .locals 0

    invoke-direct {p0}, Luo;-><init>()V

    iput-object p2, p0, Lun;->a:Lul;

    iput-object p1, p0, Lun;->b:Lul;

    return-void
.end method

.method private final d()Lul;
    .locals 2

    .line 1
    iget-object v0, p0, Lun;->b:Lul;

    iget-object v1, p0, Lun;->a:Lul;

    if-eq v0, v1, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lun;->b(Lul;)Lul;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public abstract a(Lul;)Lul;
.end method

.method public final aK(Lul;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lun;->a:Lul;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lun;->b:Lul;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lun;->b:Lul;

    iput-object v0, p0, Lun;->a:Lul;

    :cond_0
    iget-object v0, p0, Lun;->a:Lul;

    if-ne v0, p1, :cond_1

    invoke-virtual {p0, v0}, Lun;->a(Lul;)Lul;

    move-result-object v0

    iput-object v0, p0, Lun;->a:Lul;

    :cond_1
    iget-object v0, p0, Lun;->b:Lul;

    if-ne v0, p1, :cond_2

    .line 2
    invoke-direct {p0}, Lun;->d()Lul;

    move-result-object p1

    iput-object p1, p0, Lun;->b:Lul;

    :cond_2
    return-void
.end method

.method public abstract b(Lul;)Lul;
.end method

.method public final c()Ljava/util/Map$Entry;
    .locals 2

    .line 1
    iget-object v0, p0, Lun;->b:Lul;

    invoke-direct {p0}, Lun;->d()Lul;

    move-result-object v1

    iput-object v1, p0, Lun;->b:Lul;

    return-object v0
.end method

.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lun;->b:Lul;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lun;->c()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
