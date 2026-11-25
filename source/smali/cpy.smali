.class public abstract Lcpy;
.super Lcqk;
.source "PG"

# interfaces
.implements Ljava/util/Map;
.implements Lj$/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcqk;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lcpy;
.end method

.method public final bridge synthetic b()Lcqa;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final bridge synthetic c()Lcqa;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcpy;->d()Lcqw;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcqw;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcpy;->a()Lcpy;

    move-result-object v0

    invoke-virtual {v0}, Lcqk;->l()Lcqw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcpy;->d()Lcqw;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcpx;

    invoke-direct {v0, p0}, Lcpx;-><init>(Lcpy;)V

    return-object v0
.end method
