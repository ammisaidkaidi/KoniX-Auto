.class final Lbiq;
.super Lbit;
.source "PG"


# instance fields
.field final synthetic a:Lbir;


# direct methods
.method public constructor <init>(Lbir;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbiq;->a:Lbir;

    invoke-direct {p0}, Lbit;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lbiq;->a:Lbir;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->n(Lbki;)V

    return-void
.end method
