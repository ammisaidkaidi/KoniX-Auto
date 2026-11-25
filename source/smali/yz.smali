.class final Lyz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lzf;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lzf;)V
    .locals 0

    iput-object p1, p0, Lyz;->a:Ljava/lang/String;

    iput-object p2, p0, Lyz;->b:Lzf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lyz;->a:Ljava/lang/String;

    const-string v1, "Policy violation with PENALTY_DEATH in "

    invoke-static {v1, v0}, Ldpx;->d(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lyz;->b:Lzf;

    const-string v2, "FragmentStrictMode"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lyz;->b:Lzf;

    .line 2
    throw v0
.end method
