.class Lcom/game/sdk/ui/comon/PermissionFragment$2;
.super Ljava/lang/Object;
.source "PermissionFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/ui/comon/PermissionFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/comon/PermissionFragment;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/comon/PermissionFragment;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/game/sdk/ui/comon/PermissionFragment$2;->this$0:Lcom/game/sdk/ui/comon/PermissionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 125
    iget-object p1, p0, Lcom/game/sdk/ui/comon/PermissionFragment$2;->this$0:Lcom/game/sdk/ui/comon/PermissionFragment;

    invoke-static {p1}, Lcom/game/sdk/ui/comon/PermissionFragment;->access$000(Lcom/game/sdk/ui/comon/PermissionFragment;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
