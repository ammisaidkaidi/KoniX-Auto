.class public final synthetic Lcjk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lczc;


# instance fields
.field public final synthetic a:Lcny;


# direct methods
.method public synthetic constructor <init>(Lcny;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcjk;->a:Lcny;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ldag;
    .locals 1

    .line 1
    iget-object v0, p0, Lcjk;->a:Lcny;

    invoke-interface {v0, p1}, Lcny;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lhh;->j(Ljava/lang/Object;)Ldag;

    move-result-object p1

    return-object p1
.end method
