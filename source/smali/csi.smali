.class final Lcsi;
.super Lcrt;
.source "PG"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final a:Lcrt;


# direct methods
.method public constructor <init>(Lcrt;)V
    .locals 0

    invoke-direct {p0}, Lcrt;-><init>()V

    iput-object p1, p0, Lcsi;->a:Lcrt;

    return-void
.end method


# virtual methods
.method public final a()Lcrt;
    .locals 1

    iget-object v0, p0, Lcsi;->a:Lcrt;

    return-object v0
.end method

.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcsi;->a:Lcrt;

    invoke-virtual {v0, p2, p1}, Lcrt;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcsi;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lcsi;

    iget-object v0, p0, Lcsi;->a:Lcrt;

    .line 3
    iget-object p1, p1, Lcsi;->a:Lcrt;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcsi;->a:Lcrt;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcsi;->a:Lcrt;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".reverse()"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
