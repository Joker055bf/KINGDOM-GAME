.class Lcom/openmediation/sdk/unity/OmBridge$ImpressionDataCallback;
.super Ljava/lang/Object;
.source "OmBridge.java"

# interfaces
.implements Lcom/openmediation/sdk/ImpressionDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openmediation/sdk/unity/OmBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImpressionDataCallback"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/openmediation/sdk/unity/OmBridge$1;)V
    .locals 0

    .line 406
    invoke-direct {p0}, Lcom/openmediation/sdk/unity/OmBridge$ImpressionDataCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onImpression(Lcom/openmediation/sdk/utils/error/Error;Lcom/openmediation/sdk/ImpressionData;)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p2, "onImpressionDataError"

    .line 411
    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/error/Error;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/openmediation/sdk/unity/OmBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    .line 413
    invoke-virtual {p2}, Lcom/openmediation/sdk/ImpressionData;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    const-string p2, "onImpressionData"

    invoke-static {p2, p1}, Lcom/openmediation/sdk/unity/OmBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
