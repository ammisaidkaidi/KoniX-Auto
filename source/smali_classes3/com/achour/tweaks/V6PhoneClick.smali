.class public final Lcom/achour/tweaks/V6PhoneClick;
.super Ljava/lang/Object;
.source "V6PhoneClick.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final addr:Ljava/lang/String;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/achour/tweaks/V6PhoneClick;->addr:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/achour/tweaks/V6PhoneClick;->name:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 18
    :try_start_0
    iget-object p1, p0, Lcom/achour/tweaks/V6PhoneClick;->addr:Ljava/lang/String;

    iget-object v0, p0, Lcom/achour/tweaks/V6PhoneClick;->name:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/achour/tweaks/V6;->onPhone(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p1

    .line 21
    :goto_0
    return-void
.end method
