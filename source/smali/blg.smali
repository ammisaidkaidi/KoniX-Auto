.class final Lblg;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lblj;


# direct methods
.method public constructor <init>(Lblj;I)V
    .locals 0

    iput-object p1, p0, Lblg;->b:Lblj;

    iput p2, p0, Lblg;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lblg;->b:Lblj;

    iget v1, p0, Lblg;->a:I

    invoke-virtual {v0, v1}, Lblj;->k(I)V

    return-void
.end method
