.class Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$13;
.super Ljava/lang/Object;
.source "T4FProfileActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->showSettingPrompt(Landroid/app/Activity;I)V
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

    .line 762
    iput-object p1, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$13;->this$0:Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 765
    iget-object p1, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$13;->this$0:Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->mIsClickShowSettingPositive:Z

    .line 767
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 768
    iget-object p2, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$13;->this$0:Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;

    invoke-virtual {p2, p1}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->startActivity(Landroid/content/Intent;)V

    .line 770
    iget-object p1, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$13;->this$0:Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;

    invoke-static {p1}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->access$600(Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;)V

    .line 771
    iget-object p1, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$13;->this$0:Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;

    invoke-virtual {p1}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->finish()V

    return-void
.end method
