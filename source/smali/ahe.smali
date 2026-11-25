.class final Lahe;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lahc;

.field private final b:Ljava/lang/String;

.field private final c:Ldag;


# direct methods
.method public constructor <init>(Lahc;Ljava/lang/String;Ldag;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lahe;->a:Lahc;

    iput-object p2, p0, Lahe;->b:Ljava/lang/String;

    iput-object p3, p0, Lahe;->c:Ldag;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lahe;->c:Ldag;

    invoke-interface {v0}, Ldag;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const/4 v0, 0x1

    .line 1
    :goto_1
    iget-object v1, p0, Lahe;->a:Lahc;

    iget-object v2, p0, Lahe;->b:Ljava/lang/String;

    .line 2
    invoke-interface {v1, v2, v0}, Lahc;->a(Ljava/lang/String;Z)V

    return-void
.end method
