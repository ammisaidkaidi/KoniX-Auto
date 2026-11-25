.class final Lyo;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lgc;

.field final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lgc;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lyo;->a:Lgc;

    iput-object p2, p0, Lyo;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lyo;->a:Lgc;

    iget-object v1, p0, Lyo;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lgc;->a(Ljava/lang/Object;)V

    return-void
.end method
