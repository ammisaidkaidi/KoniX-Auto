.class public final Lcoz;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lj$/util/stream/Collector;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    sget-object v0, Lcoy;->a:Lcoy;

    sget-object v1, Laui;->c:Laui;

    sget-object v2, Lcox;->b:Lcox;

    sget-object v3, Lawq;->h:Lawq;

    const/4 v4, 0x0

    new-array v5, v4, [Lj$/util/stream/Collector$Characteristics;

    .line 2
    invoke-static {v0, v1, v2, v3, v5}, Lj$/util/stream/Collector$-CC;->of(Lj$/util/function/Supplier;Lj$/util/function/BiConsumer;Lj$/util/function/BinaryOperator;Lj$/util/function/Function;[Lj$/util/stream/Collector$Characteristics;)Lj$/util/stream/Collector;

    move-result-object v0

    sput-object v0, Lcoz;->a:Lj$/util/stream/Collector;

    .line 3
    sget-object v0, Lcoy;->d:Lcoy;

    sget-object v1, Laui;->e:Laui;

    sget-object v2, Lcox;->c:Lcox;

    sget-object v3, Lawq;->j:Lawq;

    new-array v5, v4, [Lj$/util/stream/Collector$Characteristics;

    .line 4
    invoke-static {v0, v1, v2, v3, v5}, Lj$/util/stream/Collector$-CC;->of(Lj$/util/function/Supplier;Lj$/util/function/BiConsumer;Lj$/util/function/BinaryOperator;Lj$/util/function/Function;[Lj$/util/stream/Collector$Characteristics;)Lj$/util/stream/Collector;

    .line 5
    sget-object v0, Lcoy;->c:Lcoy;

    sget-object v1, Laui;->d:Laui;

    sget-object v2, Lcox;->a:Lcox;

    sget-object v3, Lawq;->i:Lawq;

    new-array v4, v4, [Lj$/util/stream/Collector$Characteristics;

    .line 6
    invoke-static {v0, v1, v2, v3, v4}, Lj$/util/stream/Collector$-CC;->of(Lj$/util/function/Supplier;Lj$/util/function/BiConsumer;Lj$/util/function/BinaryOperator;Lj$/util/function/Function;[Lj$/util/stream/Collector$Characteristics;)Lj$/util/stream/Collector;

    return-void
.end method
