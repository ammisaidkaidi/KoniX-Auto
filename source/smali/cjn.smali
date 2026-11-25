.class public final synthetic Lcjn;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lczc;


# instance fields
.field public final synthetic a:Lcjo;

.field public final synthetic b:Lczc;

.field public final synthetic c:Ljava/util/concurrent/Executor;


# direct methods
.method public synthetic constructor <init>(Lcjo;Lczc;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcjn;->a:Lcjo;

    iput-object p2, p0, Lcjn;->b:Lczc;

    iput-object p3, p0, Lcjn;->c:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ldag;
    .locals 3

    .line 1
    iget-object v0, p0, Lcjn;->a:Lcjo;

    iget-object v1, p0, Lcjn;->b:Lczc;

    iget-object v2, p0, Lcjn;->c:Ljava/util/concurrent/Executor;

    check-cast p1, Ljava/lang/Void;

    iget-object p1, v0, Lcjo;->a:Lcjp;

    iget-object p1, p1, Lcjp;->b:Lcjq;

    invoke-interface {p1, v1, v2}, Lcjq;->d(Lczc;Ljava/util/concurrent/Executor;)Ldag;

    move-result-object p1

    return-object p1
.end method
