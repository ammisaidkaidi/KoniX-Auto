.class final Lbip;
.super Lbit;
.source "PG"


# instance fields
.field final synthetic a:Lbrk;


# direct methods
.method public constructor <init>(Lbrk;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbip;->a:Lbrk;

    invoke-direct {p0}, Lbit;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lbip;->a:Lbrk;

    invoke-virtual {v0, p1}, Lbrk;->a(Ljava/lang/Object;)V

    return-void
.end method
