.class public final Lbbk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lczv;


# instance fields
.field final synthetic a:Lbbl;


# direct methods
.method public constructor <init>(Lbbl;)V
    .locals 0

    iput-object p1, p0, Lbbk;->a:Lbbl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lbbk;->a:Lbbl;

    iget-object p1, p1, Lbbl;->w:Lbde;

    sget-object v0, Lbdf;->e:Lbdf;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lbde;->b(Lbdf;I)V

    iget-object p1, p0, Lbbk;->a:Lbbl;

    iget-object p1, p1, Lbbl;->w:Lbde;

    sget-object v0, Lbdf;->f:Lbdf;

    .line 2
    invoke-virtual {p1, v0, v1}, Lbde;->b(Lbdf;I)V

    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Void;

    iget-object p1, p0, Lbbk;->a:Lbbl;

    iget-object p1, p1, Lbbl;->w:Lbde;

    .line 2
    sget-object v0, Lbdf;->e:Lbdf;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lbde;->b(Lbdf;I)V

    iget-object p1, p0, Lbbk;->a:Lbbl;

    iget-object p1, p1, Lbbl;->w:Lbde;

    sget-object v0, Lbdf;->f:Lbdf;

    .line 3
    invoke-virtual {p1, v0, v1}, Lbde;->b(Lbdf;I)V

    return-void
.end method
