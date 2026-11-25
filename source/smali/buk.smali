.class public final Lbuk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldhx;


# instance fields
.field private final a:Ldny;


# direct methods
.method public constructor <init>(Ldny;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbuk;->a:Ldny;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lbuk;->b()Lbyq;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lbyq;
    .locals 2

    .line 1
    iget-object v0, p0, Lbuk;->a:Ldny;

    check-cast v0, Latg;

    invoke-virtual {v0}, Latg;->b()Lcoc;

    move-result-object v0

    sget-object v1, Lbtn;->k:Lbtn;

    .line 2
    invoke-virtual {v0, v1}, Lcoc;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldny;

    .line 3
    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbyq;

    .line 4
    invoke-static {v0}, Ldpx;->m(Ljava/lang/Object;)V

    return-object v0
.end method
