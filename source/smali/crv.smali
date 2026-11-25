.class public final Lcrv;
.super Lcrw;
.source "PG"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Lcrv;

.field private static final serialVersionUID:J


# instance fields
.field public final b:Lcps;

.field public final c:Lcps;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcrv;

    sget-object v1, Lcpr;->a:Lcpr;

    sget-object v2, Lcpp;->a:Lcpp;

    invoke-direct {v0, v1, v2}, Lcrv;-><init>(Lcps;Lcps;)V

    sput-object v0, Lcrv;->a:Lcrv;

    return-void
.end method

.method private constructor <init>(Lcps;Lcps;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcrw;-><init>()V

    iput-object p1, p0, Lcrv;->b:Lcps;

    iput-object p2, p0, Lcrv;->c:Lcps;

    sget-object v0, Lcpp;->a:Lcpp;

    if-eq p1, v0, :cond_1

    sget-object p1, Lcpr;->a:Lcpr;

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const-string p1, "(-\u221e..+\u221e)"

    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid range: "

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static a()Lcrt;
    .locals 1

    sget-object v0, Lcru;->a:Lcrt;

    return-object v0
.end method

.method static c()I
    .locals 1

    .line 1
    const-string v0, ""

    invoke-interface {v0, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcrv;->b:Lcps;

    iget-object v1, p0, Lcrv;->c:Lcps;

    invoke-virtual {v0, v1}, Lcps;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcrv;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcrv;

    iget-object v0, p0, Lcrv;->b:Lcps;

    .line 3
    iget-object v2, p1, Lcrv;->b:Lcps;

    invoke-virtual {v0, v2}, Lcps;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcrv;->c:Lcps;

    iget-object p1, p1, Lcrv;->c:Lcps;

    invoke-virtual {v0, p1}, Lcps;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcrv;->b:Lcps;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcrv;->c:Lcps;

    .line 2
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method readResolve()Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lcrv;->a:Lcrv;

    invoke-virtual {p0, v0}, Lcrv;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "(-\u221e..+\u221e)"

    return-object v0
.end method
