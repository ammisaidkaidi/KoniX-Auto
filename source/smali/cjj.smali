.class public final synthetic Lcjj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lczc;


# instance fields
.field public final synthetic a:Lcjp;

.field public final synthetic b:Lczc;

.field public final synthetic c:Ljava/util/concurrent/Executor;


# direct methods
.method public synthetic constructor <init>(Lcjp;Lczc;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcjj;->a:Lcjp;

    iput-object p2, p0, Lcjj;->b:Lczc;

    iput-object p3, p0, Lcjj;->c:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ldag;
    .locals 2

    .line 1
    iget-object p1, p0, Lcjj;->a:Lcjp;

    iget-object v0, p0, Lcjj;->b:Lczc;

    iget-object v1, p0, Lcjj;->c:Ljava/util/concurrent/Executor;

    iget-object p1, p1, Lcjp;->b:Lcjq;

    invoke-interface {p1, v0, v1}, Lcjq;->d(Lczc;Ljava/util/concurrent/Executor;)Ldag;

    move-result-object p1

    return-object p1
.end method
