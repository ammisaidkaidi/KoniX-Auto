.class public final synthetic Lazp;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lj$/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Lckz;


# direct methods
.method public synthetic constructor <init>(IILckz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lazp;->a:I

    iput p2, p0, Lazp;->b:I

    iput-object p3, p0, Lazp;->c:Lckz;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, Lazp;->a:I

    iget v1, p0, Lazp;->b:I

    iget-object v2, p0, Lazp;->c:Lckz;

    check-cast p1, Lbaw;

    iget v3, v2, Lckz;->d:I

    iget v2, v2, Lckz;->e:I

    invoke-interface {p1, v0, v1, v3, v2}, Lbaw;->b(IIII)V

    return-void
.end method

.method public final synthetic andThen(Lj$/util/function/Consumer;)Lj$/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Lj$/util/function/Consumer;Lj$/util/function/Consumer;)Lj$/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
