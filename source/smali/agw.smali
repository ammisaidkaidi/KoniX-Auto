.class public abstract Lagw;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/util/List;)V
.end method

.method public final b(Ljava/lang/String;Lagy;)V
    .locals 0

    .line 1
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 2
    invoke-virtual {p0, p1, p2}, Lagw;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
