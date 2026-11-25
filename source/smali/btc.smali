.class public final Lbtc;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lbsa;

.field public final b:Lbsh;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbsh;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    new-instance v1, Lbrz;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lbrz;-><init>([B)V

    .line 2
    invoke-virtual {v1}, Lbrz;->a()V

    if-eqz p1, :cond_4

    .line 3
    iput-object p1, v1, Lbrz;->a:Landroid/content/Context;

    .line 4
    invoke-static {v0}, Lcoc;->e(Ljava/lang/Object;)Lcoc;

    move-result-object p1

    iput-object p1, v1, Lbrz;->c:Lcoc;

    .line 5
    invoke-virtual {v1}, Lbrz;->a()V

    iget-object p1, v1, Lbrz;->a:Landroid/content/Context;

    if-eqz p1, :cond_1

    iget-object v0, v1, Lbrz;->d:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    new-instance v2, Lbsa;

    iget-object v3, v1, Lbrz;->b:Lcoc;

    iget-object v1, v1, Lbrz;->c:Lcoc;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {v2, p1, v3, v1, v0}, Lbsa;-><init>(Landroid/content/Context;Lcoc;Lcoc;Z)V

    iput-object v2, p0, Lbtc;->a:Lbsa;

    iput-object p2, p0, Lbtc;->b:Lbsh;

    return-void

    .line 5
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, v1, Lbrz;->a:Landroid/content/Context;

    if-nez p2, :cond_2

    .line 7
    const-string p2, " context"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object p2, v1, Lbrz;->d:Ljava/lang/Boolean;

    if-nez p2, :cond_3

    .line 8
    const-string p2, " googlerOverridesCheckbox"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Missing required properties:"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    .line 3
    const-string p2, "Null context"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CollectionBasisLogVerifier{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    const-string v1, "collectionBasisContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbtc;->a:Lbsa;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4
    const-string v1, ", basis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbtc;->b:Lbsh;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 6
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
