.class Lcom/openmediation/sdk/unity/BannerSingleTon$1;
.super Ljava/lang/Object;
.source "BannerSingleTon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/unity/BannerSingleTon;->destroyBanner(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openmediation/sdk/unity/BannerSingleTon;

.field final synthetic val$placementId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/unity/BannerSingleTon;Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/openmediation/sdk/unity/BannerSingleTon$1;->this$0:Lcom/openmediation/sdk/unity/BannerSingleTon;

    iput-object p2, p0, Lcom/openmediation/sdk/unity/BannerSingleTon$1;->val$placementId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/openmediation/sdk/unity/BannerSingleTon$1;->this$0:Lcom/openmediation/sdk/unity/BannerSingleTon;

    invoke-static {v0}, Lcom/openmediation/sdk/unity/BannerSingleTon;->access$200(Lcom/openmediation/sdk/unity/BannerSingleTon;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/unity/BannerSingleTon$1;->val$placementId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    const-string v0, "Om-Unity"

    const-string v1, "Banner ad is not ready to destroy"

    .line 67
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/unity/BannerSingleTon$1;->this$0:Lcom/openmediation/sdk/unity/BannerSingleTon;

    invoke-static {v0}, Lcom/openmediation/sdk/unity/BannerSingleTon;->access$200(Lcom/openmediation/sdk/unity/BannerSingleTon;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/openmediation/sdk/unity/BannerSingleTon$1;->this$0:Lcom/openmediation/sdk/unity/BannerSingleTon;

    invoke-static {v0}, Lcom/openmediation/sdk/unity/BannerSingleTon;->access$200(Lcom/openmediation/sdk/unity/BannerSingleTon;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/unity/BannerSingleTon$1;->val$placementId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/openmediation/sdk/unity/BannerSingleTon$1;->this$0:Lcom/openmediation/sdk/unity/BannerSingleTon;

    invoke-static {v0}, Lcom/openmediation/sdk/unity/BannerSingleTon;->access$300(Lcom/openmediation/sdk/unity/BannerSingleTon;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/unity/BannerSingleTon$1;->val$placementId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openmediation/sdk/banner/BannerAd;

    if-nez v0, :cond_2

    return-void

    .line 77
    :cond_2
    iget-object v1, p0, Lcom/openmediation/sdk/unity/BannerSingleTon$1;->this$0:Lcom/openmediation/sdk/unity/BannerSingleTon;

    invoke-static {v1}, Lcom/openmediation/sdk/unity/BannerSingleTon;->access$300(Lcom/openmediation/sdk/unity/BannerSingleTon;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/openmediation/sdk/unity/BannerSingleTon$1;->val$placementId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-virtual {v0}, Lcom/openmediation/sdk/banner/BannerAd;->destroy()V

    return-void
.end method
