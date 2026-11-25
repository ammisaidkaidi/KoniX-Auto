.class final Ltv;
.super Ltt;
.source "PG"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lty;


# direct methods
.method public constructor <init>(Lty;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltv;->b:Lty;

    iput-object p2, p0, Ltv;->a:Ljava/lang/String;

    invoke-direct {p0}, Ltt;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Ltv;->b:Lty;

    iget-object v1, p0, Ltv;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lty;->d(Ljava/lang/String;)V

    return-void
.end method
