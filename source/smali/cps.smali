.class public Lcps;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final b:Ljava/lang/Comparable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcps;->b:Ljava/lang/Comparable;

    return-void
.end method


# virtual methods
.method public a(Lcps;)I
    .locals 3

    .line 1
    sget-object v0, Lcpr;->a:Lcpr;

    const/4 v1, 0x1

    if-eq p1, v0, :cond_3

    sget-object v0, Lcpp;->a:Lcpp;

    const/4 v2, -0x1

    if-ne p1, v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p1, Lcps;->b:Ljava/lang/Comparable;

    invoke-static {}, Lcrv;->c()I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    .line 2
    :cond_1
    instance-of v0, p0, Lcpq;

    instance-of p1, p1, Lcpq;

    if-ne v0, p1, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    :goto_0
    return v2

    :cond_3
    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcps;

    invoke-virtual {p0, p1}, Lcps;->a(Lcps;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lcps;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lcps;

    .line 3
    :try_start_0
    invoke-virtual {p0, p1}, Lcps;->a(Lcps;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1

    :catch_0
    move-exception p1

    :cond_1
    return v1
.end method
