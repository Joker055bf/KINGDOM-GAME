.class Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$4;
.super Ljava/lang/Object;
.source "RedemptionCodeActivity.java"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->refreshTitleView(Lcom/tgs/aics/bean/RedemptionCodePageBean$TitleConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/RequestListener<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;

.field final synthetic val$titleBean:Lcom/tgs/aics/bean/RedemptionCodePageBean$TitleConfig;


# direct methods
.method constructor <init>(Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;Lcom/tgs/aics/bean/RedemptionCodePageBean$TitleConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 137
    iput-object p1, p0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$4;->this$0:Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;

    iput-object p2, p0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$4;->val$titleBean:Lcom/tgs/aics/bean/RedemptionCodePageBean$TitleConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/GlideException;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target<",
            "Landroid/graphics/drawable/Drawable;",
            ">;Z)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public onResourceReady(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)Z"
        }
    .end annotation

    .line 146
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$4;->this$0:Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;

    invoke-static {p1}, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->access$300(Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;)Landroid/widget/TextView;

    move-result-object p2

    iget-object p3, p0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$4;->val$titleBean:Lcom/tgs/aics/bean/RedemptionCodePageBean$TitleConfig;

    invoke-static {p1, p2, p3}, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->access$400(Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;Landroid/widget/TextView;Lcom/tgs/aics/bean/RedemptionCodePageBean$TextConfigBean;)V

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0

    .line 137
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p5}, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$4;->onResourceReady(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z

    move-result p1

    return p1
.end method
