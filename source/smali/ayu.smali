.class public final Layu;
.super Lazj;
.source "PG"


# static fields
.field public static final synthetic a:I

.field private static final b:Lcqk;


# instance fields
.field private final c:Landroid/car/drivingstate/CarUxRestrictionsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2
    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 3
    const/16 v7, 0x40

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 4
    const/4 v8, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 5
    invoke-static {v0, v2}, Lez;->A(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    invoke-static {v4, v6}, Lez;->A(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    invoke-static {v7, v4}, Lez;->A(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    invoke-static {v9, v0}, Lez;->A(Ljava/lang/Object;Ljava/lang/Object;)V

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v0, v3, v10

    aput-object v2, v3, v1

    aput-object v4, v3, v5

    const/4 v1, 0x3

    aput-object v6, v3, v1

    aput-object v7, v3, v8

    const/4 v1, 0x5

    aput-object v4, v3, v1

    const/4 v1, 0x6

    aput-object v9, v3, v1

    const/4 v1, 0x7

    aput-object v0, v3, v1

    .line 9
    invoke-static {v8, v3}, Lcse;->a(I[Ljava/lang/Object;)Lcse;

    move-result-object v0

    sput-object v0, Layu;->b:Lcqk;

    return-void
.end method

.method public constructor <init>(Landroid/car/drivingstate/CarUxRestrictionsManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lazj;-><init>()V

    iput-object p1, p0, Layu;->c:Landroid/car/drivingstate/CarUxRestrictionsManager;

    return-void
.end method


# virtual methods
.method public final a()Lcqw;
    .locals 1

    .line 1
    sget-object v0, Lckw;->m:Lckw;

    invoke-static {v0}, Lcqw;->o(Ljava/lang/Object;)Lcqw;

    move-result-object v0

    return-object v0
.end method

.method public final b(Landroid/car/drivingstate/CarUxRestrictions;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/car/drivingstate/CarUxRestrictions;->getActiveRestrictions()I

    move-result p1

    sget-object v0, Layu;->b:Lcqk;

    .line 2
    invoke-virtual {v0}, Lcqk;->k()Lcqw;

    move-result-object v0

    invoke-virtual {v0}, Lcqw;->e()Lcst;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/2addr v3, p1

    if-eqz v3, :cond_0

    or-int/2addr v1, v2

    goto :goto_0

    .line 5
    :cond_1
    sget-object p1, Lckw;->m:Lckw;

    new-instance v0, Layo;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Layo;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lazj;->f(Lckw;Lj$/util/function/Consumer;)V

    return-void
.end method

.method public final c(Lcqw;)V
    .locals 1

    .line 1
    iget-object p1, p0, Layu;->c:Landroid/car/drivingstate/CarUxRestrictionsManager;

    new-instance v0, Layt;

    invoke-direct {v0, p0}, Layt;-><init>(Layu;)V

    invoke-virtual {p1, v0}, Landroid/car/drivingstate/CarUxRestrictionsManager;->registerListener(Landroid/car/drivingstate/CarUxRestrictionsManager$OnUxRestrictionsChangedListener;)V

    iget-object p1, p0, Layu;->c:Landroid/car/drivingstate/CarUxRestrictionsManager;

    .line 2
    invoke-virtual {p1}, Landroid/car/drivingstate/CarUxRestrictionsManager;->getCurrentCarUxRestrictions()Landroid/car/drivingstate/CarUxRestrictions;

    move-result-object p1

    invoke-virtual {p0, p1}, Layu;->b(Landroid/car/drivingstate/CarUxRestrictions;)V

    return-void
.end method

.method protected final d(Lcqw;)V
    .locals 0

    .line 1
    iget-object p1, p0, Layu;->c:Landroid/car/drivingstate/CarUxRestrictionsManager;

    invoke-virtual {p1}, Landroid/car/drivingstate/CarUxRestrictionsManager;->unregisterListener()V

    return-void
.end method
