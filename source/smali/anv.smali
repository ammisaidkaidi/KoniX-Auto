.class public final synthetic Lanv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Laod;


# instance fields
.field public final synthetic a:Lanw;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lanw;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lanv;->a:Lanw;

    iput-object p2, p0, Lanv;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Laoe;Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lanv;->a:Lanw;

    iget-object v0, p0, Lanv;->b:Ljava/lang/String;

    if-eqz p2, :cond_0

    iget-object p2, p1, Lanw;->a:Ljava/util/Set;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p2, p1, Lanw;->a:Ljava/util/Set;

    .line 2
    invoke-interface {p2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1
    :goto_0
    iget-boolean p2, p1, Lanw;->b:Z

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lanw;->b()V

    :cond_1
    return-void
.end method
