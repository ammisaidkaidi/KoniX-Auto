.class final Lcnk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lczb;


# instance fields
.field final synthetic a:Lcnj;

.field final synthetic b:Lczb;


# direct methods
.method public constructor <init>(Lcnj;Lczb;)V
    .locals 0

    iput-object p1, p0, Lcnk;->a:Lcnj;

    iput-object p2, p0, Lcnk;->b:Lczb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ldag;
    .locals 2

    .line 1
    iget-object v0, p0, Lcnk;->a:Lcnj;

    invoke-static {v0}, Lcnr;->c(Lcnj;)Lcnj;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcnk;->b:Lczb;

    .line 2
    invoke-interface {v1}, Lczb;->a()Ldag;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-static {v0}, Lcnr;->c(Lcnj;)Lcnj;

    return-object v1

    .line 2
    :catchall_0
    move-exception v1

    .line 3
    invoke-static {v0}, Lcnr;->c(Lcnj;)Lcnj;

    .line 4
    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcnk;->b:Lczb;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xe

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "propagating=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
