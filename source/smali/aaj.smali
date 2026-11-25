.class public final Laaj;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private final a:Laag;

.field private final b:Laed;


# direct methods
.method public constructor <init>(Laed;Laag;[B)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laaj;->b:Laed;

    iput-object p2, p0, Laaj;->a:Laag;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Laaf;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2
    const-string v1, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Laaj;->b:Laed;

    iget-object v1, v1, Laed;->a:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laaf;

    .line 4
    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Laaj;->a:Laag;

    .line 11
    instance-of v0, p1, Laai;

    if-eqz v0, :cond_0

    check-cast p1, Laai;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    if-eqz v1, :cond_2

    goto :goto_2

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    .line 12
    const-string v0, "null cannot be cast to non-null type T of androidx.lifecycle.ViewModelProvider.get"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_3
    iget-object p1, p0, Laaj;->a:Laag;

    .line 5
    instance-of v1, p1, Laah;

    if-eqz v1, :cond_4

    .line 6
    check-cast p1, Laah;

    invoke-virtual {p1}, Laah;->b()Laaf;

    move-result-object p1

    move-object v1, p1

    goto :goto_1

    .line 7
    :cond_4
    invoke-interface {p1}, Laag;->a()Laaf;

    move-result-object p1

    move-object v1, p1

    .line 6
    :goto_1
    iget-object p1, p0, Laaj;->b:Laed;

    iget-object p1, p1, Laed;->a:Ljava/util/HashMap;

    .line 8
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laaf;

    if-eqz p1, :cond_5

    .line 9
    invoke-virtual {p1}, Laaf;->c()V

    .line 10
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    :goto_2
    return-object v1

    .line 1
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 2
    const-string v0, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
