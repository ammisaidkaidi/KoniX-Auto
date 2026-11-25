.class public final synthetic Lanr;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/android/car/ui/preference/CarUiTwoActionTextPreference;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/ui/preference/CarUiTwoActionTextPreference;I)V
    .locals 0

    iput p2, p0, Lanr;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lanr;->a:Lcom/android/car/ui/preference/CarUiTwoActionTextPreference;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 2
    iget v0, p0, Lanr;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lanr;->a:Lcom/android/car/ui/preference/CarUiTwoActionTextPreference;

    invoke-virtual {v0, p1}, Lcom/android/car/ui/preference/CarUiPreference;->performClickUnrestricted(Landroid/view/View;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lanr;->a:Lcom/android/car/ui/preference/CarUiTwoActionTextPreference;

    .line 1
    invoke-virtual {v0, p1}, Lcom/android/car/ui/preference/CarUiTwoActionTextPreference;->lambda$onBindViewHolder$0$com-android-car-ui-preference-CarUiTwoActionTextPreference(Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
