.class Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$5;
.super Ljava/lang/Object;
.source "RedemptionCodeActivity.java"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->refreshContentView(Lcom/tgs/aics/bean/RedemptionCodePageBean$ContentConfig;)V
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

.field final synthetic val$contentBean:Lcom/tgs/aics/bean/RedemptionCodePageBean$ContentConfig;


# direct methods
.method constructor <init>(Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;Lcom/tgs/aics/bean/RedemptionCodePageBean$ContentConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 169
    iput-object p1, p0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$5;->this$0:Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;

    iput-object p2, p0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$5;->val$contentBean:Lcom/tgs/aics/bean/RedemptionCodePageBean$ContentConfig;

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

    .line 178
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$5;->this$0:Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;

    invoke-static {p1}, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->access$500(Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;)Landroid/widget/TextView;

    move-result-object p2

    iget-object p3, p0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$5;->val$contentBean:Lcom/tgs/aics/bean/RedemptionCodePageBean$ContentConfig;

    iget-object p3, p3, Lcom/tgs/aics/bean/RedemptionCodePageBean$ContentConfig;->contentTitle:Lcom/tgs/aics/bean/RedemptionCodePageBean$TextConfigBean;

    invoke-static {p1, p2, p3}, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->access$400(Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;Landroid/widget/TextView;Lcom/tgs/aics/bean/RedemptionCodePageBean$TextConfigBean;)V

    .line 181
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$5;->val$contentBean:Lcom/tgs/aics/bean/RedemptionCodePageBean$ContentConfig;

    iget-object p1, p1, Lcom/tgs/aics/bean/RedemptionCodePageBean$ContentConfig;->inputBean:Lcom/tgs/aics/bean/RedemptionCodePageBean$InputBean;

    .line 182
    iget-object p2, p0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$5;->this$0:Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;

    invoke-static {p2}, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->access$000(Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;)Landroid/widget/EditText;

    move-result-object p3

    invoke-static {p2, p3, p1}, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->access$400(Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;Landroid/widget/TextView;Lcom/tgs/aics/bean/RedemptionCodePageBean$TextConfigBean;)V

    if-eqz p1, :cond_1

    .line 185
    iget-object p2, p1, Lcom/tgs/aics/bean/RedemptionCodePageBean$InputBean;->placeHolderText:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 186
    iget-object p2, p0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$5;->this$0:Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;

    invoke-static {p2}, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->access$000(Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;)Landroid/widget/EditText;

    move-result-object p2

    iget-object p3, p1, Lcom/tgs/aics/bean/RedemptionCodePageBean$InputBean;->placeHolderText:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 188
    :cond_0
    iget-object p2, p0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$5;->this$0:Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;

    invoke-static {p2}, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->access$000(Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p1}, Lcom/tgs/aics/bean/RedemptionCodePageBean$InputBean;->convertPhTextColor()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 189
    iget-object p2, p0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$5;->this$0:Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;

    invoke-static {p2}, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->access$000(Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p1}, Lcom/tgs/aics/bean/RedemptionCodePageBean$InputBean;->convertInputBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 193
    :cond_1
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$5;->this$0:Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;

    invoke-static {p1}, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->access$600(Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;)Landroid/widget/TextView;

    move-result-object p2

    iget-object p3, p0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$5;->val$contentBean:Lcom/tgs/aics/bean/RedemptionCodePageBean$ContentConfig;

    iget-object p3, p3, Lcom/tgs/aics/bean/RedemptionCodePageBean$ContentConfig;->instructions:Lcom/tgs/aics/bean/RedemptionCodePageBean$TextConfigBean;

    invoke-static {p1, p2, p3}, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->access$400(Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;Landroid/widget/TextView;Lcom/tgs/aics/bean/RedemptionCodePageBean$TextConfigBean;)V

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0

    .line 169
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p5}, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$5;->onResourceReady(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z

    move-result p1

    return p1
.end method
