.class Lcom/mobgame/MobGameSDK$12;
.super Ljava/lang/Object;
.source "MobGameSDK.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobgame/MobGameSDK;->showDialogRequestOverlayPermission()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobgame/MobGameSDK;


# direct methods
.method constructor <init>(Lcom/mobgame/MobGameSDK;)V
    .locals 0

    .line 1118
    iput-object p1, p0, Lcom/mobgame/MobGameSDK$12;->this$0:Lcom/mobgame/MobGameSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1121
    iget-object p1, p0, Lcom/mobgame/MobGameSDK$12;->this$0:Lcom/mobgame/MobGameSDK;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/mobgame/MobGameSDK;->isShowing:Z

    return-void
.end method
