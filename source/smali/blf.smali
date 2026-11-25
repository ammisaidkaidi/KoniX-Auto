.class final Lblf;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lblj;


# direct methods
.method public constructor <init>(Lblj;)V
    .locals 0

    iput-object p1, p0, Lblf;->a:Lblj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lblf;->a:Lblj;

    invoke-virtual {v0}, Lblj;->h()V

    return-void
.end method
