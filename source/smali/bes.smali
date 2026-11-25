.class public final Lbes;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbag;


# instance fields
.field final synthetic a:Ldas;

.field final synthetic b:Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;Ldas;)V
    .locals 0

    iput-object p1, p0, Lbes;->b:Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;

    iput-object p2, p0, Lbes;->a:Ldas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic f(Lawo;)V
    .locals 0

    return-void
.end method

.method public final synthetic g(Lawo;)V
    .locals 0

    return-void
.end method

.method public final h(Lbbl;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lbes;->b:Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;

    iget-object p1, p1, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->m:Lbah;

    invoke-virtual {p1, p0}, Lbah;->r(Lbag;)V

    iget-object p1, p0, Lbes;->a:Ldas;

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ldas;->k(Ljava/lang/Object;)Z

    return-void
.end method
