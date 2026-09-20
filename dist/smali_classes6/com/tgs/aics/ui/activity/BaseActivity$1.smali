.class Lcom/tgs/aics/ui/activity/BaseActivity$1;
.super Lcom/bumptech/glide/request/target/SimpleTarget;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/ui/activity/BaseActivity;->loadBackgroundImage(Landroid/view/ViewGroup;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/SimpleTarget<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tgs/aics/ui/activity/BaseActivity;

.field final synthetic val$viewGroup:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/tgs/aics/ui/activity/BaseActivity;Landroid/view/ViewGroup;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/tgs/aics/ui/activity/BaseActivity$1;->this$0:Lcom/tgs/aics/ui/activity/BaseActivity;

    iput-object p2, p0, Lcom/tgs/aics/ui/activity/BaseActivity$1;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 275
    iget-object p2, p0, Lcom/tgs/aics/ui/activity/BaseActivity$1;->this$0:Lcom/tgs/aics/ui/activity/BaseActivity;

    invoke-static {p2, p1}, Lcom/tgs/aics/ui/activity/BaseActivity;->access$000(Lcom/tgs/aics/ui/activity/BaseActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 277
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 278
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/BaseActivity$1;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0

    .line 272
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/tgs/aics/ui/activity/BaseActivity$1;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
