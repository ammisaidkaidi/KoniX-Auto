.class public final Lcan;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldhx;


# instance fields
.field private final a:Ldny;

.field private final b:Ldny;

.field private final c:Ldny;

.field private final d:Ldny;


# direct methods
.method public constructor <init>(Ldny;Ldny;Ldny;Ldny;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcan;->a:Ldny;

    iput-object p2, p0, Lcan;->b:Ldny;

    iput-object p3, p0, Lcan;->c:Ldny;

    iput-object p4, p0, Lcan;->d:Ldny;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcan;->b()Lcar;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcan;->a:Ldny;

    check-cast v0, Latg;

    invoke-virtual {v0}, Latg;->b()Lcoc;

    iget-object v0, p0, Lcan;->b:Ldny;

    check-cast v0, Lcax;

    invoke-virtual {v0}, Lcax;->b()Lcoc;

    iget-object v0, p0, Lcan;->c:Ldny;

    .line 2
    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcar;

    .line 3
    invoke-static {v0}, Ldpx;->m(Ljava/lang/Object;)V

    return-object v0
.end method
