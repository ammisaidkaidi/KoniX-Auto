.class final Lcrm;
.super Lcss;
.source "PG"


# instance fields
.field final synthetic a:Lcrn;


# direct methods
.method public constructor <init>(Lcrn;Ljava/util/ListIterator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcrm;->a:Lcrn;

    invoke-direct {p0, p2}, Lcss;-><init>(Ljava/util/ListIterator;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcrm;->a:Lcrn;

    iget-object v0, v0, Lcrn;->b:Lcny;

    invoke-interface {v0, p1}, Lcny;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
