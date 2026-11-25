.class public final synthetic Lbwk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcol;


# instance fields
.field public final synthetic a:Ldgz;


# direct methods
.method public synthetic constructor <init>(Ldgz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbwk;->a:Ldgz;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lbwk;->a:Ldgz;

    sget-object v1, Lbup;->c:Lbup;

    invoke-interface {v0}, Ldgz;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 2
    invoke-static {v1, v0}, Lcqh;->t(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcqh;

    move-result-object v0

    return-object v0
.end method
