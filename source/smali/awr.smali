.class public final synthetic Lawr;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lj$/util/function/IntFunction;


# instance fields
.field public final synthetic a:Lj$/util/function/IntFunction;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lj$/util/function/IntFunction;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lawr;->a:Lj$/util/function/IntFunction;

    iput-object p2, p0, Lawr;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lawr;->a:Lj$/util/function/IntFunction;

    iget-object v1, p0, Lawr;->b:Ljava/lang/String;

    invoke-interface {v0, p1}, Lj$/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v2, Lawt;->a:Lcsz;

    invoke-virtual {v2}, Lcsv;->c()Lctq;

    move-result-object v2

    const/16 v3, 0xad

    .line 2
    const-string v4, "com/google/android/apps/auto/aareceiver/config/CarInfoProvider"

    const-string v5, "lambda$translateCarProperty$3"

    const-string v6, "CarInfoProvider.java"

    invoke-interface {v2, v4, v5, v3, v6}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v2

    check-cast v2, Lcsx;

    const-string v3, "Could not parse %s %d - skipping"

    invoke-interface {v2, v3, v1, p1}, Lcsx;->s(Ljava/lang/String;Ljava/lang/Object;I)V

    :cond_0
    return-object v0
.end method
