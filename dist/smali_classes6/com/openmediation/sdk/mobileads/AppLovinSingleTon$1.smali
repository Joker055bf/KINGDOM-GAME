.class Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$1;
.super Ljava/lang/Object;
.source "AppLovinSingleTon.java"

# interfaces
.implements Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/mobileads/AppLovinSingleTon;->init(Landroid/content/Context;Ljava/lang/String;Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openmediation/sdk/mobileads/AppLovinSingleTon;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/mobileads/AppLovinSingleTon;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$1;->this$0:Lcom/openmediation/sdk/mobileads/AppLovinSingleTon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSdkInitialized(Lcom/applovin/sdk/AppLovinSdkConfiguration;)V
    .locals 1

    .line 64
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object p1

    const-string v0, "AppLovin SDK Init Success"

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/utils/AdLog;->LogD(Ljava/lang/String;)V

    .line 65
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$1;->this$0:Lcom/openmediation/sdk/mobileads/AppLovinSingleTon;

    sget-object v0, Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitState;->INIT_SUCCESS:Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitState;

    invoke-static {p1, v0}, Lcom/openmediation/sdk/mobileads/AppLovinSingleTon;->access$202(Lcom/openmediation/sdk/mobileads/AppLovinSingleTon;Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitState;)Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitState;

    .line 66
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$1;->this$0:Lcom/openmediation/sdk/mobileads/AppLovinSingleTon;

    invoke-static {p1}, Lcom/openmediation/sdk/mobileads/AppLovinSingleTon;->access$300(Lcom/openmediation/sdk/mobileads/AppLovinSingleTon;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitCallback;

    if-eqz v0, :cond_0

    .line 68
    invoke-interface {v0}, Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitCallback;->onSuccess()V

    goto :goto_0

    .line 71
    :cond_1
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$1;->this$0:Lcom/openmediation/sdk/mobileads/AppLovinSingleTon;

    invoke-static {p1}, Lcom/openmediation/sdk/mobileads/AppLovinSingleTon;->access$300(Lcom/openmediation/sdk/mobileads/AppLovinSingleTon;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method
