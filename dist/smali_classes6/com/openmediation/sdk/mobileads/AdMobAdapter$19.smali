.class synthetic Lcom/openmediation/sdk/mobileads/AdMobAdapter$19;
.super Ljava/lang/Object;
.source "AdMobAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openmediation/sdk/mobileads/AdMobAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$openmediation$sdk$mobileads$AdMobAdapter$InitState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 162
    invoke-static {}, Lcom/openmediation/sdk/mobileads/AdMobAdapter$InitState;->values()[Lcom/openmediation/sdk/mobileads/AdMobAdapter$InitState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$19;->$SwitchMap$com$openmediation$sdk$mobileads$AdMobAdapter$InitState:[I

    :try_start_0
    sget-object v1, Lcom/openmediation/sdk/mobileads/AdMobAdapter$InitState;->NOT_INIT:Lcom/openmediation/sdk/mobileads/AdMobAdapter$InitState;

    invoke-virtual {v1}, Lcom/openmediation/sdk/mobileads/AdMobAdapter$InitState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$19;->$SwitchMap$com$openmediation$sdk$mobileads$AdMobAdapter$InitState:[I

    sget-object v1, Lcom/openmediation/sdk/mobileads/AdMobAdapter$InitState;->INIT_PENDING:Lcom/openmediation/sdk/mobileads/AdMobAdapter$InitState;

    invoke-virtual {v1}, Lcom/openmediation/sdk/mobileads/AdMobAdapter$InitState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$19;->$SwitchMap$com$openmediation$sdk$mobileads$AdMobAdapter$InitState:[I

    sget-object v1, Lcom/openmediation/sdk/mobileads/AdMobAdapter$InitState;->INIT_SUCCESS:Lcom/openmediation/sdk/mobileads/AdMobAdapter$InitState;

    invoke-virtual {v1}, Lcom/openmediation/sdk/mobileads/AdMobAdapter$InitState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
