.class Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$4;
.super Ljava/lang/Object;
.source "T4FProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$4;->this$0:Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 248
    iget-object p1, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$4;->this$0:Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;

    const-string v0, "android.permission.CAMERA"

    invoke-static {p1, v0}, Lcom/t4f/tgs/sdkfileserver/profile/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 249
    iget-object p1, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$4;->this$0:Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;

    const/16 v0, 0x68

    invoke-virtual {p1, p1, v0}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->requestAvatarPermissions(Landroid/app/Activity;I)V

    goto :goto_0

    .line 252
    :cond_0
    iget-object p1, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$4;->this$0:Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;

    invoke-static {p1}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->access$300(Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;)V

    .line 254
    :goto_0
    iget-object p1, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$4;->this$0:Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;

    invoke-static {p1}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->access$400(Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
