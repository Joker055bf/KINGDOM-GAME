.class Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$3;
.super Ljava/lang/Object;
.source "T4FProfileActivity.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->fetchProfileImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;

.field final synthetic val$params:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method constructor <init>(Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;Landroid/view/WindowManager$LayoutParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 236
    iput-object p1, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$3;->this$0:Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;

    iput-object p2, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$3;->val$params:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$3;->val$params:Landroid/view/WindowManager$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 240
    iget-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$3;->this$0:Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;

    invoke-virtual {v0}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$3;->val$params:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
