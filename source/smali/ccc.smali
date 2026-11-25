.class public final synthetic Lccc;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lccd;

.field public final synthetic b:Lcch;

.field public final synthetic c:Ldgz;

.field public final synthetic d:Ldny;

.field public final synthetic e:Ljava/util/concurrent/Executor;


# direct methods
.method public synthetic constructor <init>(Lccd;Lcch;Ldgz;Ldny;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccc;->a:Lccd;

    iput-object p2, p0, Lccc;->b:Lcch;

    iput-object p3, p0, Lccc;->c:Ldgz;

    iput-object p4, p0, Lccc;->d:Ldny;

    iput-object p5, p0, Lccc;->e:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lccc;->a:Lccd;

    iget-object v1, p0, Lccc;->b:Lcch;

    iget-object v2, p0, Lccc;->c:Ldgz;

    iget-object v3, p0, Lccc;->d:Ldny;

    iget-object v4, p0, Lccc;->e:Ljava/util/concurrent/Executor;

    new-instance v5, Lccb;

    invoke-direct {v5, v0, v1, v2, v3}, Lccb;-><init>(Lccd;Lcch;Ldgz;Ldny;)V

    invoke-static {v5, v4}, Lhh;->l(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ldag;

    return-void
.end method
