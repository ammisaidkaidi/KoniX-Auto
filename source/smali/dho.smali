.class public final Ldho;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldht;


# instance fields
.field private final a:Landroid/app/Service;

.field private b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/app/Service;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldho;->a:Landroid/app/Service;

    return-void
.end method


# virtual methods
.method public final aT()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Ldho;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Ldho;->a:Landroid/app/Service;

    invoke-virtual {v0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 2
    instance-of v1, v0, Ldht;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v3

    .line 2
    const-string v3, "Sting service must be attached to an @Sting Application. Found: %s"

    invoke-static {v1, v3, v2}, Ldpx;->o(ZLjava/lang/String;[Ljava/lang/Object;)V

    const-class v1, Ldhn;

    .line 4
    invoke-static {v0, v1}, Ldpx;->s(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhn;

    .line 5
    invoke-interface {v0}, Ldhn;->l()Lath;

    move-result-object v0

    iget-object v1, p0, Ldho;->a:Landroid/app/Service;

    iput-object v1, v0, Lath;->b:Landroid/app/Service;

    iget-object v1, v0, Lath;->b:Landroid/app/Service;

    const-class v2, Landroid/app/Service;

    .line 6
    invoke-static {v1, v2}, Ldpx;->l(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v1, Lasv;

    iget-object v0, v0, Lath;->a:Latj;

    invoke-direct {v1, v0}, Lasv;-><init>(Latj;)V

    iput-object v1, p0, Ldho;->b:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Ldho;->b:Ljava/lang/Object;

    return-object v0
.end method
