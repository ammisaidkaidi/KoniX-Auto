.class synthetic Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$1;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field static final synthetic $SwitchMap$com$android$car$ui$toolbar$SearchMode:[I

.field static final synthetic $SwitchMap$com$android$car$ui$toolbar$Toolbar$NavButtonMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    invoke-static {}, Laqg;->values()[Laqg;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$1;->$SwitchMap$com$android$car$ui$toolbar$SearchMode:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Laqg;->b:Laqg;

    invoke-virtual {v2}, Laqg;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    move-exception v0

    .line 1
    :goto_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$1;->$SwitchMap$com$android$car$ui$toolbar$SearchMode:[I

    sget-object v3, Laqg;->c:Laqg;

    invoke-virtual {v3}, Laqg;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 2
    :catch_1
    move-exception v2

    :goto_1
    invoke-static {}, Laqy;->values()[Laqy;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$1;->$SwitchMap$com$android$car$ui$toolbar$Toolbar$NavButtonMode:[I

    :try_start_2
    sget-object v3, Laqy;->a:Laqy;

    invoke-virtual {v3}, Laqy;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$1;->$SwitchMap$com$android$car$ui$toolbar$Toolbar$NavButtonMode:[I

    sget-object v2, Laqy;->c:Laqy;

    invoke-virtual {v2}, Laqy;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_3
    :try_start_4
    sget-object v0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$1;->$SwitchMap$com$android$car$ui$toolbar$Toolbar$NavButtonMode:[I

    sget-object v1, Laqy;->b:Laqy;

    invoke-virtual {v1}, Laqy;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    :goto_4
    :try_start_5
    sget-object v0, Lcom/android/car/ui/toolbar/ToolbarControllerAdapterV1$1;->$SwitchMap$com$android$car$ui$toolbar$Toolbar$NavButtonMode:[I

    sget-object v1, Laqy;->d:Laqy;

    invoke-virtual {v1}, Laqy;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    return-void

    :catch_5
    move-exception v0

    return-void
.end method
