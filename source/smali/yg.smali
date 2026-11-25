.class public final Lyg;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lgc;


# instance fields
.field final synthetic a:Lyc;


# direct methods
.method public constructor <init>(Lyc;)V
    .locals 0

    iput-object p1, p0, Lyg;->a:Lyc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    new-instance p1, Lyj;

    const/4 v0, -0x3

    invoke-direct {p1, v0}, Lyj;-><init>(I)V

    :cond_0
    iget-object v0, p0, Lyg;->a:Lyc;

    check-cast p1, Lyj;

    .line 2
    invoke-virtual {v0, p1}, Lyc;->a(Lyj;)V

    return-void
.end method
