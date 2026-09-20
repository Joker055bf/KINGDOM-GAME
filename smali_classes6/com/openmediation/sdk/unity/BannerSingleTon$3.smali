.class Lcom/openmediation/sdk/unity/BannerSingleTon$3;
.super Ljava/lang/Object;
.source "BannerSingleTon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/unity/BannerSingleTon;->hideBanner(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openmediation/sdk/unity/BannerSingleTon;

.field final synthetic val$bannerView:Landroid/widget/FrameLayout;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/unity/BannerSingleTon;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/openmediation/sdk/unity/BannerSingleTon$3;->this$0:Lcom/openmediation/sdk/unity/BannerSingleTon;

    iput-object p2, p0, Lcom/openmediation/sdk/unity/BannerSingleTon$3;->val$bannerView:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/openmediation/sdk/unity/BannerSingleTon$3;->val$bannerView:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
