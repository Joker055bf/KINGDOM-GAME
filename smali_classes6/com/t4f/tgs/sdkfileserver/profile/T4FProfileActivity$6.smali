.class Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$6;
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

    .line 288
    iput-object p1, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$6;->this$0:Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 291
    iget-object p1, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$6;->this$0:Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;

    invoke-static {p1}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->access$400(Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 292
    iget-object p1, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$6;->this$0:Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;

    invoke-static {p1}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->access$600(Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;)V

    return-void
.end method
