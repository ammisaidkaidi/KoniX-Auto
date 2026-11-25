.class synthetic Lcom/android/car/ui/toolbar/MenuItemAdapterV1$1;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field static final synthetic $SwitchMap$com$android$car$ui$toolbar$MenuItem$DisplayBehavior:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lapr;->values()[Lapr;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/car/ui/toolbar/MenuItemAdapterV1$1;->$SwitchMap$com$android$car$ui$toolbar$MenuItem$DisplayBehavior:[I

    :try_start_0
    sget-object v1, Lapr;->a:Lapr;

    invoke-virtual {v1}, Lapr;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/car/ui/toolbar/MenuItemAdapterV1$1;->$SwitchMap$com$android$car$ui$toolbar$MenuItem$DisplayBehavior:[I

    sget-object v1, Lapr;->b:Lapr;

    invoke-virtual {v1}, Lapr;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    return-void
.end method
