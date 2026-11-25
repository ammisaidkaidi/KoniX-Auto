.class final Lctk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lctj;

.field final synthetic b:Lctl;


# direct methods
.method public constructor <init>(Lctl;Lctj;)V
    .locals 0

    iput-object p1, p0, Lctk;->b:Lctl;

    iput-object p2, p0, Lctk;->a:Lctj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lctk;->b:Lctl;

    iget-object v0, v0, Lctl;->a:Lj$/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lctk;->a:Lctj;

    invoke-virtual {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
