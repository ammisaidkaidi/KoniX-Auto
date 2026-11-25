.class public final Lbvo;
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

    iput-object p1, p0, Lbvo;->a:Ldny;

    iput-object p2, p0, Lbvo;->b:Ldny;

    iput-object p3, p0, Lbvo;->c:Ldny;

    iput-object p4, p0, Lbvo;->d:Ldny;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lbvo;->b()Lbvn;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lbvn;
    .locals 4

    .line 1
    iget-object v0, p0, Lbvo;->a:Ldny;

    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lbvo;->b:Ldny;

    check-cast v1, Lbwg;

    invoke-virtual {v1}, Lbwg;->b()Lbwf;

    move-result-object v1

    iget-object v2, p0, Lbvo;->c:Ldny;

    invoke-interface {v2}, Ldny;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lxr;

    iget-object v2, p0, Lbvo;->d:Ldny;

    new-instance v3, Lbvn;

    invoke-direct {v3, v0, v1, v2}, Lbvn;-><init>(Ljava/lang/String;Lbwf;Ldny;)V

    return-object v3
.end method
