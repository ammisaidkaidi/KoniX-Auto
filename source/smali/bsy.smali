.class final Lbsy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbox;


# direct methods
.method public constructor <init>(Lbox;)V
    .locals 0

    iput-object p1, p0, Lbsy;->a:Lbox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lbsy;->a:Lbox;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lbox;->a(I)Z

    return-void
.end method
