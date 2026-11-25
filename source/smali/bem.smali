.class public final synthetic Lbem;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;

.field public final synthetic b:Lawo;

.field public final synthetic c:Lawp;

.field public final synthetic d:Lcla;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;Lawo;Lawp;Lcla;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbem;->a:Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;

    iput-object p2, p0, Lbem;->b:Lawo;

    iput-object p3, p0, Lbem;->c:Lawp;

    iput-object p4, p0, Lbem;->d:Lcla;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lbem;->a:Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;

    iget-object v1, p0, Lbem;->b:Lawo;

    iget-object v2, p0, Lbem;->c:Lawp;

    iget-object v3, p0, Lbem;->d:Lcla;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->t(Lawo;Lawp;Lcla;)V

    return-void
.end method
