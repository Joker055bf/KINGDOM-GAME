.class Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout$1;
.super Ljava/lang/Object;
.source "ClipViewLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->setImageSrc(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;Landroid/net/Uri;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 142
    iput-object p1, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout$1;->this$0:Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;

    iput-object p2, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout$1;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout$1;->this$0:Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;

    iget-object v1, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout$1;->val$uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->initSrcPic(Landroid/net/Uri;)V

    .line 145
    iget-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout$1;->this$0:Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;

    invoke-static {v0}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->access$000(Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
