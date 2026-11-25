.class final Lci;
.super Lcb;
.source "PG"


# instance fields
.field final synthetic a:Lcr;


# direct methods
.method public constructor <init>(Lcr;)V
    .locals 0

    iput-object p1, p0, Lci;->a:Lcr;

    invoke-direct {p0}, Lcb;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Lbr;
    .locals 1

    .line 1
    iget-object v0, p0, Lci;->a:Lcr;

    iget-object v0, v0, Lcr;->j:Lcc;

    iget-object v0, v0, Lcc;->c:Landroid/content/Context;

    invoke-static {v0, p1}, Lbr;->ad(Landroid/content/Context;Ljava/lang/String;)Lbr;

    move-result-object p1

    return-object p1
.end method
