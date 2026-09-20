.class Lcom/tgs/aics/ui/activity/VideoPlayerActivity$1;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/ui/activity/VideoPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tgs/aics/ui/activity/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$1;->this$0:Lcom/tgs/aics/ui/activity/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$1;->this$0:Lcom/tgs/aics/ui/activity/VideoPlayerActivity;

    invoke-static {v0}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->access$000(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 51
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$1;->this$0:Lcom/tgs/aics/ui/activity/VideoPlayerActivity;

    invoke-static {v0}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->access$100(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
