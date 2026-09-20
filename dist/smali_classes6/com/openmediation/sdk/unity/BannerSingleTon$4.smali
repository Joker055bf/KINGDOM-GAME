.class Lcom/openmediation/sdk/unity/BannerSingleTon$4;
.super Ljava/lang/Object;
.source "BannerSingleTon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/unity/BannerSingleTon;->loadBannerAds(Landroid/app/Activity;Lcom/openmediation/sdk/banner/BannerAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openmediation/sdk/unity/BannerSingleTon;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$bannerAd:Lcom/openmediation/sdk/banner/BannerAd;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/unity/BannerSingleTon;Landroid/app/Activity;Lcom/openmediation/sdk/banner/BannerAd;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/openmediation/sdk/unity/BannerSingleTon$4;->this$0:Lcom/openmediation/sdk/unity/BannerSingleTon;

    iput-object p2, p0, Lcom/openmediation/sdk/unity/BannerSingleTon$4;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/openmediation/sdk/unity/BannerSingleTon$4;->val$bannerAd:Lcom/openmediation/sdk/banner/BannerAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 123
    const-class v0, Lcom/openmediation/sdk/unity/OmBridge;

    monitor-enter v0

    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/openmediation/sdk/unity/BannerSingleTon$4;->this$0:Lcom/openmediation/sdk/unity/BannerSingleTon;

    invoke-static {v1}, Lcom/openmediation/sdk/unity/BannerSingleTon;->access$400(Lcom/openmediation/sdk/unity/BannerSingleTon;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-nez v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/openmediation/sdk/unity/BannerSingleTon$4;->this$0:Lcom/openmediation/sdk/unity/BannerSingleTon;

    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/openmediation/sdk/unity/BannerSingleTon$4;->val$activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/openmediation/sdk/unity/BannerSingleTon;->access$402(Lcom/openmediation/sdk/unity/BannerSingleTon;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 126
    iget-object v1, p0, Lcom/openmediation/sdk/unity/BannerSingleTon$4;->this$0:Lcom/openmediation/sdk/unity/BannerSingleTon;

    invoke-static {v1}, Lcom/openmediation/sdk/unity/BannerSingleTon;->access$400(Lcom/openmediation/sdk/unity/BannerSingleTon;)Landroid/widget/FrameLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 127
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 128
    iget-object v2, p0, Lcom/openmediation/sdk/unity/BannerSingleTon$4;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/openmediation/sdk/unity/BannerSingleTon$4;->this$0:Lcom/openmediation/sdk/unity/BannerSingleTon;

    invoke-static {v3}, Lcom/openmediation/sdk/unity/BannerSingleTon;->access$400(Lcom/openmediation/sdk/unity/BannerSingleTon;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/openmediation/sdk/unity/BannerSingleTon$4;->val$bannerAd:Lcom/openmediation/sdk/banner/BannerAd;

    invoke-virtual {v1}, Lcom/openmediation/sdk/banner/BannerAd;->loadAd()V

    .line 131
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
