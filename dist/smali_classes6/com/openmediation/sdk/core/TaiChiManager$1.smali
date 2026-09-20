.class Lcom/openmediation/sdk/core/TaiChiManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/core/TaiChiManager;->reportUserRevenue(Lcom/openmediation/sdk/utils/model/BaseInstance;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$instance:Lcom/openmediation/sdk/utils/model/BaseInstance;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/utils/model/BaseInstance;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/core/TaiChiManager$1;->val$instance:Lcom/openmediation/sdk/utils/model/BaseInstance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/openmediation/sdk/core/TaiChiManager;->access$000()V

    iget-object v0, p0, Lcom/openmediation/sdk/core/TaiChiManager$1;->val$instance:Lcom/openmediation/sdk/utils/model/BaseInstance;

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getRevenue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/openmediation/sdk/utils/cache/LifetimeRevenueData;->addUserRevenue(D)V

    invoke-static {}, Lcom/openmediation/sdk/utils/cache/DataCache;->getInstance()Lcom/openmediation/sdk/utils/cache/DataCache;

    move-result-object v0

    const-string v1, "Config"

    const-class v2, Lcom/openmediation/sdk/utils/model/Configurations;

    invoke-virtual {v0, v1, v2}, Lcom/openmediation/sdk/utils/cache/DataCache;->getFromMem(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openmediation/sdk/utils/model/Configurations;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/Configurations;->uarReportEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/openmediation/sdk/core/TaiChiManager$1;->val$instance:Lcom/openmediation/sdk/utils/model/BaseInstance;

    invoke-static {v1}, Lcom/openmediation/sdk/utils/FirebaseUtil;->reportUserAdRevenue(Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    invoke-static {v0}, Lcom/openmediation/sdk/core/TaiChiManager;->access$100(Lcom/openmediation/sdk/utils/model/Configurations;)I

    move-result v0

    if-gez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/openmediation/sdk/core/TaiChiManager;->access$200()I

    move-result v1

    if-lt v1, v0, :cond_2

    return-void

    :cond_2
    :goto_0
    add-int/lit8 v1, v1, 0x1

    if-gt v1, v0, :cond_3

    iget-object v2, p0, Lcom/openmediation/sdk/core/TaiChiManager$1;->val$instance:Lcom/openmediation/sdk/utils/model/BaseInstance;

    invoke-static {v2, v1}, Lcom/openmediation/sdk/core/TaiChiManager;->access$300(Lcom/openmediation/sdk/utils/model/BaseInstance;I)V

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lcom/openmediation/sdk/core/TaiChiManager;->access$400(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :catchall_0
    :cond_4
    :goto_1
    return-void
.end method
