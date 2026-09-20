.class Lcom/tgs/aics/AiCustomServiceSDK$1;
.super Ljava/util/TimerTask;
.source "AiCustomServiceSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/AiCustomServiceSDK;->startUnreadMessageTimer(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tgs/aics/AiCustomServiceSDK;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/tgs/aics/AiCustomServiceSDK;Landroid/app/Activity;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/tgs/aics/AiCustomServiceSDK$1;->this$0:Lcom/tgs/aics/AiCustomServiceSDK;

    iput-object p2, p0, Lcom/tgs/aics/AiCustomServiceSDK$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$run$0$com-tgs-aics-AiCustomServiceSDK$1(Landroid/app/Activity;Lcom/tgs/aics/bean/BaseBean;)V
    .locals 3

    .line 112
    instance-of v0, p2, Lcom/tgs/aics/bean/UnreadMessageCountBean;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 113
    check-cast p2, Lcom/tgs/aics/bean/UnreadMessageCountBean;

    .line 114
    invoke-virtual {p2}, Lcom/tgs/aics/bean/UnreadMessageCountBean;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p2}, Lcom/tgs/aics/bean/UnreadMessageCountBean;->getUnreadMessageCount()I

    move-result p2

    .line 116
    iget-object v0, p0, Lcom/tgs/aics/AiCustomServiceSDK$1;->this$0:Lcom/tgs/aics/AiCustomServiceSDK;

    invoke-static {v0, p1, p2}, Lcom/tgs/aics/AiCustomServiceSDK;->access$000(Lcom/tgs/aics/AiCustomServiceSDK;Landroid/app/Activity;I)V

    goto :goto_0

    .line 118
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getUnreadMessageCount failed msg: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/tgs/aics/bean/UnreadMessageCountBean;->getMsg()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "aics.AiCustomServiceSDK"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object p2, p0, Lcom/tgs/aics/AiCustomServiceSDK$1;->this$0:Lcom/tgs/aics/AiCustomServiceSDK;

    invoke-static {p2, p1, v1}, Lcom/tgs/aics/AiCustomServiceSDK;->access$000(Lcom/tgs/aics/AiCustomServiceSDK;Landroid/app/Activity;I)V

    goto :goto_0

    .line 122
    :cond_1
    iget-object p2, p0, Lcom/tgs/aics/AiCustomServiceSDK$1;->this$0:Lcom/tgs/aics/AiCustomServiceSDK;

    invoke-static {p2, p1, v1}, Lcom/tgs/aics/AiCustomServiceSDK;->access$000(Lcom/tgs/aics/AiCustomServiceSDK;Landroid/app/Activity;I)V

    :goto_0
    return-void
.end method

.method public run()V
    .locals 3

    .line 111
    invoke-static {}, Lcom/tgs/aics/http/HttpApi;->getInstance()Lcom/tgs/aics/http/HttpApi;

    move-result-object v0

    iget-object v1, p0, Lcom/tgs/aics/AiCustomServiceSDK$1;->val$activity:Landroid/app/Activity;

    new-instance v2, Lcom/tgs/aics/AiCustomServiceSDK$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lcom/tgs/aics/AiCustomServiceSDK$1$$ExternalSyntheticLambda0;-><init>(Lcom/tgs/aics/AiCustomServiceSDK$1;Landroid/app/Activity;)V

    invoke-virtual {v0, v2}, Lcom/tgs/aics/http/HttpApi;->getUnreadMessageCount(Lcom/tgs/aics/listener/IBaseBeanListener;)V

    return-void
.end method
