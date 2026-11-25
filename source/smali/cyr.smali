.class final Lcyr;
.super Lcyt;
.source "PG"


# direct methods
.method public constructor <init>(Ldag;Lczc;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcyt;-><init>(Ldag;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lczc;

    .line 2
    invoke-interface {p1, p2}, Lczc;->a(Ljava/lang/Object;)Ldag;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p1
.end method

.method public final synthetic n(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ldag;

    .line 2
    invoke-virtual {p0, p1}, Lcyp;->d(Ldag;)Z

    return-void
.end method
