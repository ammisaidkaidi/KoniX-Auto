.class public final Last;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldhb;
.implements Ldhg;
.implements Ldhs;


# instance fields
.field private final a:Latj;

.field private b:Ldny;

.field private final c:Last;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Latj;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Last;->c:Last;

    iput-object p1, p0, Last;->a:Latj;

    sget-object p1, Ldhj;->a:Lcde;

    invoke-static {p1}, Ldhw;->c(Ldny;)Ldny;

    move-result-object p1

    iput-object p1, p0, Last;->b:Ldny;

    return-void
.end method


# virtual methods
.method public final a()Ldhh;
    .locals 1

    .line 1
    iget-object v0, p0, Last;->b:Ldny;

    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhh;

    return-object v0
.end method

.method public final b()Latc;
    .locals 3

    new-instance v0, Latc;

    iget-object v1, p0, Last;->a:Latj;

    iget-object v2, p0, Last;->c:Last;

    invoke-direct {v0, v1, v2}, Latc;-><init>(Latj;Last;)V

    return-object v0
.end method
