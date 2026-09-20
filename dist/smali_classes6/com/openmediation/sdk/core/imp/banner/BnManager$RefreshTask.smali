.class Lcom/openmediation/sdk/core/imp/banner/BnManager$RefreshTask;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openmediation/sdk/core/imp/banner/BnManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshTask"
.end annotation


# instance fields
.field private mInterval:I

.field final synthetic this$0:Lcom/openmediation/sdk/core/imp/banner/BnManager;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/core/imp/banner/BnManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/core/imp/banner/BnManager$RefreshTask;->this$0:Lcom/openmediation/sdk/core/imp/banner/BnManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/openmediation/sdk/core/imp/banner/BnManager$RefreshTask;->mInterval:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "BnManager, RefreshTask stop: !mLytBanner.isShown(): "

    :try_start_0
    iget-object v1, p0, Lcom/openmediation/sdk/core/imp/banner/BnManager$RefreshTask;->this$0:Lcom/openmediation/sdk/core/imp/banner/BnManager;

    invoke-static {v1}, Lcom/openmediation/sdk/core/imp/banner/BnManager;->access$000(Lcom/openmediation/sdk/core/imp/banner/BnManager;)Lcom/openmediation/sdk/utils/model/Placement;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/openmediation/sdk/core/imp/banner/BnManager$RefreshTask;->this$0:Lcom/openmediation/sdk/core/imp/banner/BnManager;

    invoke-static {v1}, Lcom/openmediation/sdk/core/imp/banner/BnManager;->access$100(Lcom/openmediation/sdk/core/imp/banner/BnManager;)Lcom/openmediation/sdk/utils/model/Placement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/openmediation/sdk/utils/model/Placement;->getRlw()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/openmediation/sdk/core/imp/banner/BnManager$RefreshTask;->this$0:Lcom/openmediation/sdk/core/imp/banner/BnManager;

    invoke-static {v1}, Lcom/openmediation/sdk/core/imp/banner/BnManager;->access$200(Lcom/openmediation/sdk/core/imp/banner/BnManager;)Lcom/openmediation/sdk/utils/model/Placement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/openmediation/sdk/utils/model/Placement;->getRlw()I

    move-result v1

    iput v1, p0, Lcom/openmediation/sdk/core/imp/banner/BnManager$RefreshTask;->mInterval:I

    :cond_0
    iget v1, p0, Lcom/openmediation/sdk/core/imp/banner/BnManager$RefreshTask;->mInterval:I

    if-gtz v1, :cond_1

    const-string v0, "BnManager, RefreshTask stop: Interval is 0"

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogE(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/openmediation/sdk/core/imp/banner/BnManager$RefreshTask;->this$0:Lcom/openmediation/sdk/core/imp/banner/BnManager;

    invoke-static {v1}, Lcom/openmediation/sdk/core/imp/banner/BnManager;->access$400(Lcom/openmediation/sdk/core/imp/banner/BnManager;)Lcom/openmediation/sdk/utils/HandlerUtil$HandlerHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/openmediation/sdk/core/imp/banner/BnManager$RefreshTask;->this$0:Lcom/openmediation/sdk/core/imp/banner/BnManager;

    invoke-static {v2}, Lcom/openmediation/sdk/core/imp/banner/BnManager;->access$300(Lcom/openmediation/sdk/core/imp/banner/BnManager;)Lcom/openmediation/sdk/core/imp/banner/BnManager$RefreshTask;

    move-result-object v2

    iget v3, p0, Lcom/openmediation/sdk/core/imp/banner/BnManager$RefreshTask;->mInterval:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v1, p0, Lcom/openmediation/sdk/core/imp/banner/BnManager$RefreshTask;->this$0:Lcom/openmediation/sdk/core/imp/banner/BnManager;

    invoke-static {v1}, Lcom/openmediation/sdk/core/imp/banner/BnManager;->access$500(Lcom/openmediation/sdk/core/imp/banner/BnManager;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/openmediation/sdk/core/imp/banner/BnManager$RefreshTask;->this$0:Lcom/openmediation/sdk/core/imp/banner/BnManager;

    invoke-static {v1}, Lcom/openmediation/sdk/core/imp/banner/BnManager;->access$500(Lcom/openmediation/sdk/core/imp/banner/BnManager;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/banner/BnManager$RefreshTask;->this$0:Lcom/openmediation/sdk/core/imp/banner/BnManager;

    invoke-static {v0}, Lcom/openmediation/sdk/core/imp/banner/BnManager;->access$600(Lcom/openmediation/sdk/core/imp/banner/BnManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogE(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {}, Lcom/openmediation/sdk/core/OmManager;->getInstance()Lcom/openmediation/sdk/core/OmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openmediation/sdk/core/OmManager;->isInForeground()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/banner/BnManager$RefreshTask;->this$0:Lcom/openmediation/sdk/core/imp/banner/BnManager;

    invoke-static {v0}, Lcom/openmediation/sdk/core/imp/banner/BnManager;->access$700(Lcom/openmediation/sdk/core/imp/banner/BnManager;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/openmediation/sdk/core/imp/banner/BnManager$RefreshTask;->this$0:Lcom/openmediation/sdk/core/imp/banner/BnManager;

    invoke-static {v2}, Lcom/openmediation/sdk/core/imp/banner/BnManager;->access$800(Lcom/openmediation/sdk/core/imp/banner/BnManager;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    return-void

    :cond_4
    invoke-static {}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->getInstance()Lcom/openmediation/sdk/utils/event/EventUploadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/core/imp/banner/BnManager$RefreshTask;->this$0:Lcom/openmediation/sdk/core/imp/banner/BnManager;

    invoke-static {v1}, Lcom/openmediation/sdk/core/imp/banner/BnManager;->access$900(Lcom/openmediation/sdk/core/imp/banner/BnManager;)Lcom/openmediation/sdk/utils/model/Placement;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/openmediation/sdk/core/imp/banner/BnManager$RefreshTask;->this$0:Lcom/openmediation/sdk/core/imp/banner/BnManager;

    invoke-static {v1}, Lcom/openmediation/sdk/core/imp/banner/BnManager;->access$1000(Lcom/openmediation/sdk/core/imp/banner/BnManager;)Lcom/openmediation/sdk/utils/model/Placement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/openmediation/sdk/utils/model/Placement;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_5
    const-string v1, ""

    :goto_0
    invoke-static {v1}, Lcom/openmediation/sdk/utils/PlacementUtils;->placementEventParams(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/16 v2, 0x6e

    invoke-virtual {v0, v2, v1}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->uploadEvent(ILorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/banner/BnManager$RefreshTask;->this$0:Lcom/openmediation/sdk/core/imp/banner/BnManager;

    sget-object v1, Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;->INTERVAL:Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/core/imp/banner/BnManager;->loadAds(Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BnManager, RefreshTask run error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogE(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
