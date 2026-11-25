.class final Laic;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lakk;

.field final synthetic b:Laid;


# direct methods
.method public constructor <init>(Laid;Lakk;)V
    .locals 0

    iput-object p1, p0, Laic;->b:Laid;

    iput-object p2, p0, Laic;->a:Lakk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    invoke-static {}, Lagr;->a()Lagr;

    move-result-object v0

    sget v1, Laid;->d:I

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Laic;->a:Lakk;

    iget-object v3, v3, Lakk;->b:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Scheduling work %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    new-array v2, v4, [Ljava/lang/Throwable;

    invoke-virtual {v0, v2}, Lagr;->d([Ljava/lang/Throwable;)V

    iget-object v0, p0, Laic;->b:Laid;

    iget-object v0, v0, Laid;->a:Laie;

    new-array v1, v1, [Lakk;

    iget-object v2, p0, Laic;->a:Lakk;

    aput-object v2, v1, v4

    .line 2
    invoke-virtual {v0, v1}, Laie;->c([Lakk;)V

    return-void
.end method
