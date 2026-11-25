.class public final Lcme;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcmi;


# instance fields
.field public a:Ljava/net/ServerSocket;

.field private final b:Lbdu;

.field private c:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lbdu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcme;->b:Lbdu;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcme;->a:Ljava/net/ServerSocket;

    return-void
.end method

.method public final b(Landroid/os/Parcelable;Lbbj;)Lcmh;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p1, p0, Lcme;->a:Ljava/net/ServerSocket;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcme;->b:Lbdu;

    invoke-virtual {p1}, Lbdu;->a()Ljava/net/ServerSocket;

    move-result-object p1

    iput-object p1, p0, Lcme;->a:Ljava/net/ServerSocket;

    const/16 v0, 0x3e8

    .line 2
    invoke-virtual {p1, v0}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    :cond_1
    iget-object v0, p0, Lcme;->c:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    new-instance p1, Lcmc;

    .line 3
    invoke-direct {p1, p0, p2}, Lcmc;-><init>(Lcme;Lbbj;)V

    iput-object p1, p0, Lcme;->c:Ljava/lang/Thread;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    new-instance p2, Lcmd;

    invoke-direct {p2, p1}, Lcmd;-><init>(Ljava/lang/Thread;)V

    return-object p2
.end method
