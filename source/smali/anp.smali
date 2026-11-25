.class public final synthetic Lanp;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/android/car/ui/preference/CarUiTwoActionPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/ui/preference/CarUiTwoActionPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lanp;->a:Lcom/android/car/ui/preference/CarUiTwoActionPreference;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lanp;->a:Lcom/android/car/ui/preference/CarUiTwoActionPreference;

    invoke-virtual {v0, p1}, Lcom/android/car/ui/preference/CarUiPreference;->performClickUnrestricted(Landroid/view/View;)V

    return-void
.end method
