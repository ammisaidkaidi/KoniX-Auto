.class final Lay;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ldl;


# direct methods
.method public constructor <init>(Ljava/util/List;Ldl;)V
    .locals 0

    iput-object p1, p0, Lay;->a:Ljava/util/List;

    iput-object p2, p0, Lay;->b:Ldl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lay;->a:Ljava/util/List;

    iget-object v1, p0, Lay;->b:Ldl;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lay;->a:Ljava/util/List;

    iget-object v1, p0, Lay;->b:Ldl;

    .line 2
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lay;->b:Ldl;

    .line 3
    invoke-static {v0}, Ldm;->f(Ldl;)V

    :cond_0
    return-void
.end method
