.class final Lamb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Lame;

.field final b:Ldag;


# direct methods
.method public constructor <init>(Lame;Ldag;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lamb;->a:Lame;

    iput-object p2, p0, Lamb;->b:Ldag;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lamb;->a:Lame;

    iget-object v0, v0, Lame;->d:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lamb;->b:Ldag;

    invoke-static {v0}, Lame;->a(Ldag;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lame;->b:Lalv;

    iget-object v2, p0, Lamb;->a:Lame;

    .line 2
    invoke-virtual {v1, v2, p0, v0}, Lalv;->d(Lame;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lamb;->a:Lame;

    .line 3
    invoke-static {v0}, Lame;->c(Lame;)V

    :cond_1
    return-void
.end method
