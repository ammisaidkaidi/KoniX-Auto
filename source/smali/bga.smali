.class public final synthetic Lbga;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/google/android/apps/auto/aareceiver/ui/SslCertificateIssueActivity;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/auto/aareceiver/ui/SslCertificateIssueActivity;I)V
    .locals 0

    iput p2, p0, Lbga;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbga;->a:Lcom/google/android/apps/auto/aareceiver/ui/SslCertificateIssueActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 2
    iget p1, p0, Lbga;->b:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lbga;->a:Lcom/google/android/apps/auto/aareceiver/ui/SslCertificateIssueActivity;

    invoke-virtual {p1}, Lcom/google/android/apps/auto/aareceiver/ui/SslCertificateIssueActivity;->finish()V

    return-void

    :pswitch_0
    iget-object p1, p0, Lbga;->a:Lcom/google/android/apps/auto/aareceiver/ui/SslCertificateIssueActivity;

    .line 1
    invoke-virtual {p1}, Lcom/google/android/apps/auto/aareceiver/ui/SslCertificateIssueActivity;->a()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
