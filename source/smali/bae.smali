.class public final synthetic Lbae;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lj$/util/function/ToIntFunction;


# instance fields
.field public final synthetic a:Lcqh;


# direct methods
.method public synthetic constructor <init>(Lcqh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbae;->a:Lcqh;

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lbae;->a:Lcqh;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Lcqh;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
