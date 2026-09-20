.class Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$2;
.super Ljava/lang/Object;
.source "ChartboostSingleTon.java"

# interfaces
.implements Lcom/chartboost/sdk/callbacks/StartCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;->initOnMainThread(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$2;->this$0:Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartCompleted(Lcom/chartboost/sdk/events/StartError;)V
    .locals 5

    if-nez p1, :cond_1

    .line 101
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$2;->this$0:Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;

    sget-object v0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InitState;->INIT_SUCCESS:Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InitState;

    invoke-static {p1, v0}, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;->access$302(Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InitState;)Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InitState;

    .line 102
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object p1

    const-string v0, "Chartboost SDK initialized successfully"

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/utils/AdLog;->LogD(Ljava/lang/String;)V

    .line 103
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$2;->this$0:Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;

    invoke-static {p1}, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;->access$400(Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InitListener;

    if-eqz v0, :cond_0

    .line 105
    invoke-interface {v0}, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InitListener;->initSuccess()V

    goto :goto_0

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$2;->this$0:Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;

    sget-object v1, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InitState;->NOT_INIT:Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InitState;

    invoke-static {v0, v1}, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;->access$302(Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InitState;)Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InitState;

    .line 110
    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog;->getSingleton()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Chartboost SDK initialized failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/chartboost/sdk/events/StartError;->getCode()Lcom/chartboost/sdk/events/StartError$Code;

    move-result-object v3

    invoke-virtual {v3}, Lcom/chartboost/sdk/events/StartError$Code;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/utils/AdLog;->LogD(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$2;->this$0:Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;

    invoke-static {v0}, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;->access$400(Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InitListener;

    if-eqz v1, :cond_2

    .line 113
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/chartboost/sdk/events/StartError;->getCode()Lcom/chartboost/sdk/events/StartError$Code;

    move-result-object v4

    invoke-virtual {v4}, Lcom/chartboost/sdk/events/StartError$Code;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InitListener;->initFailed(Ljava/lang/String;)V

    goto :goto_1

    .line 117
    :cond_3
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$2;->this$0:Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;

    invoke-static {p1}, Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;->access$400(Lcom/openmediation/sdk/mobileads/ChartboostSingleTon;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method
