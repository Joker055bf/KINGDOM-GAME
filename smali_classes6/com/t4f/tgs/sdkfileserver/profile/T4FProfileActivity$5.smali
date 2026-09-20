.class Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$5;
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

    .line 258
    iput-object p1, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$5;->this$0:Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 263
    iget-object p1, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$5;->this$0:Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;

    invoke-virtual {p1}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v0, 0x67

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    const/16 v2, 0x21

    if-ge p1, v2, :cond_1

    .line 264
    iget-object p1, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$5;->this$0:Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;

    invoke-static {p1, v1}, Lcom/t4f/tgs/sdkfileserver/profile/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 265
    iget-object p1, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$5;->this$0:Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;

    invoke-virtual {p1, p1, v0}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->requestAvatarPermissions(Landroid/app/Activity;I)V

    goto :goto_0

    .line 268
    :cond_0
    iget-object p1, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$5;->this$0:Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;

    invoke-static {p1}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->access$500(Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;)V

    goto :goto_0

    .line 271
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v2, :cond_2

    .line 273
    iget-object p1, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$5;->this$0:Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;

    invoke-static {p1}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->access$500(Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;)V

    goto :goto_0

    .line 276
    :cond_2
    iget-object p1, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$5;->this$0:Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;

    invoke-static {p1, v1}, Lcom/t4f/tgs/sdkfileserver/profile/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 277
    iget-object p1, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$5;->this$0:Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;

    invoke-virtual {p1, p1, v0}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->requestAvatarPermissions(Landroid/app/Activity;I)V

    goto :goto_0

    .line 280
    :cond_3
    iget-object p1, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$5;->this$0:Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;

    invoke-static {p1}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->access$500(Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;)V

    .line 284
    :goto_0
    iget-object p1, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$5;->this$0:Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;

    invoke-static {p1}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->access$400(Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
