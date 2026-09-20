.class Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$7;
.super Ljava/lang/Object;
.source "T4FProfileActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->requestAvatarPermissions(Landroid/app/Activity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$mManifestType:Ljava/util/List;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;Landroid/app/Activity;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 614
    iput-object p1, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$7;->this$0:Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;

    iput-object p2, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$7;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$7;->val$mManifestType:Ljava/util/List;

    iput p4, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$7;->val$requestCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const-string p1, "tgs.T4FProfile"

    const-string p2, "requestAvatarPermissions setPositiveButton"

    .line 617
    invoke-static {p1, p2}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 618
    invoke-static {p1}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->access$702(Z)Z

    .line 619
    iget-object p2, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$7;->this$0:Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;

    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->mIsClickRequestAvatarPositive:Z

    .line 622
    iget-object p2, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$7;->val$activity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$7;->val$mManifestType:Ljava/util/List;

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iget v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$7;->val$requestCode:I

    invoke-static {p2, p1, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method
