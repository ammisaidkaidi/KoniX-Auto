.class final Laax;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Laay;


# direct methods
.method public constructor <init>(Laay;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Laax;->b:Laay;

    iput-object p2, p0, Laax;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Laax;->b:Laay;

    iget-object v1, p0, Laax;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Laay;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual {v0}, Laay;->c()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v1}, Laay;->b(Ljava/lang/Object;)V

    .line 2
    :goto_0
    const/4 v1, 0x3

    iput v1, v0, Laay;->f:I

    return-void
.end method
