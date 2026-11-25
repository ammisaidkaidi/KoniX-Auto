.class public final synthetic Lanq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/android/car/ui/preference/CarUiTwoActionSwitchPreference;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/ui/preference/CarUiTwoActionSwitchPreference;I)V
    .locals 0

    iput p2, p0, Lanq;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lanq;->a:Lcom/android/car/ui/preference/CarUiTwoActionSwitchPreference;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 2
    iget v0, p0, Lanq;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lanq;->a:Lcom/android/car/ui/preference/CarUiTwoActionSwitchPreference;

    invoke-virtual {v0, p1}, Lcom/android/car/ui/preference/CarUiPreference;->performClickUnrestricted(Landroid/view/View;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lanq;->a:Lcom/android/car/ui/preference/CarUiTwoActionSwitchPreference;

    .line 1
    invoke-virtual {v0, p1}, Lcom/android/car/ui/preference/CarUiTwoActionSwitchPreference;->lambda$onBindViewHolder$0$com-android-car-ui-preference-CarUiTwoActionSwitchPreference(Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
